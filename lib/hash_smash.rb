require "hash_smash/version"

module HashSmash
  def smash(hsh = self, keys = [], result = {})
    hsh.inject(result) do |result, (key, value)|
      if value.is_a?(Hash)
        smash(value, Array[*keys, key], result)
      else
        result[Array[*keys, key].join('.')] = value
        result
      end
    end
  end

  def smash!
    smash(self)
  end
end

Hash.send(:include, HashSmash)
