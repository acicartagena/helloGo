Pod::Spec.new do |spec|
  spec.name             = 'Service'
  spec.platform         = :ios
  spec.version          = '1.0'
  spec.summary          = 'Service'
  spec.description      = 'Service'
  spec.homepage         = 'https://google.com'
  spec.author           = { :name => 'Test', :email => 'test@asdfa.xyz' }
  spec.source           = { :git => "https://github.com/acicartagena/hello-blog.git", :tag => spec.version }
  spec.platform     = :ios, '14.0'
  spec.requires_arc = true

  spec.swift_version = '5'
  spec.source_files = 'Source/**/*.swift'
  spec.exclude_files = 'Source/**/*Spec.swift'
  spec.resources = [
    'Source/**/*.{xcassets,storyboard,xib,strings,html,js}'
  ]

  spec.dependency 'Core'

  spec.test_spec 'Tests' do |test_spec|
    test_spec.source_files = 'Source/**/*Spec.swift', 'Tests/**/*.swift'
  end

end
