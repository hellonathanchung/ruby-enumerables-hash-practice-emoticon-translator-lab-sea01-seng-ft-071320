require 'pry'
require 'yaml'

def load_library(file_path)
 emoticons = YAML.load_file(file_path)
  new_hash = {}

  emoticons.each do |key,value|
    new_hash[key] = {}
    new_hash[key][:english] = value[0]
    new_hash[key][:japanese] = value[1]
  end
  new_hash
  
end

def get_japanese_emoticon(file_path, emoticon)
  emoticon = load_libray(file_path)
  emoji = emoticon.values.find {|faces| faces[0] == emoticon}
  emoji == nil ? "Sorry, that emoticon was not found" : emoji[1]
  binding.pry
end

def get_english_meaning

end