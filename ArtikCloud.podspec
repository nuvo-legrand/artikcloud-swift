Pod::Spec.new do |s|
  s.name = 'ArtikCloud'
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.version = '0.0.1'
  s.source = { :git => 'git@github.com:swagger-api/swagger-mustache.git', :tag => 'v1.0.0' }
  s.license = 'Apache License, Version 2.0'
  s.source_files = 'ArtikCloud/Classes/Swaggers/**/*.swift'
  s.dependency 'PromiseKit', '~> 3.2.1'
  s.dependency 'Alamofire', '~> 3.1.4'
  s.authors = { 'Maneesh Sahu' => 'maneesh.sahu@ssi.samsung.com' }
  s.homepage = 'https://github.com/artikcloud/artikcloud-swift'
  s.summary = 'This SDK helps you connect your iOS, OS X, tvOS, and watchOS applications to ARTIK Cloud.'
end