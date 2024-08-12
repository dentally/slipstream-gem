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
  # The details of a payment
  class CreatePaymentRequest
    attr_accessor :payment_provider

    # The [ISO-4217](https://en.wikipedia.org/wiki/ISO_4217#List_of_ISO_4217_currency_codes) currency code used by the practice.
    attr_accessor :currency

    # A unique identifier for the customer
    attr_accessor :customer_id

    # The PMS reference for the payment
    attr_accessor :reference

    # A description for the payment that will appear on the customer's statement
    attr_accessor :statement_descriptor

    # The fee amount (if any) that will be applied to the payment. The amount collected will be capped at the total payment amount.
    attr_accessor :fee_amount

    # The history of state changes the payment has gone through
    attr_accessor :line_items

    attr_accessor :ui_mode

    # The URL to redirect the customer to after a successful payment (in hosted UI mode)
    attr_accessor :success_url

    # If set, Stripe checkout displays a back button where customers will be sent if they cancel the payment
    attr_accessor :cancel_url

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
        :'payment_provider' => :'PaymentProvider',
        :'currency' => :'Currency',
        :'customer_id' => :'CustomerId',
        :'reference' => :'Reference',
        :'statement_descriptor' => :'StatementDescriptor',
        :'fee_amount' => :'FeeAmount',
        :'line_items' => :'LineItems',
        :'ui_mode' => :'UiMode',
        :'success_url' => :'SuccessUrl',
        :'cancel_url' => :'CancelUrl'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'payment_provider' => :'PaymentProvider',
        :'currency' => :'String',
        :'customer_id' => :'String',
        :'reference' => :'String',
        :'statement_descriptor' => :'String',
        :'fee_amount' => :'Integer',
        :'line_items' => :'Array<PaymentLineItem>',
        :'ui_mode' => :'PaymentUiMode',
        :'success_url' => :'String',
        :'cancel_url' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SlipstreamClient::CreatePaymentRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SlipstreamClient::CreatePaymentRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'payment_provider')
        self.payment_provider = attributes[:'payment_provider']
      else
        self.payment_provider = nil
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      else
        self.currency = nil
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.key?(:'statement_descriptor')
        self.statement_descriptor = attributes[:'statement_descriptor']
      end

      if attributes.key?(:'fee_amount')
        self.fee_amount = attributes[:'fee_amount']
      end

      if attributes.key?(:'line_items')
        if (value = attributes[:'line_items']).is_a?(Array)
          self.line_items = value
        end
      end

      if attributes.key?(:'ui_mode')
        self.ui_mode = attributes[:'ui_mode']
      end

      if attributes.key?(:'success_url')
        self.success_url = attributes[:'success_url']
      end

      if attributes.key?(:'cancel_url')
        self.cancel_url = attributes[:'cancel_url']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @payment_provider.nil?
        invalid_properties.push('invalid value for "payment_provider", payment_provider cannot be nil.')
      end

      if @currency.nil?
        invalid_properties.push('invalid value for "currency", currency cannot be nil.')
      end

      if !@statement_descriptor.nil? && @statement_descriptor.to_s.length > 22
        invalid_properties.push('invalid value for "statement_descriptor", the character length must be smaller than or equal to 22.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @payment_provider.nil?
      return false if @currency.nil?
      return false if !@statement_descriptor.nil? && @statement_descriptor.to_s.length > 22
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] statement_descriptor Value to be assigned
    def statement_descriptor=(statement_descriptor)
      if statement_descriptor.nil?
        fail ArgumentError, 'statement_descriptor cannot be nil'
      end

      if statement_descriptor.to_s.length > 22
        fail ArgumentError, 'invalid value for "statement_descriptor", the character length must be smaller than or equal to 22.'
      end

      @statement_descriptor = statement_descriptor
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          payment_provider == o.payment_provider &&
          currency == o.currency &&
          customer_id == o.customer_id &&
          reference == o.reference &&
          statement_descriptor == o.statement_descriptor &&
          fee_amount == o.fee_amount &&
          line_items == o.line_items &&
          ui_mode == o.ui_mode &&
          success_url == o.success_url &&
          cancel_url == o.cancel_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [payment_provider, currency, customer_id, reference, statement_descriptor, fee_amount, line_items, ui_mode, success_url, cancel_url].hash
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
