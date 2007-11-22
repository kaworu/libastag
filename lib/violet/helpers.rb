# violet/helpers.rb
#
#
# TODO
module Helpers
  require "rexml/document"

  # TODO
  class REXML::Attributes
    if defined? to_hash
      alias :to_hash_old :to_hash
    end

    def to_hash
      h = Hash.new
      self.each do |key,value|
        h[key] = value
      end
      h
    end
  end


  # taken from active_support/inflector.rb,
  # see http://rubyforge.org/projects/activesupport/
  #
  # Constantize tries to find a declared constant with the name specified
  # in the string. It raises a NameError when the name is not in CamelCase
  # or is not initialized.
  #     "Module".constantize #=> Module
  #     "Class".constantize #=> Class
  def Helpers.constantize(camel_cased_word)
    unless /\A(?:::)?([A-Z]\w*(?:::[A-Z]\w*)*)\z/ =~ camel_cased_word
      raise NameError.new("#{camel_cased_word.inspect} is not a valid constant name!")
    end

    Object.module_eval("::#{$1}", __FILE__, __LINE__)
  end

end
