Pod::Spec.new do |s|
  s.name = 'SwiftGRPC'
  s.version = '0.4.0'
  s.license  = 'New BSD'
  s.summary = 'Swift gRPC code generator plugin and runtime library'
  s.homepage = 'https://github.com/slavabulgakov/TestSpecs'
  s.authors  = { 'The gRPC contributors' => 'grpc-packages@google.com' }
  s.source = { :git => 'https://github.com/grpc/grpc-swift.git', :tag => s.version }

  s.platform     = :ios, '9.0'
  s.requires_arc = true
  s.swift_version = '4.1'
  #s.ios.deployment_target = '8.0'
  #s.osx.deployment_target = '10.9'
  #s.tvos.deployment_target = '9.0'
  #s.watchos.deployment_target = '2.0'

  s.source_files = 'Sources/SwiftGRPC/*.swift', 'Sources/SwiftGRPC/**/*.swift', 'Sources/CgRPC/shim/*.[ch]'
  s.public_header_files = 'Sources/CgRPC/shim/cgrpc.h'

  s.dependency 'gRPC-Core', '~> 1.11.0-pre2'
  s.dependency 'BoringSSL', '~> 10.0'
  s.dependency 'SwiftProtobuf', '~> 1.0.3'
end