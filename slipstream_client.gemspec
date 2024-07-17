# -*- encoding: utf-8 -*-

=begin
#Practice -> Cloud API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0
Contact: Nexus@HenryScheinOne.co.nz
Generated by: https://openapi-generator.tech
Generator version: 7.4.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "slipstream_client/version"

Gem::Specification.new do |s|
  s.name        = "slipstream_client"
  s.version     = SlipstreamClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["OpenAPI-Generator"]
  s.email       = ["Nexus@HenryScheinOne.co.nz"]
  s.homepage    = "https://openapi-generator.tech"
  s.summary     = "Practice -> Cloud API Ruby Gem"
  s.description = "No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)"
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.7"
  s.metadata    = {}

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
