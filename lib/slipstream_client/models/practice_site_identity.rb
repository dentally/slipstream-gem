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
  # An object containing a practice's PMS specific ID and it's slipstream practice site, organisation and billing organisation slugs.
  class PracticeSiteIdentity
    # The name of the practice site
    attr_accessor :name

    attr_accessor :practice_management_software

    # The PMS-specific id that uniquely identifies a physical practice
    attr_accessor :pms_specific_site_id

    # A URL-safe unique identifier for an entity (See [Sqids](https://sqids.org))
    attr_accessor :site_slug

    # A URL-safe unique identifier for an entity (See [Sqids](https://sqids.org))
    attr_accessor :owning_organisation_slug

    # A URL-safe unique identifier for an entity (See [Sqids](https://sqids.org))
    attr_accessor :billing_organisation_slug

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'Name',
        :'practice_management_software' => :'PracticeManagementSoftware',
        :'pms_specific_site_id' => :'PmsSpecificSiteId',
        :'site_slug' => :'SiteSlug',
        :'owning_organisation_slug' => :'OwningOrganisationSlug',
        :'billing_organisation_slug' => :'BillingOrganisationSlug'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'practice_management_software' => :'PracticeManagementSoftware',
        :'pms_specific_site_id' => :'String',
        :'site_slug' => :'String',
        :'owning_organisation_slug' => :'String',
        :'billing_organisation_slug' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SlipstreamClient::PracticeSiteIdentity` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SlipstreamClient::PracticeSiteIdentity`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'practice_management_software')
        self.practice_management_software = attributes[:'practice_management_software']
      else
        self.practice_management_software = nil
      end

      if attributes.key?(:'pms_specific_site_id')
        self.pms_specific_site_id = attributes[:'pms_specific_site_id']
      else
        self.pms_specific_site_id = nil
      end

      if attributes.key?(:'site_slug')
        self.site_slug = attributes[:'site_slug']
      else
        self.site_slug = nil
      end

      if attributes.key?(:'owning_organisation_slug')
        self.owning_organisation_slug = attributes[:'owning_organisation_slug']
      else
        self.owning_organisation_slug = nil
      end

      if attributes.key?(:'billing_organisation_slug')
        self.billing_organisation_slug = attributes[:'billing_organisation_slug']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @practice_management_software.nil?
        invalid_properties.push('invalid value for "practice_management_software", practice_management_software cannot be nil.')
      end

      if @pms_specific_site_id.nil?
        invalid_properties.push('invalid value for "pms_specific_site_id", pms_specific_site_id cannot be nil.')
      end

      if @site_slug.nil?
        invalid_properties.push('invalid value for "site_slug", site_slug cannot be nil.')
      end

      pattern = Regexp.new(/^[osl][a-zA-Z0-9]{3,}$/)
      if @site_slug !~ pattern
        invalid_properties.push("invalid value for \"site_slug\", must conform to the pattern #{pattern}.")
      end

      if @owning_organisation_slug.nil?
        invalid_properties.push('invalid value for "owning_organisation_slug", owning_organisation_slug cannot be nil.')
      end

      pattern = Regexp.new(/^[osl][a-zA-Z0-9]{3,}$/)
      if @owning_organisation_slug !~ pattern
        invalid_properties.push("invalid value for \"owning_organisation_slug\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^[osl][a-zA-Z0-9]{3,}$/)
      if !@billing_organisation_slug.nil? && @billing_organisation_slug !~ pattern
        invalid_properties.push("invalid value for \"billing_organisation_slug\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @practice_management_software.nil?
      return false if @pms_specific_site_id.nil?
      return false if @site_slug.nil?
      return false if @site_slug !~ Regexp.new(/^[osl][a-zA-Z0-9]{3,}$/)
      return false if @owning_organisation_slug.nil?
      return false if @owning_organisation_slug !~ Regexp.new(/^[osl][a-zA-Z0-9]{3,}$/)
      return false if !@billing_organisation_slug.nil? && @billing_organisation_slug !~ Regexp.new(/^[osl][a-zA-Z0-9]{3,}$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] site_slug Value to be assigned
    def site_slug=(site_slug)
      if site_slug.nil?
        fail ArgumentError, 'site_slug cannot be nil'
      end

      pattern = Regexp.new(/^[osl][a-zA-Z0-9]{3,}$/)
      if site_slug !~ pattern
        fail ArgumentError, "invalid value for \"site_slug\", must conform to the pattern #{pattern}."
      end

      @site_slug = site_slug
    end

    # Custom attribute writer method with validation
    # @param [Object] owning_organisation_slug Value to be assigned
    def owning_organisation_slug=(owning_organisation_slug)
      if owning_organisation_slug.nil?
        fail ArgumentError, 'owning_organisation_slug cannot be nil'
      end

      pattern = Regexp.new(/^[osl][a-zA-Z0-9]{3,}$/)
      if owning_organisation_slug !~ pattern
        fail ArgumentError, "invalid value for \"owning_organisation_slug\", must conform to the pattern #{pattern}."
      end

      @owning_organisation_slug = owning_organisation_slug
    end

    # Custom attribute writer method with validation
    # @param [Object] billing_organisation_slug Value to be assigned
    def billing_organisation_slug=(billing_organisation_slug)
      if billing_organisation_slug.nil?
        fail ArgumentError, 'billing_organisation_slug cannot be nil'
      end

      pattern = Regexp.new(/^[osl][a-zA-Z0-9]{3,}$/)
      if billing_organisation_slug !~ pattern
        fail ArgumentError, "invalid value for \"billing_organisation_slug\", must conform to the pattern #{pattern}."
      end

      @billing_organisation_slug = billing_organisation_slug
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          practice_management_software == o.practice_management_software &&
          pms_specific_site_id == o.pms_specific_site_id &&
          site_slug == o.site_slug &&
          owning_organisation_slug == o.owning_organisation_slug &&
          billing_organisation_slug == o.billing_organisation_slug
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, practice_management_software, pms_specific_site_id, site_slug, owning_organisation_slug, billing_organisation_slug].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = SlipstreamClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
