#
# Be sure to run `pod lib lint UIBuilderKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UIBuilderKit'
  s.version          = '0.1.0'
  s.summary          = 'Builder for UIKit.'

  s.description      = <<-DESC
Implementation of Builder Pattern for UIKit.
                       DESC

  s.homepage         = 'https://github.com/jsryudev/UIBuilderKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jsryudev' => 'jsryu.dev@gmail.com' }
  s.source           = { :git => 'https://github.com/jsryudev/UIBuilderKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'

  s.source_files = 'Sources/UIBuilderKit/*'
  s.frameworks = 'UIKit'
end
