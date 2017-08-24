#
# Be sure to run `pod lib lint SimpleRestClient.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SimpleRestClient'
  s.version          = '0.2.0'
  s.summary          = 'A simple HTTP client to process JSON responses from REST.'

  s.description      = 'This is a simple HTTP client framework to support REST requests and processing JSON responses.'

  s.homepage         = 'https://github.com/jneyer/SimpleRestClient'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jneyer' => 'jneyer@captechconsulting.com' }
  s.source           = { :git => 'https://github.com/jneyer/SimpleRestClient.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'SimpleRestClient/Classes/**/*'
  s.frameworks = 'Foundation'
  s.dependency 'PromiseKit'
  s.dependency 'Alamofire'
  s.dependency 'ObjectMapper'

  s.source_files = 'SimpleRestClient/Classes/*.{swift}'


  # s.resource_bundles = {
  #   'SimpleRestClient' => ['SimpleRestClient/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
