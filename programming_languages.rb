require 'pry'

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

def reformat_languages(languages)
  # your code here
  # Make a method finding object oriented languages + functional languages
  # add :style key = oo or functional
  hash = {}
  languagesArray =[]
  languages.each do |key,typesData|
    typesData.each do |title, info|
      if hash[title]
        hash[title][:style].push(key)
      else
        hash[title] = info
        hash[title][:style] = []
        hash[title][:style].push(key)
      end
      # binding.pry
    end
  end
  # binding.pry
  hash
end

# languagesArray = reformat_languages(languages)
