# Omniauth::Fidbacks

A Fidbacks OAuth2 strategy for OmniAuth.

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-fidbacks'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-fidbacks

## Usage

Register your application with Fidbacks to receive an API key: https://partner.fidbacks.com/

This is an example that you might put into a Rails initializer at `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :fidbacks, ENV['FIDBACKS_KEY'], ENV['FIDBACKS_SECRET']
end
```
You can now access the OmniAuth Fidbacks OAuth2 URL: `/auth/fidbacks`.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
