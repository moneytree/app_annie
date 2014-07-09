# AppAnnie

[![Build Status](https://travis-ci.org/modeset/app_annie.png)](https://travis-ci.org/modeset/app_annie)
[![Gem Version](https://badge.fury.io/rb/app_annie.png)](http://badge.fury.io/rb/app_annie)

Simple Ruby wrapper for [App Annie's](http://www.appannie.com/) [analytics API](http://support.appannie.com/categories/20082753-Analytics-API)

## Installation

Add this line to your application's Gemfile:

    gem 'app_annie', :git => 'git@github.com:moneytree-doug/app_annie.git'

And then execute:

    $ bundle install

## Usage

First, set your AppAnnie API key. You can do this via the `APPANNIE_API_KEY` environment variable, or by setting `AppAnnie.api_key`

Example,

	@rawResponse = AppAnnie::App.new({ 
		'account_id' => @account_id,
		'app_id' => @app_id 
	}).sales({
		'break_down' => "dates",
		'start_date' => "2014-1-1",
		'end_date' => "2014-6-1"
	})

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
