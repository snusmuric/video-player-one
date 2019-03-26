
  Pod::Spec.new do |s|
    s.name = 'IrontecCapacitorVideoPlayer'
    s.version = '0.0.4-3'
    s.summary = 'Irontec Capacitor Video Player Plugin'
    s.license = 'MIT'
    s.homepage = 'https://github.com/irontec/capacitor-video-player.git'
    s.author = 'Jean Pierre Quéau'
    s.source = { :git => 'https://github.com/irontec/capacitor-video-player.git', :tag => s.version.to_s }
    s.source_files = 'ios/Plugin/Plugin/**/*.{swift,h,m,c,cc,mm,cpp}'
    s.ios.deployment_target  = '11.0'
    s.swift_version = '4.2'
    s.dependency 'Capacitor'
  end
