require 'json';

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNSafePadding"
  s.version      = package['version']
  s.summary      = package['description']
  s.homepage     = "https://github.com/sharingapples/widgets"
  s.license      = package['license']
  s.author       = { "Ranjan Shrestha" => "ranjan@sharingapples.com" }
  s.source       = { :git => "https://github.com/sharingapples/widgets.git", :tag => "master" }
  s.source_files = "packages/SafePadding/ios/**/*.{h,m}"

  s.dependency "React"
end

