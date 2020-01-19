Pod::Spec.new do |spec|

  spec.name         = "YoziLib"
  spec.version      = "0.0.5"
  spec.summary      = "A CocoaPods library written in Swift"

  spec.description  = <<-DESC
This CocoaPods library is mega lazer gun.
                   DESC

  spec.homepage     = "https://github.com/YoziEnt/YoziLib"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Yozi.Ent" => "yozi.entertiment@gmail.com" }

  spec.ios.deployment_target = "11.0"
  spec.swift_version = "5.1"

  spec.source        = { :git => "https://github.com/YoziEnt/YoziLib.git", :tag => "#{spec.version}" }
  spec.source_files  = "Yozi.Lib/**/*.{h,m,swift}"

end
