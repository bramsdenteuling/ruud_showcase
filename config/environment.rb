require 'yaml' 
YAML::ENGINE.yamler= 'syck'

# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
RuudShowcase::Application.initialize!
FlickRaw.api_key = '7478850d12326df4a10e2da661ae61e7'
FlickRaw.shared_secret = '6506d4d206cfe397'
