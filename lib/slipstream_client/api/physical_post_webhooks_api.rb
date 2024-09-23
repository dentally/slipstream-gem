=begin
#Practice -> Cloud API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0
Contact: Bifrost@HenryScheinOne.co.nz
Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

require 'cgi'

module SlipstreamClient
  class PhysicalPostWebhooksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get subscription information
    # Gets subscription information for physical post events
    # @param site_slug [String] The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
    # @param [Hash] opts the optional parameters
    # @return [WebhookSubscriptionDetails]
    def get_physical_post_subscription(site_slug, opts = {})
      data, _status_code, _headers = get_physical_post_subscription_with_http_info(site_slug, opts)
      data
    end

    # Get subscription information
    # Gets subscription information for physical post events
    # @param site_slug [String] The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookSubscriptionDetails, Integer, Hash)>] WebhookSubscriptionDetails data, response status code and response headers
    def get_physical_post_subscription_with_http_info(site_slug, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PhysicalPostWebhooksApi.get_physical_post_subscription ...'
      end
      # verify the required parameter 'site_slug' is set
      if @api_client.config.client_side_validation && site_slug.nil?
        fail ArgumentError, "Missing the required parameter 'site_slug' when calling PhysicalPostWebhooksApi.get_physical_post_subscription"
      end
      pattern = Regexp.new(/^[osl][a-zA-Z0-9]{3,}$/)
      if @api_client.config.client_side_validation && site_slug !~ pattern
        fail ArgumentError, "invalid value for 'site_slug' when calling PhysicalPostWebhooksApi.get_physical_post_subscription, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/sites/{SiteSlug}/webhooks/features/physicalpost'.sub('{' + 'SiteSlug' + '}', CGI.escape(site_slug.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookSubscriptionDetails'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'azure_auth', 'azure_auth']

      new_options = opts.merge(
        :operation => :"PhysicalPostWebhooksApi.get_physical_post_subscription",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PhysicalPostWebhooksApi#get_physical_post_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Subscribe
    # Subscribe to receive webhooks for physical post events
    # @param site_slug [String] The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
    # @param webhook_subscription [WebhookSubscription] 
    # @param [Hash] opts the optional parameters
    # @return [WebhookSubscription]
    def subscribe_to_physical_post(site_slug, webhook_subscription, opts = {})
      data, _status_code, _headers = subscribe_to_physical_post_with_http_info(site_slug, webhook_subscription, opts)
      data
    end

    # Subscribe
    # Subscribe to receive webhooks for physical post events
    # @param site_slug [String] The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
    # @param webhook_subscription [WebhookSubscription] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookSubscription, Integer, Hash)>] WebhookSubscription data, response status code and response headers
    def subscribe_to_physical_post_with_http_info(site_slug, webhook_subscription, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PhysicalPostWebhooksApi.subscribe_to_physical_post ...'
      end
      # verify the required parameter 'site_slug' is set
      if @api_client.config.client_side_validation && site_slug.nil?
        fail ArgumentError, "Missing the required parameter 'site_slug' when calling PhysicalPostWebhooksApi.subscribe_to_physical_post"
      end
      pattern = Regexp.new(/^[osl][a-zA-Z0-9]{3,}$/)
      if @api_client.config.client_side_validation && site_slug !~ pattern
        fail ArgumentError, "invalid value for 'site_slug' when calling PhysicalPostWebhooksApi.subscribe_to_physical_post, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'webhook_subscription' is set
      if @api_client.config.client_side_validation && webhook_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_subscription' when calling PhysicalPostWebhooksApi.subscribe_to_physical_post"
      end
      # resource path
      local_var_path = '/sites/{SiteSlug}/webhooks/features/physicalpost'.sub('{' + 'SiteSlug' + '}', CGI.escape(site_slug.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(webhook_subscription)

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookSubscription'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'azure_auth', 'azure_auth']

      new_options = opts.merge(
        :operation => :"PhysicalPostWebhooksApi.subscribe_to_physical_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PhysicalPostWebhooksApi#subscribe_to_physical_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unsubscribe
    # Unsubscribe from receiving webhooks for physical post events
    # @param site_slug [String] The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def unsubscribe_to_physical_post(site_slug, opts = {})
      unsubscribe_to_physical_post_with_http_info(site_slug, opts)
      nil
    end

    # Unsubscribe
    # Unsubscribe from receiving webhooks for physical post events
    # @param site_slug [String] The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def unsubscribe_to_physical_post_with_http_info(site_slug, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PhysicalPostWebhooksApi.unsubscribe_to_physical_post ...'
      end
      # verify the required parameter 'site_slug' is set
      if @api_client.config.client_side_validation && site_slug.nil?
        fail ArgumentError, "Missing the required parameter 'site_slug' when calling PhysicalPostWebhooksApi.unsubscribe_to_physical_post"
      end
      pattern = Regexp.new(/^[osl][a-zA-Z0-9]{3,}$/)
      if @api_client.config.client_side_validation && site_slug !~ pattern
        fail ArgumentError, "invalid value for 'site_slug' when calling PhysicalPostWebhooksApi.unsubscribe_to_physical_post, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/sites/{SiteSlug}/webhooks/features/physicalpost'.sub('{' + 'SiteSlug' + '}', CGI.escape(site_slug.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/problem+json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'azure_auth', 'azure_auth']

      new_options = opts.merge(
        :operation => :"PhysicalPostWebhooksApi.unsubscribe_to_physical_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PhysicalPostWebhooksApi#unsubscribe_to_physical_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
