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

# Unit tests for SlipstreamClient::PhysicalPostApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PhysicalPostApi' do
  before do
    # run before each test
    @api_instance = SlipstreamClient::PhysicalPostApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PhysicalPostApi' do
    it 'should create an instance of PhysicalPostApi' do
      expect(@api_instance).to be_instance_of(SlipstreamClient::PhysicalPostApi)
    end
  end

  # unit tests for create_letters
  # Send letters
  # Queues one or more letters for sending on behalf of the practice
  # @param site_slug The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
  # @param send_letter_request The details of the letter to send
  # @param [Hash] opts the optional parameters
  # @return [CreateLetters202Response]
  describe 'create_letters test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_letter
  # Get the letter details of a specific letter
  # Get the details of a letter
  # @param site_slug The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
  # @param letter_id The unique identifier (GUID) of the letter in slipstream
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_history If true, the response will include the history of the letter
  # @return [LetterDetails]
  describe 'get_letter test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_letters
  # Get a paginated list of all letter details owned by a site
  # Gets a list of letters
  # @param site_slug The Slipstream [slug](https://sqids.org/) that uniquely identifies a physical practice
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page_size The page number to retrieve
  # @option opts [String] :next_page_token A token retrieved from a previous request, used to retrieve the next page of results
  # @option opts [LetterStatus] :status The status of the letters to retrieve - if not provided, all statuses will be returned
  # @option opts [Date] :date_from The date to retrieve letters from - if not provided, all letters will be returned
  # @option opts [Boolean] :include_history If true, the response will include the history of the letter
  # @return [LetterDetailsListResponse]
  describe 'list_letters test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
