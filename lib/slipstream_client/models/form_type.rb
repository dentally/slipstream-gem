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
  class FormType
    CUSTOM = "Custom".freeze
    MEDICAL_HISTORY = "MedicalHistory".freeze
    ORAL_HEALTH = "OralHealth".freeze
    PATIENT_DETAILS = "PatientDetails".freeze

    def self.all_vars
      @all_vars ||= [CUSTOM, MEDICAL_HISTORY, ORAL_HEALTH, PATIENT_DETAILS].freeze
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
      return value if FormType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #FormType"
    end
  end
end