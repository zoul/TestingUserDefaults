Pod::Spec.new do |s|
  s.name         = "CCTestingUserDefaults"
  s.version      = "0.1.2"
  s.summary      = "A small mock of NSUserDefaults for testing"
  s.homepage     = "https://github.com/zoul/TestingUserDefaults"
  s.license      = "MIT"
  s.author       = { "Tomáš Znamenáček" => "tomas.znamenacek@gmail.com", "Hugo Tunius" => "hugo.tunius@gmail.com" }
  s.source       = { :git => "https://github.com/zoul/TestingUserDefaults.git", :tag => "0.1.2" }
  s.source_files = "Classes/*.{h,m}"
  s.frameworks   = "Foundation" 
  s.requires_arc = true
end
