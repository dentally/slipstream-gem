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

module OpenapiClient
  class PracticeEntityType
    SITE = "Site".freeze
    ORGANISATION = "Organisation".freeze

    def self.all_vars
      @all_vars ||= [SITE, ORGANISATION].freeze
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
      return value if PracticeEntityType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #PracticeEntityType"
    end
  end
end
