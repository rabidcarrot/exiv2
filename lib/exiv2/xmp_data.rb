class Exiv2::XmpData
  def to_hash
    result = {}

    self.each do |key, value|
      if result[key]
        if result[key].is_a? Array
          result[key] << value
        else
          result[key] = [result[key], value]
        end
      else
        result[key] = value
      end
    end
    result
  end

  def inspect
    "#<Exiv2::XmpData: #{self.to_hash.inspect}>"
  end
end
