#
#  Be sure to run `pod spec lint Monza.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name                 = "Monza"
  spec.version              = "0.0.2"
  spec.summary              = "This a test of Design System iCarros"
  spec.description          = "Monza is a Design System of iCarros, my first pod."
  spec.homepage             = "https://github.com/alethadeu/Monza"
  spec.license              = "MIT"
  spec.author               = { "alethadeu" => "alexandre.thadeu@icarros.com.br" }
  spec.platform             = :ios, "11.0"
  spec.source               = { :git => "https://github.com/alethadeu/Monza.git", :tag => "#{spec.version}" }
  spec.source_files         = "Monza/**/*.{swift}"
  spec.swift_version        = '4.2'

end
