=begin
#Practice -> Cloud API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0
Contact: Nexus@HenryScheinOne.co.nz
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'cgi'

module SlipstreamconfigYamlClient
  class AuthenticationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get an access token
    # This endpoint is used to obtain an access token by using client credentials or user credentials.
    # @param grant_type [String] Grant type value - currently only client_credentials is explicitly supported.
    # @param client_id [String] The client&#39;s identifier.
    # @param client_secret [String] The client&#39;s secret.
    # @param [Hash] opts the optional parameters
    # @return [AccessToken]
    def get_access_token(grant_type, client_id, client_secret, opts = {})
      data, _status_code, _headers = get_access_token_with_http_info(grant_type, client_id, client_secret, opts)
      data
    end

    # Get an access token
    # This endpoint is used to obtain an access token by using client credentials or user credentials.
    # @param grant_type [String] Grant type value - currently only client_credentials is explicitly supported.
    # @param client_id [String] The client&#39;s identifier.
    # @param client_secret [String] The client&#39;s secret.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccessToken, Integer, Hash)>] AccessToken data, response status code and response headers
    def get_access_token_with_http_info(grant_type, client_id, client_secret, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.get_access_token ...'
      end
      # verify the required parameter 'grant_type' is set
      if @api_client.config.client_side_validation && grant_type.nil?
        fail ArgumentError, "Missing the required parameter 'grant_type' when calling AuthenticationApi.get_access_token"
      end
      # verify enum value
      allowable_values = ["client_credentials"]
      if @api_client.config.client_side_validation && !allowable_values.include?(grant_type)
        fail ArgumentError, "invalid value for \"grant_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling AuthenticationApi.get_access_token"
      end
      # verify the required parameter 'client_secret' is set
      if @api_client.config.client_side_validation && client_secret.nil?
        fail ArgumentError, "Missing the required parameter 'client_secret' when calling AuthenticationApi.get_access_token"
      end
      # resource path
      local_var_path = '/oauth2/token'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['grant_type'] = grant_type
      form_params['client_id'] = client_id
      form_params['client_secret'] = client_secret

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AccessToken'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"AuthenticationApi.get_access_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#get_access_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets the details of the current access token.
    # @param [Hash] opts the optional parameters
    # @return [AccessTokenDetails]
    def inspect_access_token(opts = {})
      data, _status_code, _headers = inspect_access_token_with_http_info(opts)
      data
    end

    # Gets the details of the current access token.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccessTokenDetails, Integer, Hash)>] AccessTokenDetails data, response status code and response headers
    def inspect_access_token_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.inspect_access_token ...'
      end
      # resource path
      local_var_path = '/oauth2/introspect'

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
      return_type = opts[:debug_return_type] || 'AccessTokenDetails'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['azure_auth']

      new_options = opts.merge(
        :operation => :"AuthenticationApi.inspect_access_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#inspect_access_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
