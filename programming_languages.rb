def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each { |key1, value1|
    value1.each { |key2, value2|
      if new_hash[key2] == nil
        new_hash[key2] = value2
        new_hash[key2][:style] = [key1]
      else
        new_hash[key2][:style] << key1
      end
    }
  }
  return new_hash
end
