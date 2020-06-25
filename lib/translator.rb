require 'pry'
require 'yaml'

def load_library(file_path)
file = File.read(file_path)
  emoticons = YAML.load(file)
  end
 # binding.pry
  new_hash
end

def get_japanese_emoticon(file_path, emoticon)
  emoticon = load_libray(file_path)
  emoji = emoticon.values.find {|faces| faces[0] == emoticon}
  emoji == nil ? "Sorry, that emoticon was not found" : emoji[1]
end

def get_english_meaning

end