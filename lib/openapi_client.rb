=begin
#Practice -> Cloud API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0
Contact: Nexus@HenryScheinOne.co.nz
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

# Common files
require 'openapi_client/api_client'
require 'openapi_client/api_error'
require 'openapi_client/version'
require 'openapi_client/configuration'

# Models
require 'openapi_client/models/access_token'
require 'openapi_client/models/access_token_details'
require 'openapi_client/models/addressee'
require 'openapi_client/models/api_key_pair'
require 'openapi_client/models/bad_request'
require 'openapi_client/models/capability'
require 'openapi_client/models/cloud_event'
require 'openapi_client/models/coordinates'
require 'openapi_client/models/create_letters202_response'
require 'openapi_client/models/data_uri'
require 'openapi_client/models/forbidden'
require 'openapi_client/models/letter_change_summary'
require 'openapi_client/models/letter_created_event'
require 'openapi_client/models/letter_creation_failed_event'
require 'openapi_client/models/letter_details'
require 'openapi_client/models/letter_details_list_response'
require 'openapi_client/models/letter_properties'
require 'openapi_client/models/letter_status'
require 'openapi_client/models/not_found'
require 'openapi_client/models/organisation_details'
require 'openapi_client/models/organisation_identity'
require 'openapi_client/models/organisation_onboarding_request'
require 'openapi_client/models/paged_response'
require 'openapi_client/models/physical_post_event'
require 'openapi_client/models/practice_entity'
require 'openapi_client/models/practice_entity_type'
require 'openapi_client/models/practice_management_software'
require 'openapi_client/models/practice_site_deleted'
require 'openapi_client/models/practice_site_details'
require 'openapi_client/models/practice_site_identity'
require 'openapi_client/models/practice_site_identity_with_keys'
require 'openapi_client/models/practice_site_list_response'
require 'openapi_client/models/practice_site_onboarding_request'
require 'openapi_client/models/practice_status'
require 'openapi_client/models/problem_details'
require 'openapi_client/models/record_identity'
require 'openapi_client/models/send_letter_request'
require 'openapi_client/models/short_links_created_response'
require 'openapi_client/models/short_links_created_response_failed_inner'
require 'openapi_client/models/shorten_link_request'
require 'openapi_client/models/shortened_link'
require 'openapi_client/models/shortened_links_list_response'
require 'openapi_client/models/street_address'
require 'openapi_client/models/unauthorized'
require 'openapi_client/models/unprocessable_entity'
require 'openapi_client/models/update_practice_site_details_request'
require 'openapi_client/models/webhook_subscription'
require 'openapi_client/models/webhook_subscription_details'
require 'openapi_client/models/webhook_subscription_headers_inner'

# APIs
require 'openapi_client/api/authentication_api'
require 'openapi_client/api/links_api'
require 'openapi_client/api/lookup_api'
require 'openapi_client/api/organisations_api'
require 'openapi_client/api/physical_post_api'
require 'openapi_client/api/physical_post_webhooks_api'
require 'openapi_client/api/site_details_api'
require 'openapi_client/api/sites_api'

module OpenapiClient
  class << self
    # Customize default settings for the SDK using block.
    #   OpenapiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
