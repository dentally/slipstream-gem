=begin
#Practice -> Cloud API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0
Contact: Nexus@HenryScheinOne.co.nz
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'cgi'

module SlipstreamClient
  class LookupApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Lookup Slug
    # Fetches the pms specific id of a given organisation or practice in slipstream
    # @param slug [String] The slug of a practice site or organisation
    # @param [Hash] opts the optional parameters
    # @return [PracticeEntity]
    def lookup_slug(slug, opts = {})
      data, _status_code, _headers = lookup_slug_with_http_info(slug, opts)
      data
    end

    # Lookup Slug
    # Fetches the pms specific id of a given organisation or practice in slipstream
    # @param slug [String] The slug of a practice site or organisation
    # @param [Hash] opts the optional parameters
    # @return [Array<(PracticeEntity, Integer, Hash)>] PracticeEntity data, response status code and response headers
    def lookup_slug_with_http_info(slug, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LookupApi.lookup_slug ...'
      end
      # verify the required parameter 'slug' is set
      if @api_client.config.client_side_validation && slug.nil?
        fail ArgumentError, "Missing the required parameter 'slug' when calling LookupApi.lookup_slug"
      end
      pattern = Regexp.new(/^[osl][a-zA-Z0-9]{3,}$/)
      if @api_client.config.client_side_validation && slug !~ pattern
        fail ArgumentError, "invalid value for 'slug' when calling LookupApi.lookup_slug, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/lookup/slug/{Slug}'.sub('{' + 'Slug' + '}', CGI.escape(slug.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PracticeEntity'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['azure_auth']

      new_options = opts.merge(
        :operation => :"LookupApi.lookup_slug",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LookupApi#lookup_slug\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
