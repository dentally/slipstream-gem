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
  # The billing item's details 
  class BillingItemDetails
    # The unique identifier of the billing item in slipstream
    attr_accessor :id

    # The identifier of the event the billing item is related to
    attr_accessor :event_id

    # The unique identifier of the billable item this record represents (e.g. a letter)
    attr_accessor :related_item_id

    # The SKU of the billing item
    attr_accessor :sku

    # A human-friendly description of what the SKU represents
    attr_accessor :sku_description

    # The number of SKU units that are being billed for this item
    attr_accessor :pax

    # A URL-safe unique identifier for an entity (See [Sqids](https://sqids.org))
    attr_accessor :site_slug

    # A URL-safe unique identifier for an entity (See [Sqids](https://sqids.org))
    attr_accessor :billing_organisation_slug

    # When the billable item was recorded in ISO8601 format
    attr_accessor :timestamp

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'Id',
        :'event_id' => :'EventId',
        :'related_item_id' => :'RelatedItemId',
        :'sku' => :'Sku',
        :'sku_description' => :'SkuDescription',
        :'pax' => :'Pax',
        :'site_slug' => :'SiteSlug',
        :'billing_organisation_slug' => :'BillingOrganisationSlug',
        :'timestamp' => :'Timestamp'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'event_id' => :'String',
        :'related_item_id' => :'String',
        :'sku' => :'String',
        :'sku_description' => :'String',
        :'pax' => :'Integer',
        :'site_slug' => :'String',
        :'billing_organisation_slug' => :'String',
        :'timestamp' => :'Time'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SlipstreamClient::BillingItemDetails` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SlipstreamClient::BillingItemDetails`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'event_id')
        self.event_id = attributes[:'event_id']
      end

      if attributes.key?(:'related_item_id')
        self.related_item_id = attributes[:'related_item_id']
      end

      if attributes.key?(:'sku')
        self.sku = attributes[:'sku']
      end

      if attributes.key?(:'sku_description')
        self.sku_description = attributes[:'sku_description']
      end

      if attributes.key?(:'pax')
        self.pax = attributes[:'pax']
      end

      if attributes.key?(:'site_slug')
        self.site_slug = attributes[:'site_slug']
      end

      if attributes.key?(:'billing_organisation_slug')
        self.billing_organisation_slug = attributes[:'billing_organisation_slug']
      end

      if attributes.key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      pattern = Regexp.new(/^[osl][a-zA-Z0-9]{3,}$/)
      if !@site_slug.nil? && @site_slug !~ pattern
        invalid_properties.push("invalid value for \"site_slug\", must conform to the pattern #{pattern}.")
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
      return false if @id.nil?
      return false if !@site_slug.nil? && @site_slug !~ Regexp.new(/^[osl][a-zA-Z0-9]{3,}$/)
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
          id == o.id &&
          event_id == o.event_id &&
          related_item_id == o.related_item_id &&
          sku == o.sku &&
          sku_description == o.sku_description &&
          pax == o.pax &&
          site_slug == o.site_slug &&
          billing_organisation_slug == o.billing_organisation_slug &&
          timestamp == o.timestamp
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, event_id, related_item_id, sku, sku_description, pax, site_slug, billing_organisation_slug, timestamp].hash
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
