Gem::Specification.new do |s|
  s.name = 'sdksio-verizon-apis-sdk'
  s.version = '1.7.0'
  s.summary = 'Use the Verizon API for connectivity management, device diagnostics, device location, edge discovery service, edge performance, software management and much more.'
  s.description = 'Use the Verizon API for connectivity management, device diagnostics, device location, edge discovery service, edge performance, software management and much more.'
  s.authors = ['developer-sdksio']
  s.email = ['developer+sdksio@apimatic.io']
  s.homepage = 'https://www.verizon.com/business/5g-edge-portal'
  s.licenses = ['MIT']
  s.metadata  = {
}

  s.add_dependency('apimatic_core_interfaces', '~> 0.2.1')
  s.add_dependency('apimatic_core', '~> 0.3.9')
  s.add_dependency('apimatic_faraday_client_adapter', '~> 0.1.4')
  s.required_ruby_version = ['>= 2.6']
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
