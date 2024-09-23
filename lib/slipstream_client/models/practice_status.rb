=begin
#Practice -> Cloud API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0
Contact: Bifrost@HenryScheinOne.co.nz
Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

require 'date'
require 'time'

module SlipstreamClient
  class PracticeStatus
    UNKNOWN = "Unknown".freeze
    OPERATIONAL = "Operational".freeze
    TEMPORARILY_CLOSED = "TemporarilyClosed".freeze
    PERMANENTLY_CLOSED = "PermanentlyClosed".freeze
    GONE = "Gone".freeze

    def self.all_vars
      @all_vars ||= [UNKNOWN, OPERATIONAL, TEMPORARILY_CLOSED, PERMANENTLY_CLOSED, GONE].freeze
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
      return value if PracticeStatus.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #PracticeStatus"
    end
  end
end
