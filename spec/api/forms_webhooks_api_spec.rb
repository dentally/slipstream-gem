=begin
#Practice -> Cloud API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0
Contact: Bifrost@HenryScheinOne.co.nz
Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

require 'spec_helper'
require 'json'

# Unit tests for SlipstreamClient::FormsWebhooksApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FormsWebhooksApi' do
  before do
    # run before each test
    @api_instance = SlipstreamClient::FormsWebhooksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FormsWebhooksApi' do
    it 'should create an instance of FormsWebhooksApi' do
      expect(@api_instance).to be_instance_of(SlipstreamClient::FormsWebhooksApi)
    end
  end

  # unit tests for get_forms_subscription
  # Get subscription information
  # Gets subscription information for forms events
  # @param site_slug The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
  # @param [Hash] opts the optional parameters
  # @return [WebhookSubscriptionDetails]
  describe 'get_forms_subscription test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for subscribe_to_forms
  # Subscribe
  # Subscribe to receive webhooks for forms events
  # @param site_slug The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
  # @param webhook_subscription 
  # @param [Hash] opts the optional parameters
  # @return [WebhookSubscription]
  describe 'subscribe_to_forms test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for unsubscribe_to_forms
  # Unsubscribe
  # Unsubscribe from receiving webhooks for forms events
  # @param site_slug The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'unsubscribe_to_forms test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end