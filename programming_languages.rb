def reformat_languages(languages)
  new_hash = {}
  languages.each do |style_char, language|
    #puts style_char
    language.each do |type, language_type|
      language_type.each do |attribute, value|
        if new_hash[type].nil?
          new_hash[type] = {}
        end
        new_hash[type][:style] ||= []
        new_hash[type][:style] << style_char
      #new_hash[type] = language_type
      #{style: style_char}
      if new_hash[type][attribute].nil?
          new_hash[type][attribute] = value
        end
     end
    end
  end
  return new_hash
end
