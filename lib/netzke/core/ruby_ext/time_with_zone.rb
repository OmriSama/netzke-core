module ActiveSupport
  class TimeWithZone
    def to_json(_options = {})
      to_s(:db).to_json
    end
  end
end
