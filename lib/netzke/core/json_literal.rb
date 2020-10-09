# Carefully monkey-patch ActiveSupport's JSON encoder, so it *also* does what we need
class ActiveSupport::JSON::Encoding::JSONGemEncoder
  private

  def jsonify(value)
    case value
    when Netzke::Core::JsonLiteral
      value
    when String
      EscapedString.new(value)
    when Numeric, NilClass, TrueClass, FalseClass
      value
    when Hash
      Hash[value.map { |k, v| [jsonify(k), jsonify(v)] }]
    when Array
      value.map { |v| jsonify(v) }
    else
      jsonify value.as_json
    end
  end
end

class Netzke::Core::JsonLiteral < String
  #:nodoc:
  def as_json(_options = nil)
    self
  end

  #:nodoc:
  def to_json(_options = nil)
    self
  end

  #:nodoc:
  def encode_json(_encoder)
    self
  end
end
