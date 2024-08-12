=begin
#Practice -> Cloud API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0
Contact: Nexus@HenryScheinOne.co.nz
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'date'
require 'time'

module SlipstreamClient
  class PaymentUiMode
    HOSTED = "Hosted".freeze
    EMBEDDED = "Embedded".freeze

    def self.all_vars
      @all_vars ||= [HOSTED, EMBEDDED].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if PaymentUiMode.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #PaymentUiMode"
    end
  end
end