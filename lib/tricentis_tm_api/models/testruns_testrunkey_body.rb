=begin
#TTM for Jira

#Tricentis Test Management for Jira

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.50
=end

require 'date'

module TricentisTmApi
  class TestrunsTestrunkeyBody
    attr_accessor :test_category

    attr_accessor :assignee

    attr_accessor :executed_by

    attr_accessor :planned_start_date

    attr_accessor :planned_end_date

    attr_accessor :priority

    attr_accessor :status

    attr_accessor :cycle_id

    attr_accessor :components

    attr_accessor :labels

    attr_accessor :fields

    attr_accessor :steps

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'test_category' => :'testCategory',
        :'assignee' => :'assignee',
        :'executed_by' => :'executedBy',
        :'planned_start_date' => :'plannedStartDate',
        :'planned_end_date' => :'plannedEndDate',
        :'priority' => :'priority',
        :'status' => :'status',
        :'cycle_id' => :'cycleId',
        :'components' => :'components',
        :'labels' => :'labels',
        :'fields' => :'fields',
        :'steps' => :'steps'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'test_category' => :'Object',
        :'assignee' => :'Object',
        :'executed_by' => :'Object',
        :'planned_start_date' => :'Object',
        :'planned_end_date' => :'Object',
        :'priority' => :'Object',
        :'status' => :'Object',
        :'cycle_id' => :'Object',
        :'components' => :'Object',
        :'labels' => :'Object',
        :'fields' => :'Object',
        :'steps' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'test_category',
        :'assignee',
        :'executed_by',
        :'planned_start_date',
        :'planned_end_date',
        :'priority',
        :'status',
        :'cycle_id',
        :'components',
        :'labels',
        :'fields',
        :'steps'
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `TricentisTmApi::TestrunsTestrunkeyBody` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TricentisTmApi::TestrunsTestrunkeyBody`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'test_category')
        self.test_category = attributes[:'test_category']
      end

      if attributes.key?(:'assignee')
        self.assignee = attributes[:'assignee']
      end

      if attributes.key?(:'executed_by')
        self.executed_by = attributes[:'executed_by']
      end

      if attributes.key?(:'planned_start_date')
        self.planned_start_date = attributes[:'planned_start_date']
      end

      if attributes.key?(:'planned_end_date')
        self.planned_end_date = attributes[:'planned_end_date']
      end

      if attributes.key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'cycle_id')
        self.cycle_id = attributes[:'cycle_id']
      end

      if attributes.key?(:'components')
        if (value = attributes[:'components']).is_a?(Array)
          self.components = value
        end
      end

      if attributes.key?(:'labels')
        if (value = attributes[:'labels']).is_a?(Array)
          self.labels = value
        end
      end

      if attributes.key?(:'fields')
        if (value = attributes[:'fields']).is_a?(Array)
          self.fields = value
        end
      end

      if attributes.key?(:'steps')
        if (value = attributes[:'steps']).is_a?(Array)
          self.steps = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          test_category == o.test_category &&
          assignee == o.assignee &&
          executed_by == o.executed_by &&
          planned_start_date == o.planned_start_date &&
          planned_end_date == o.planned_end_date &&
          priority == o.priority &&
          status == o.status &&
          cycle_id == o.cycle_id &&
          components == o.components &&
          labels == o.labels &&
          fields == o.fields &&
          steps == o.steps
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [test_category, assignee, executed_by, planned_start_date, planned_end_date, priority, status, cycle_id, components, labels, fields, steps].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
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
        TricentisTmApi.const_get(type).build_from_hash(value)
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
    end  end
end