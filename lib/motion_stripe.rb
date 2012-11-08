require "motion_stripe/version"

Motion::Project::App.setup do |app|
  Dir.glob(File.join(File.dirname(__FILE__), 'motion_stripe/*.rb')).each do |file|
    app.files.unshift(file)
  end
  stripe_vendor = File.expand_path(File.join(File.dirname(__FILE__), '../vendor/stripe-ios'))
  app.vendor_project(stripe_vendor, :static, :headers_dir => 'src')
end

module Stripe
  
end

require 'motion_stripe/stripe'