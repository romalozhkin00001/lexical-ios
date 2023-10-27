  Pod::Spec.new do |spec|
    spec.name         = "LexicalLinkPlugin"
    spec.version      = "0.0.1"
    spec.summary      = "A short description of Lexical."
    spec.homepage = 'https://github.com/facebook/lexical-ios'
  
    spec.license      = "MIT"
    spec.author             = "r.lozhkin"
    spec.platform     = :ios, "13.0"
  
  
    spec.source       = { :git => "git@github.com:romalozhkin00001/lexical-ios.git" , :branch => "release0.1"}
  
    spec.source_files  = "Plugins/LexicalLinkPlugin/LexicalLinkPlugin/**/*.swift"
  
    spec.dependency "Lexical"
    
  end