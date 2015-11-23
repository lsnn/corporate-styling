# Corporate Styling

This gem can include any fonts and colors to easily implement the same corporate styling across your web app.
It comes with Bootstrap-sass (https://github.com/twbs/bootstrap-sass) and FontAwesome (https://github.com/bokmann/font-awesome-rails).

## Pre Installation

### Fonts:
Include all fonts needed for the corporate style to be implemented in the app/assets/fonts folder.
Include a .eot, .svg, .ttf and .woff file.

Include the fonts in corporate-webfonts.css.scss, according to the example.

### Colors:
Then add all colors you want available in your webapp (see examples in corporate-colors.css.scss).
Overwrite bootstrap classes in corporate-styles.css.scss.

## Build the gem

gem build corporate-styling.gemspec

## Install the gem in your app

Add this line to your application's Gemfile:

    gem 'corporate-styling'

!Make sure your application.css is renamed to application.css.scss!

Add these lines to your application.css.scss :

    *= require corporate-styling
    @import "corporate-colors";

and to any other css.scss files that use variables from this gem, add:

    @import "corporate-colors";

Add this line to your application.js (above *= require_tree):

    //= require corporate-styling

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install corporate-styling

## Usage

These colors can be used:

    $black
    $white

Fonts (use as html/css class):

    .heavy


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
