Pod::Spec.new do |s|
  s.name = "GraphiteClient"
  s.version = "0.1.0"
  s.summary = "Lightweight Swift framework for feeding data into Graphite and statsD"
  s.license = "MIT"
  s.authors = { 'Hive of coders from Avito' => 'avito.ru' }
  s.homepage = s.homepage = 'https://github.com/weichsel/ZIPFoundation'
  s.source = { :git => 'https://github.com/avito-tech/GraphiteClient.git', :tag => s.version }
  s.swift_version = '4.2'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.source_files = 'Sources/GraphiteClient/**/*.swift'
  s.dependency 'IO'
end
