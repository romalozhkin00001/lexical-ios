require 'erb'

package = {name: "LexicalListHTMLSupport", dependencies: ["Lexical", "LexicalListPlugin", "LexicalHTML"]}
[
  {name: "LexicalListPlugin", dependencies: ["Lexical"]},
  {name: "LexicalListHTMLSupport", dependencies: ["Lexical", "LexicalListPlugin", "LexicalHTML"]},
  {name: "LexicalHTML", dependencies: ["Lexical", "SwiftSoup"]},
  {name: "LexicalLinkPlugin", dependencies: ["Lexical"]},
  {name: "LexicalInlineImagePlugin", dependencies: ["Lexical"]}
].each do |package| 

template = ERB.new <<-EOF
  Pod::Spec.new do |spec|
    spec.name         = "<%= package[:name] %>"
    spec.version      = "0.0.1"
    spec.summary      = "A short description of Lexical."
    spec.homepage = 'https://github.com/facebook/lexical-ios'
  
    spec.license      = "MIT"
    spec.author             = "r.lozhkin"
    spec.platform     = :ios, "13.0"
  
  
    spec.source       = { :git => "git@github.com:romalozhkin00001/lexical-ios.git" , :branch => "release0.1"}
  
    spec.source_files  = "Plugins//<%= package[:name] %>/<%= package[:name] %>/**/*.swift"
  
    <% package[:dependencies].each do |dependency| %>spec.dependency "<%= dependency %>"
    <% end %>
  end
EOF

File.write("#{package[:name]}.podspec", template.result(binding))
end 