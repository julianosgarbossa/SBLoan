#
# Be sure to run `pod lib lint SBLoan.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SBLoan'
  s.version          = '1.1.0'
  s.summary          = 'Módulo utilizado no aplicativo SwiftBank para funcionalidade de Emprestimos'
  s.description      = 'SBLoan é uma biblioteca que permite o usuario acessar sua carteira de cretido disponivel'
  s.swift_version    = '4.0'
  s.homepage         = 'https://github.com/julianosgarbossa/SBLoan'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Juliano Sgarbossa' => 'contato.julianosgarbossa@gmail.com' }
  s.source           = { :git => 'https://github.com/julianosgarbossa/SBLoan.git', :branch => 'main' }

  s.ios.deployment_target = '15.6'

  s.source_files = 'Classes/**/*'
  
  # s.resource_bundles = {
  #   'SBLoan' => ['SBLoan/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
