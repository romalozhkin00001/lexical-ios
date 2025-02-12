#
#  Be sure to run `pod spec lint Lexical.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "LexicalPlugins"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of Lexical."
  spec.homepage = 'https://github.com/facebook/lexical-ios'

  spec.license      = "MIT"
  spec.author             = "r.lozhkin"
  spec.platform     = :ios, "13.0"


  spec.source       = { :git => "git@github.com:romalozhkin00001/lexical-ios.git" }

  spec.source_files  = "Plugins/**/*.swift"

  spec.dependency "Lexical"

end
