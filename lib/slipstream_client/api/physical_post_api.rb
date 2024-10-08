=begin
#Practice -> Cloud API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0
Contact: Nexus@HenryScheinOne.co.nz
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'cgi'

module SlipstreamClient
  class PhysicalPostApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Send letters
    # Queues one or more letters for sending on behalf of the practice
    # @param site_slug [String] The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
    # @param send_letter_request [Array<SendLetterRequest>] The details of the letter to send
    # @param [Hash] opts the optional parameters
    # @return [CreateLetters202Response]
    def create_letters(site_slug, send_letter_request, opts = {})
      data, _status_code, _headers = create_letters_with_http_info(site_slug, send_letter_request, opts)
      data
    end

    # Send letters
    # Queues one or more letters for sending on behalf of the practice
    # @param site_slug [String] The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
    # @param send_letter_request [Array<SendLetterRequest>] The details of the letter to send
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateLetters202Response, Integer, Hash)>] CreateLetters202Response data, response status code and response headers
    def create_letters_with_http_info(site_slug, send_letter_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PhysicalPostApi.create_letters ...'
      end
      # verify the required parameter 'site_slug' is set
      if @api_client.config.client_side_validation && site_slug.nil?
        fail ArgumentError, "Missing the required parameter 'site_slug' when calling PhysicalPostApi.create_letters"
      end
      pattern = Regexp.new(/^[osl][a-zA-Z0-9]{3,}$/)
      if @api_client.config.client_side_validation && site_slug !~ pattern
        fail ArgumentError, "invalid value for 'site_slug' when calling PhysicalPostApi.create_letters, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'send_letter_request' is set
      if @api_client.config.client_side_validation && send_letter_request.nil?
        fail ArgumentError, "Missing the required parameter 'send_letter_request' when calling PhysicalPostApi.create_letters"
      end
      # resource path
      local_var_path = '/sites/{SiteSlug}/physicalpost/letter'.sub('{' + 'SiteSlug' + '}', CGI.escape(site_slug.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(send_letter_request)

      # return_type
      return_type = opts[:debug_return_type] || 'CreateLetters202Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'azure_auth', 'azure_auth']

      new_options = opts.merge(
        :operation => :"PhysicalPostApi.create_letters",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PhysicalPostApi#create_letters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the letter details of a specific letter
    # Get the details of a letter
    # @param site_slug [String] The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
    # @param letter_id [String] The unique identifier (GUID) of the letter in slipstream
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_history If true, the response will include the history of the letter
    # @return [LetterDetails]
    def get_letter(site_slug, letter_id, opts = {})
      data, _status_code, _headers = get_letter_with_http_info(site_slug, letter_id, opts)
      data
    end

    # Get the letter details of a specific letter
    # Get the details of a letter
    # @param site_slug [String] The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
    # @param letter_id [String] The unique identifier (GUID) of the letter in slipstream
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_history If true, the response will include the history of the letter
    # @return [Array<(LetterDetails, Integer, Hash)>] LetterDetails data, response status code and response headers
    def get_letter_with_http_info(site_slug, letter_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PhysicalPostApi.get_letter ...'
      end
      # verify the required parameter 'site_slug' is set
      if @api_client.config.client_side_validation && site_slug.nil?
        fail ArgumentError, "Missing the required parameter 'site_slug' when calling PhysicalPostApi.get_letter"
      end
      pattern = Regexp.new(/^[osl][a-zA-Z0-9]{3,}$/)
      if @api_client.config.client_side_validation && site_slug !~ pattern
        fail ArgumentError, "invalid value for 'site_slug' when calling PhysicalPostApi.get_letter, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'letter_id' is set
      if @api_client.config.client_side_validation && letter_id.nil?
        fail ArgumentError, "Missing the required parameter 'letter_id' when calling PhysicalPostApi.get_letter"
      end
      # resource path
      local_var_path = '/sites/{SiteSlug}/physicalpost/letter/{LetterId}'.sub('{' + 'SiteSlug' + '}', CGI.escape(site_slug.to_s)).sub('{' + 'LetterId' + '}', CGI.escape(letter_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includeHistory'] = opts[:'include_history'] if !opts[:'include_history'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LetterDetails'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'azure_auth', 'azure_auth']

      new_options = opts.merge(
        :operation => :"PhysicalPostApi.get_letter",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PhysicalPostApi#get_letter\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a paginated list of all letter details owned by a site
    # Gets a list of letters
    # @param site_slug [String] The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size The page number to retrieve
    # @option opts [String] :next_page_token A token retrieved from a previous request, used to retrieve the next page of results
    # @option opts [LetterStatus] :status The status of the letters to retrieve - if not provided, all statuses will be returned
    # @option opts [Date] :date_from The date to retrieve letters from - if not provided, all letters will be returned
    # @option opts [Boolean] :include_history If true, the response will include the history of the letter
    # @return [LetterDetailsListResponse]
    def list_letters(site_slug, opts = {})
      data, _status_code, _headers = list_letters_with_http_info(site_slug, opts)
      data
    end

    # Get a paginated list of all letter details owned by a site
    # Gets a list of letters
    # @param site_slug [String] The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size The page number to retrieve
    # @option opts [String] :next_page_token A token retrieved from a previous request, used to retrieve the next page of results
    # @option opts [LetterStatus] :status The status of the letters to retrieve - if not provided, all statuses will be returned
    # @option opts [Date] :date_from The date to retrieve letters from - if not provided, all letters will be returned
    # @option opts [Boolean] :include_history If true, the response will include the history of the letter
    # @return [Array<(LetterDetailsListResponse, Integer, Hash)>] LetterDetailsListResponse data, response status code and response headers
    def list_letters_with_http_info(site_slug, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PhysicalPostApi.list_letters ...'
      end
      # verify the required parameter 'site_slug' is set
      if @api_client.config.client_side_validation && site_slug.nil?
        fail ArgumentError, "Missing the required parameter 'site_slug' when calling PhysicalPostApi.list_letters"
      end
      pattern = Regexp.new(/^[osl][a-zA-Z0-9]{3,}$/)
      if @api_client.config.client_side_validation && site_slug !~ pattern
        fail ArgumentError, "invalid value for 'site_slug' when calling PhysicalPostApi.list_letters, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 250
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PhysicalPostApi.list_letters, must be smaller than or equal to 250.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PhysicalPostApi.list_letters, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/sites/{SiteSlug}/physicalpost/letter'.sub('{' + 'SiteSlug' + '}', CGI.escape(site_slug.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'nextPageToken'] = opts[:'next_page_token'] if !opts[:'next_page_token'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'dateFrom'] = opts[:'date_from'] if !opts[:'date_from'].nil?
      query_params[:'includeHistory'] = opts[:'include_history'] if !opts[:'include_history'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'LetterDetailsListResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'azure_auth', 'azure_auth']

      new_options = opts.merge(
        :operation => :"PhysicalPostApi.list_letters",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PhysicalPostApi#list_letters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
