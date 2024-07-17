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
  class PaymentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a payment
    # Creates a payment
    # @param site_slug [String] The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
    # @param create_payment_request [CreatePaymentRequest] The details of the payment to create
    # @param [Hash] opts the optional parameters
    # @return [PaymentDetails]
    def create_payment(site_slug, create_payment_request, opts = {})
      data, _status_code, _headers = create_payment_with_http_info(site_slug, create_payment_request, opts)
      data
    end

    # Create a payment
    # Creates a payment
    # @param site_slug [String] The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
    # @param create_payment_request [CreatePaymentRequest] The details of the payment to create
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentDetails, Integer, Hash)>] PaymentDetails data, response status code and response headers
    def create_payment_with_http_info(site_slug, create_payment_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentsApi.create_payment ...'
      end
      # verify the required parameter 'site_slug' is set
      if @api_client.config.client_side_validation && site_slug.nil?
        fail ArgumentError, "Missing the required parameter 'site_slug' when calling PaymentsApi.create_payment"
      end
      pattern = Regexp.new(/^[osl][a-zA-Z0-9]{3,}$/)
      if @api_client.config.client_side_validation && site_slug !~ pattern
        fail ArgumentError, "invalid value for 'site_slug' when calling PaymentsApi.create_payment, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'create_payment_request' is set
      if @api_client.config.client_side_validation && create_payment_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_payment_request' when calling PaymentsApi.create_payment"
      end
      # resource path
      local_var_path = '/sites/{SiteSlug}/payments'.sub('{' + 'SiteSlug' + '}', CGI.escape(site_slug.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_payment_request)

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentDetails'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'azure_auth', 'azure_auth']

      new_options = opts.merge(
        :operation => :"PaymentsApi.create_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsApi#create_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create account with payment provider
    # Creates an account for the site with the specified payment provider
    # @param site_slug [String] The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
    # @param create_payment_account_request [CreatePaymentAccountRequest] The details of the payment to create
    # @param [Hash] opts the optional parameters
    # @return [PaymentAccountCreatedResponse]
    def create_payment_account(site_slug, create_payment_account_request, opts = {})
      data, _status_code, _headers = create_payment_account_with_http_info(site_slug, create_payment_account_request, opts)
      data
    end

    # Create account with payment provider
    # Creates an account for the site with the specified payment provider
    # @param site_slug [String] The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
    # @param create_payment_account_request [CreatePaymentAccountRequest] The details of the payment to create
    # @param [Hash] opts the optional parameters
    # @return [Array<(PaymentAccountCreatedResponse, Integer, Hash)>] PaymentAccountCreatedResponse data, response status code and response headers
    def create_payment_account_with_http_info(site_slug, create_payment_account_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentsApi.create_payment_account ...'
      end
      # verify the required parameter 'site_slug' is set
      if @api_client.config.client_side_validation && site_slug.nil?
        fail ArgumentError, "Missing the required parameter 'site_slug' when calling PaymentsApi.create_payment_account"
      end
      pattern = Regexp.new(/^[osl][a-zA-Z0-9]{3,}$/)
      if @api_client.config.client_side_validation && site_slug !~ pattern
        fail ArgumentError, "invalid value for 'site_slug' when calling PaymentsApi.create_payment_account, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'create_payment_account_request' is set
      if @api_client.config.client_side_validation && create_payment_account_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_payment_account_request' when calling PaymentsApi.create_payment_account"
      end
      # resource path
      local_var_path = '/sites/{SiteSlug}/payments/accounts'.sub('{' + 'SiteSlug' + '}', CGI.escape(site_slug.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_payment_account_request)

      # return_type
      return_type = opts[:debug_return_type] || 'PaymentAccountCreatedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'azure_auth', 'azure_auth']

      new_options = opts.merge(
        :operation => :"PaymentsApi.create_payment_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsApi#create_payment_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Payment Details
    # Gets the details of a payment by ID
    # @param site_slug [String] The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
    # @param payment_identifier [String] The unique identifier of the payment
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_history If true, the response will include the history of the payment
    # @return [PaymentDetails]
    def get_payment(site_slug, payment_identifier, opts = {})
      data, _status_code, _headers = get_payment_with_http_info(site_slug, payment_identifier, opts)
      data
    end

    # Get Payment Details
    # Gets the details of a payment by ID
    # @param site_slug [String] The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
    # @param payment_identifier [String] The unique identifier of the payment
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_history If true, the response will include the history of the payment
    # @return [Array<(PaymentDetails, Integer, Hash)>] PaymentDetails data, response status code and response headers
    def get_payment_with_http_info(site_slug, payment_identifier, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentsApi.get_payment ...'
      end
      # verify the required parameter 'site_slug' is set
      if @api_client.config.client_side_validation && site_slug.nil?
        fail ArgumentError, "Missing the required parameter 'site_slug' when calling PaymentsApi.get_payment"
      end
      pattern = Regexp.new(/^[osl][a-zA-Z0-9]{3,}$/)
      if @api_client.config.client_side_validation && site_slug !~ pattern
        fail ArgumentError, "invalid value for 'site_slug' when calling PaymentsApi.get_payment, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'payment_identifier' is set
      if @api_client.config.client_side_validation && payment_identifier.nil?
        fail ArgumentError, "Missing the required parameter 'payment_identifier' when calling PaymentsApi.get_payment"
      end
      # resource path
      local_var_path = '/sites/{SiteSlug}/payments/{PaymentIdentifier}'.sub('{' + 'SiteSlug' + '}', CGI.escape(site_slug.to_s)).sub('{' + 'PaymentIdentifier' + '}', CGI.escape(payment_identifier.to_s))

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
      return_type = opts[:debug_return_type] || 'PaymentDetails'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'azure_auth', 'azure_auth']

      new_options = opts.merge(
        :operation => :"PaymentsApi.get_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsApi#get_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List payment provider accounts
    # List all payment provider accounts for the site
    # @param site_slug [String] The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
    # @param [Hash] opts the optional parameters
    # @return [Array<PaymentAccountDetails>]
    def list_payment_accounts(site_slug, opts = {})
      data, _status_code, _headers = list_payment_accounts_with_http_info(site_slug, opts)
      data
    end

    # List payment provider accounts
    # List all payment provider accounts for the site
    # @param site_slug [String] The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<PaymentAccountDetails>, Integer, Hash)>] Array<PaymentAccountDetails> data, response status code and response headers
    def list_payment_accounts_with_http_info(site_slug, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentsApi.list_payment_accounts ...'
      end
      # verify the required parameter 'site_slug' is set
      if @api_client.config.client_side_validation && site_slug.nil?
        fail ArgumentError, "Missing the required parameter 'site_slug' when calling PaymentsApi.list_payment_accounts"
      end
      pattern = Regexp.new(/^[osl][a-zA-Z0-9]{3,}$/)
      if @api_client.config.client_side_validation && site_slug !~ pattern
        fail ArgumentError, "invalid value for 'site_slug' when calling PaymentsApi.list_payment_accounts, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/sites/{SiteSlug}/payments/accounts'.sub('{' + 'SiteSlug' + '}', CGI.escape(site_slug.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<PaymentAccountDetails>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'azure_auth', 'azure_auth']

      new_options = opts.merge(
        :operation => :"PaymentsApi.list_payment_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentsApi#list_payment_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
