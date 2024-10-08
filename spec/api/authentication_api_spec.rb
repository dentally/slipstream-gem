=begin
#Practice -> Cloud API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0
Contact: Nexus@HenryScheinOne.co.nz
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'

# Unit tests for SlipstreamClient::AuthenticationApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AuthenticationApi' do
  before do
    # run before each test
    @api_instance = SlipstreamClient::AuthenticationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthenticationApi' do
    it 'should create an instance of AuthenticationApi' do
      expect(@api_instance).to be_instance_of(SlipstreamClient::AuthenticationApi)
    end
  end

  # unit tests for get_access_token
  # Get an access token
  # This endpoint is used to obtain an access token by using client credentials or user credentials.
  # @param grant_type Grant type value - currently only client_credentials is explicitly supported.
  # @param client_id The client&#39;s identifier.
  # @param client_secret The client&#39;s secret.
  # @param [Hash] opts the optional parameters
  # @return [AccessToken]
  describe 'get_access_token test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for inspect_access_token
  # Gets the details of the current access token.
  # @param [Hash] opts the optional parameters
  # @return [AccessTokenDetails]
  describe 'inspect_access_token test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
