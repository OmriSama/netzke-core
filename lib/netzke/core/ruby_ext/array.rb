class Array
  def netzke_deep_map(&block)
    map { |el| el.respond_to?(:netzke_deep_map) ? yield(el.netzke_deep_map(&block)) : yield(el) }.compact
  end

  def netzke_deep_replace(&block)
    map do |el|
      res = yield(el)
      if res == el
        el.respond_to?(:netzke_deep_replace) ? el.netzke_deep_replace(&block) : el
        # el.respond_to?(:netzke_deep_replace) ? block.call(el.netzke_deep_replace(&block)) : block.call(el)
      else
        res
      end
    end.compact
  end

  def netzke_jsonify
    map { |el| el.is_a?(Array) || el.is_a?(Hash) ? el.netzke_jsonify : el }
  end
end
