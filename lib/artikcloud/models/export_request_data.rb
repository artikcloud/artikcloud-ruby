=begin
#ARTIK Cloud API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module ArtikCloud
  # Export Request Data.
  class ExportRequestData
    # Add header to csv format
    attr_accessor :csv_headers

    # Timestamp of latest message (in milliseconds since epoch).
    attr_accessor :end_date

    # Returned Export ID that should be used to check status and get the export result.
    attr_accessor :export_id

    # Format of the export.
    attr_accessor :format

    # Ascending or descending sort order.
    attr_accessor :order

    # Source Device IDs being searched for messages (Comma-separated for multiple Device IDs).
    attr_accessor :sdids

    # Source Device Type IDs being searched for messages (Comma-separated for multiple Device Type IDs).
    attr_accessor :sdtids

    # Timestamp of earliest message (in milliseconds since epoch).
    attr_accessor :start_date

    # Trial ID being searched for messages.
    attr_accessor :trial_id

    # Owner's user IDs being searched for messages (Comma-separated for multiple User IDs).
    attr_accessor :uids

    # URL added to successful email message.
    attr_accessor :url


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'csv_headers' => :'csvHeaders',
        :'end_date' => :'endDate',
        :'export_id' => :'exportId',
        :'format' => :'format',
        :'order' => :'order',
        :'sdids' => :'sdids',
        :'sdtids' => :'sdtids',
        :'start_date' => :'startDate',
        :'trial_id' => :'trialId',
        :'uids' => :'uids',
        :'url' => :'url'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'csv_headers' => :'BOOLEAN',
        :'end_date' => :'Integer',
        :'export_id' => :'String',
        :'format' => :'String',
        :'order' => :'String',
        :'sdids' => :'String',
        :'sdtids' => :'String',
        :'start_date' => :'Integer',
        :'trial_id' => :'String',
        :'uids' => :'String',
        :'url' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'csvHeaders')
        self.csv_headers = attributes[:'csvHeaders']
      end

      if attributes.has_key?(:'endDate')
        self.end_date = attributes[:'endDate']
      end

      if attributes.has_key?(:'exportId')
        self.export_id = attributes[:'exportId']
      end

      if attributes.has_key?(:'format')
        self.format = attributes[:'format']
      end

      if attributes.has_key?(:'order')
        self.order = attributes[:'order']
      end

      if attributes.has_key?(:'sdids')
        self.sdids = attributes[:'sdids']
      end

      if attributes.has_key?(:'sdtids')
        self.sdtids = attributes[:'sdtids']
      end

      if attributes.has_key?(:'startDate')
        self.start_date = attributes[:'startDate']
      end

      if attributes.has_key?(:'trialId')
        self.trial_id = attributes[:'trialId']
      end

      if attributes.has_key?(:'uids')
        self.uids = attributes[:'uids']
      end

      if attributes.has_key?(:'url')
        self.url = attributes[:'url']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          csv_headers == o.csv_headers &&
          end_date == o.end_date &&
          export_id == o.export_id &&
          format == o.format &&
          order == o.order &&
          sdids == o.sdids &&
          sdtids == o.sdtids &&
          start_date == o.start_date &&
          trial_id == o.trial_id &&
          uids == o.uids &&
          url == o.url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [csv_headers, end_date, export_id, format, order, sdids, sdtids, start_date, trial_id, uids, url].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
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
      when :BOOLEAN
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
        temp_model = ArtikCloud.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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
        value.compact.map{ |v| _to_hash(v) }
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