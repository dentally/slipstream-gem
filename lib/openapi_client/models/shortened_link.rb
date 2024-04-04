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
  # The details of a link which has been shortened 
  class ShortenedLink
    # A URL-safe unique identifier for an entity (See [Sqids](https://sqids.org))
    attr_accessor :link_slug

    # The default url of the shortened link
    attr_accessor :primary_short_link

    # The full link that the shortened link redirects to
    attr_accessor :full_link

    # Whether to track clicks on the shortened link and emit an event the first time a link is used
    attr_accessor :click_tracking_enabled

    # How long after the last use or change the link should expire
    attr_accessor :sliding_expiration

    # A user specified alias which can be used to access the original link
    attr_accessor :_alias

    # The default aliased url
    attr_accessor :primary_alias_link

    # The number of times the link has been used
    attr_accessor :visits

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'link_slug' => :'LinkSlug',
        :'primary_short_link' => :'PrimaryShortLink',
        :'full_link' => :'FullLink',
        :'click_tracking_enabled' => :'ClickTrackingEnabled',
        :'sliding_expiration' => :'SlidingExpiration',
        :'_alias' => :'Alias',
        :'primary_alias_link' => :'PrimaryAliasLink',
        :'visits' => :'Visits'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'link_slug' => :'String',
        :'primary_short_link' => :'String',
        :'full_link' => :'String',
        :'click_tracking_enabled' => :'Boolean',
        :'sliding_expiration' => :'String',
        :'_alias' => :'String',
        :'primary_alias_link' => :'String',
        :'visits' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'click_tracking_enabled',
        :'sliding_expiration',
        :'_alias',
        :'primary_alias_link',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::ShortenedLink` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::ShortenedLink`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'link_slug')
        self.link_slug = attributes[:'link_slug']
      else
        self.link_slug = nil
      end

      if attributes.key?(:'primary_short_link')
        self.primary_short_link = attributes[:'primary_short_link']
      end

      if attributes.key?(:'full_link')
        self.full_link = attributes[:'full_link']
      end

      if attributes.key?(:'click_tracking_enabled')
        self.click_tracking_enabled = attributes[:'click_tracking_enabled']
      end

      if attributes.key?(:'sliding_expiration')
        self.sliding_expiration = attributes[:'sliding_expiration']
      end

      if attributes.key?(:'_alias')
        self._alias = attributes[:'_alias']
      end

      if attributes.key?(:'primary_alias_link')
        self.primary_alias_link = attributes[:'primary_alias_link']
      end

      if attributes.key?(:'visits')
        self.visits = attributes[:'visits']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @link_slug.nil?
        invalid_properties.push('invalid value for "link_slug", link_slug cannot be nil.')
      end

      pattern = Regexp.new(/^[osl][a-zA-Z0-9]{3,}$/)
      if @link_slug !~ pattern
        invalid_properties.push("invalid value for \"link_slug\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @link_slug.nil?
      return false if @link_slug !~ Regexp.new(/^[osl][a-zA-Z0-9]{3,}$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] link_slug Value to be assigned
    def link_slug=(link_slug)
      if link_slug.nil?
        fail ArgumentError, 'link_slug cannot be nil'
      end

      pattern = Regexp.new(/^[osl][a-zA-Z0-9]{3,}$/)
      if link_slug !~ pattern
        fail ArgumentError, "invalid value for \"link_slug\", must conform to the pattern #{pattern}."
      end

      @link_slug = link_slug
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          link_slug == o.link_slug &&
          primary_short_link == o.primary_short_link &&
          full_link == o.full_link &&
          click_tracking_enabled == o.click_tracking_enabled &&
          sliding_expiration == o.sliding_expiration &&
          _alias == o._alias &&
          primary_alias_link == o.primary_alias_link &&
          visits == o.visits
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [link_slug, primary_short_link, full_link, click_tracking_enabled, sliding_expiration, _alias, primary_alias_link, visits].hash
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
        klass = OpenapiClient.const_get(type)
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
