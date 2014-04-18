require 'v8'

module EmberI18n
  module Helper
    def self.output_locale(locale, translations = nil)
      locale_str = locale.to_s

      # load default translations
      translations ||= YAML::load(File.open("#{Rails.root}/config/locales/client.#{locale_str}.yml"))

      result = "I18n.translations = #{translations.to_json};\n"
      result << "I18n.locale = '#{locale_str}';\n"
      result << File.read("#{gempath}/lib/javascripts/moment.js")
      result << moment_locale(locale_str)
      result
    end

    def self.moment_locale(locale_str)
      filename = gempath + "/lib/javascripts/moment_locale/#{locale_str}.js"
      if File.exists?(filename)
        File.read(filename) << "\n"
      end || ""
    end
    
    def self.gempath
      File.expand_path(File.join(File.dirname(__FILE__), '../../'))
    end
  end
end
