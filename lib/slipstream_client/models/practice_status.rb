=begin
#Practice -> Cloud API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0
Contact: Nexus@HenryScheinOne.co.nz
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

require 'date'
require 'time'

module SlipstreamClient
  class PracticeStatus
    UNKNOWN = "UNKNOWN".freeze
    OPERATIONAL = "OPERATIONAL".freeze
    TEMPORARILY_CLOSED = "TEMPORARILY_CLOSED".freeze
    PERMANENTLY_CLOSED = "PERMANENTLY_CLOSED".freeze
    GONE = "GONE".freeze

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
