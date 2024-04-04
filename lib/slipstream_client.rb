=begin
#Practice -> Cloud API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0
Contact: Nexus@HenryScheinOne.co.nz
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

# Common files
require 'slipstream_client/api_client'
require 'slipstream_client/api_error'
require 'slipstream_client/version'
require 'slipstream_client/configuration'

# Models
require 'slipstream_client/models/access_token'
require 'slipstream_client/models/access_token_details'
require 'slipstream_client/models/addressee'
require 'slipstream_client/models/api_key_pair'
require 'slipstream_client/models/bad_request'
require 'slipstream_client/models/capability'
require 'slipstream_client/models/cloud_event'
require 'slipstream_client/models/coordinates'
require 'slipstream_client/models/create_letters202_response'
require 'slipstream_client/models/data_uri'
require 'slipstream_client/models/forbidden'
require 'slipstream_client/models/letter_change_summary'
require 'slipstream_client/models/letter_created_event'
require 'slipstream_client/models/letter_creation_failed_event'
require 'slipstream_client/models/letter_details'
require 'slipstream_client/models/letter_details_list_response'
require 'slipstream_client/models/letter_properties'
require 'slipstream_client/models/letter_status'
require 'slipstream_client/models/not_found'
require 'slipstream_client/models/organisation_details'
require 'slipstream_client/models/organisation_identity'
require 'slipstream_client/models/organisation_onboarding_request'
require 'slipstream_client/models/paged_response'
require 'slipstream_client/models/physical_post_event'
require 'slipstream_client/models/practice_entity'
require 'slipstream_client/models/practice_entity_type'
require 'slipstream_client/models/practice_management_software'
require 'slipstream_client/models/practice_site_deleted'
require 'slipstream_client/models/practice_site_details'
require 'slipstream_client/models/practice_site_identity'
require 'slipstream_client/models/practice_site_identity_with_keys'
require 'slipstream_client/models/practice_site_list_response'
require 'slipstream_client/models/practice_site_onboarding_request'
require 'slipstream_client/models/practice_status'
require 'slipstream_client/models/problem_details'
require 'slipstream_client/models/record_identity'
require 'slipstream_client/models/send_letter_request'
require 'slipstream_client/models/short_links_created_response'
require 'slipstream_client/models/short_links_created_response_failed_inner'
require 'slipstream_client/models/shorten_link_request'
require 'slipstream_client/models/shortened_link'
require 'slipstream_client/models/shortened_links_list_response'
require 'slipstream_client/models/street_address'
require 'slipstream_client/models/unauthorized'
require 'slipstream_client/models/unprocessable_entity'
require 'slipstream_client/models/update_practice_site_details_request'
require 'slipstream_client/models/webhook_subscription'
require 'slipstream_client/models/webhook_subscription_details'
require 'slipstream_client/models/webhook_subscription_headers_inner'

# APIs
require 'slipstream_client/api/authentication_api'
require 'slipstream_client/api/links_api'
require 'slipstream_client/api/lookup_api'
require 'slipstream_client/api/organisations_api'
require 'slipstream_client/api/physical_post_api'
require 'slipstream_client/api/physical_post_webhooks_api'
require 'slipstream_client/api/site_details_api'
require 'slipstream_client/api/sites_api'

module SlipstreamClient
  class << self
    # Customize default settings for the SDK using block.
    #   SlipstreamClient.configure do |config|
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
