
  Pod::Spec.new do |s|
    s.name = 'VideoPlayer'
    s.version = '0.0.1'
    s.summary = 'Irontec Video Player Plugin for Capacitor'
    s.license = { :type => 'MIT', :file => 'LICENSE.txt' }
    s.homepage = 'https://github.com/irontec/video-player.git'
    s.author = 'Jean Pierre Quéau'
    s.source = { :git => 'https://github.com/irontec/video-player.git', :tag => s.version.to_s }
    s.source_files = 'ios/Plugin/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
    s.ios.deployment_target  = '11.0'
    s.swift_version = '4.2'
    s.dependency 'Capacitor', '1.0.0-beta.19'
  end