=begin
#TTM for Jira

#Tricentis Test Management for Jira

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'date'
require 'time'

module TricentisTmApi
  class V1ProjectsProjectKeyTestRunsPost200ResponseInner
    attr_accessor :id

    attr_accessor :key

    attr_accessor :created

    attr_accessor :updated

    attr_accessor :created_by

    attr_accessor :updated_by

    attr_accessor :cycle

    attr_accessor :steps

    attr_accessor :test_case_key

    attr_accessor :precondition

    attr_accessor :status

    attr_accessor :name

    attr_accessor :description

    attr_accessor :priority

    attr_accessor :test_category

    attr_accessor :test_type

    attr_accessor :assignee

    attr_accessor :executed_by

    attr_accessor :planned_start_date

    attr_accessor :planned_end_date

    attr_accessor :automation

    attr_accessor :components

    attr_accessor :labels

    attr_accessor :cycle_name

    attr_accessor :folder_path

    attr_accessor :fields

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
        :'id' => :'id',
        :'key' => :'key',
        :'created' => :'created',
        :'updated' => :'updated',
        :'created_by' => :'createdBy',
        :'updated_by' => :'updatedBy',
        :'cycle' => :'cycle',
        :'steps' => :'steps',
        :'test_case_key' => :'testCaseKey',
        :'precondition' => :'precondition',
        :'status' => :'status',
        :'name' => :'name',
        :'description' => :'description',
        :'priority' => :'priority',
        :'test_category' => :'testCategory',
        :'test_type' => :'testType',
        :'assignee' => :'assignee',
        :'executed_by' => :'executedBy',
        :'planned_start_date' => :'plannedStartDate',
        :'planned_end_date' => :'plannedEndDate',
        :'automation' => :'automation',
        :'components' => :'components',
        :'labels' => :'labels',
        :'cycle_name' => :'cycleName',
        :'folder_path' => :'folderPath',
        :'fields' => :'fields'
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
        :'key' => :'String',
        :'created' => :'Time',
        :'updated' => :'Time',
        :'created_by' => :'String',
        :'updated_by' => :'String',
        :'cycle' => :'V1ProjectsProjectKeyCyclesPost200ResponseInner',
        :'steps' => :'Array<V1ProjectsProjectKeyTestRunsPost200ResponseInnerStepsInner>',
        :'test_case_key' => :'String',
        :'precondition' => :'String',
        :'status' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'priority' => :'String',
        :'test_category' => :'String',
        :'test_type' => :'String',
        :'assignee' => :'String',
        :'executed_by' => :'String',
        :'planned_start_date' => :'Time',
        :'planned_end_date' => :'Time',
        :'automation' => :'V1ProjectsProjectKeyTestRunsPostRequestTestRunsInnerAutomation',
        :'components' => :'Array<String>',
        :'labels' => :'Array<String>',
        :'cycle_name' => :'String',
        :'folder_path' => :'String',
        :'fields' => :'Array<V1ProjectsProjectKeyCyclesPostRequestInnerFieldsInner>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'key',
        :'created',
        :'updated',
        :'created_by',
        :'updated_by',
        :'steps',
        :'precondition',
        :'name',
        :'description',
        :'priority',
        :'test_category',
        :'assignee',
        :'executed_by',
        :'planned_start_date',
        :'planned_end_date',
        :'components',
        :'labels',
        :'cycle_name',
        :'folder_path',
        :'fields'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `TricentisTmApi::V1ProjectsProjectKeyTestRunsPost200ResponseInner` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TricentisTmApi::V1ProjectsProjectKeyTestRunsPost200ResponseInner`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'key')
        self.key = attributes[:'key']
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'updated')
        self.updated = attributes[:'updated']
      end

      if attributes.key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.key?(:'updated_by')
        self.updated_by = attributes[:'updated_by']
      end

      if attributes.key?(:'cycle')
        self.cycle = attributes[:'cycle']
      end

      if attributes.key?(:'steps')
        if (value = attributes[:'steps']).is_a?(Array)
          self.steps = value
        end
      end

      if attributes.key?(:'test_case_key')
        self.test_case_key = attributes[:'test_case_key']
      else
        self.test_case_key = nil
      end

      if attributes.key?(:'precondition')
        self.precondition = attributes[:'precondition']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.key?(:'test_category')
        self.test_category = attributes[:'test_category']
      end

      if attributes.key?(:'test_type')
        self.test_type = attributes[:'test_type']
      else
        self.test_type = nil
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

      if attributes.key?(:'automation')
        self.automation = attributes[:'automation']
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

      if attributes.key?(:'cycle_name')
        self.cycle_name = attributes[:'cycle_name']
      end

      if attributes.key?(:'folder_path')
        self.folder_path = attributes[:'folder_path']
      end

      if attributes.key?(:'fields')
        if (value = attributes[:'fields']).is_a?(Array)
          self.fields = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @test_case_key.nil?
        invalid_properties.push('invalid value for "test_case_key", test_case_key cannot be nil.')
      end

      if @test_case_key.to_s.length < 1
        invalid_properties.push('invalid value for "test_case_key", the character length must be great than or equal to 1.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @status.to_s.length < 1
        invalid_properties.push('invalid value for "status", the character length must be great than or equal to 1.')
      end

      if @test_type.nil?
        invalid_properties.push('invalid value for "test_type", test_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @test_case_key.nil?
      return false if @test_case_key.to_s.length < 1
      return false if @status.nil?
      return false if @status.to_s.length < 1
      return false if @test_type.nil?
      test_type_validator = EnumAttributeValidator.new('String', ["Manual", "Automated"])
      return false unless test_type_validator.valid?(@test_type)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] test_case_key Value to be assigned
    def test_case_key=(test_case_key)
      if test_case_key.nil?
        fail ArgumentError, 'test_case_key cannot be nil'
      end

      if test_case_key.to_s.length < 1
        fail ArgumentError, 'invalid value for "test_case_key", the character length must be great than or equal to 1.'
      end

      @test_case_key = test_case_key
    end

    # Custom attribute writer method with validation
    # @param [Object] status Value to be assigned
    def status=(status)
      if status.nil?
        fail ArgumentError, 'status cannot be nil'
      end

      if status.to_s.length < 1
        fail ArgumentError, 'invalid value for "status", the character length must be great than or equal to 1.'
      end

      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] test_type Object to be assigned
    def test_type=(test_type)
      validator = EnumAttributeValidator.new('String', ["Manual", "Automated"])
      unless validator.valid?(test_type)
        fail ArgumentError, "invalid value for \"test_type\", must be one of #{validator.allowable_values}."
      end
      @test_type = test_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          key == o.key &&
          created == o.created &&
          updated == o.updated &&
          created_by == o.created_by &&
          updated_by == o.updated_by &&
          cycle == o.cycle &&
          steps == o.steps &&
          test_case_key == o.test_case_key &&
          precondition == o.precondition &&
          status == o.status &&
          name == o.name &&
          description == o.description &&
          priority == o.priority &&
          test_category == o.test_category &&
          test_type == o.test_type &&
          assignee == o.assignee &&
          executed_by == o.executed_by &&
          planned_start_date == o.planned_start_date &&
          planned_end_date == o.planned_end_date &&
          automation == o.automation &&
          components == o.components &&
          labels == o.labels &&
          cycle_name == o.cycle_name &&
          folder_path == o.folder_path &&
          fields == o.fields
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, key, created, updated, created_by, updated_by, cycle, steps, test_case_key, precondition, status, name, description, priority, test_category, test_type, assignee, executed_by, planned_start_date, planned_end_date, automation, components, labels, cycle_name, folder_path, fields].hash
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
        klass = TricentisTmApi.const_get(type)
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
