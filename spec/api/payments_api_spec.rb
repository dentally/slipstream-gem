=begin
#Practice -> Cloud API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0
Contact: Nexus@HenryScheinOne.co.nz
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'spec_helper'
require 'json'

# Unit tests for SlipstreamClient::PaymentsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PaymentsApi' do
  before do
    # run before each test
    @api_instance = SlipstreamClient::PaymentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentsApi' do
    it 'should create an instance of PaymentsApi' do
      expect(@api_instance).to be_instance_of(SlipstreamClient::PaymentsApi)
    end
  end

  # unit tests for create_payment
  # Create a payment
  # Creates a payment
  # @param site_slug The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
  # @param create_payment_request The details of the payment to create
  # @param [Hash] opts the optional parameters
  # @return [PaymentDetails]
  describe 'create_payment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_payment_account
  # Create account with payment provider
  # Creates an account for the site with the specified payment provider
  # @param site_slug The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
  # @param create_payment_account_request The details of the payment to create
  # @param [Hash] opts the optional parameters
  # @return [PaymentAccountCreatedResponse]
  describe 'create_payment_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_payment
  # Get Payment Details
  # Gets the details of a payment by ID
  # @param site_slug The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
  # @param payment_identifier The unique identifier of the payment
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_history If true, the response will include the history of the payment
  # @return [PaymentDetails]
  describe 'get_payment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_payment_accounts
  # List payment provider accounts
  # List all payment provider accounts for the site
  # @param site_slug The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
  # @param [Hash] opts the optional parameters
  # @return [Array<PaymentAccountDetails>]
  describe 'list_payment_accounts test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
