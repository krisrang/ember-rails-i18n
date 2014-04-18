# EmberRailsI18n

Use Rails I18n translations in the frontend and in Ember.
99% of the code comes from and belongs to [Discourse](http://www.discourse.org/), I simply cut it down a bit and stuck it in a gem.

## Installation

Add this line to your application's Gemfile:

    gem 'ember-rails-i18n'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ember-rails-i18n

## Add translations

Example for english:

Add translations meant for the frontend in config/locales/client.en.yml:
    
    en:
      key: "Key contents"
      interpolated_key: "This is %{someValue}"
      count_key: "There are %{count} apples"

Create a file in app/assets/javascripts/locales/en.js.erb with these lines:
    
    //= depend_on 'client.en.yml'
    //= require locales/i18n
    <%= EmberRailsI18n.output_locale(:en) %>

Add this line to your layout:
    
    <%= javascript_include_tag "locales/en" %>
    
Or to your application.js:
    
    //= locales/en
    
## Using in the frontend

Get translations in plain javascript using:
    
    I18n.t('key')
    > "Key contents"
    
Or use included Ember Handlebars helpers:
    
    {{i18n key}}
    {{boundI18n interpolated_key someValueBinging=boundProperty}}
    {{countI18n count_key count=propertyUsedForCountChangeTrackingAndCountValue}}

## Contributing

1. Fork it ( http://github.com/krisrang/ember-rails-i18n/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
