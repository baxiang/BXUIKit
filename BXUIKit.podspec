
Pod::Spec.new do |s|
  s.name             = 'BXUIKit'
  s.version="0.0.1"
  s.summary          = 'UIKit快速开发框架'
  s.description      = 'UIKit'
  s.homepage         = 'https://github.com/baxiang/BXUIKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'baxiang' => 'baxiang1989@163.com' }
  s.source           = { :git => 'https://github.com/baxiang/BXUIKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '7.0'
  s.source_files = 'BXUIKit/Classes/**/*'
  
 end
