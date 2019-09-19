#
# Be sure to run `pod lib lint RFTangram.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RFTangram'
  s.version          = '0.0.1'
  s.summary          = 'a alibaba framework demo'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/DuRofei/RFTangram'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'DuRofei' => '982799080@qq.com' }
  s.source           = { :git => 'https://github.com/DuRofei/RFTangram.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.resource  = 'RFTangram/Classes/RFTangram/Resources/*.{plist,out}'
  s.source_files = 'RFTangram/Classes/RFTangram/**/*.{h,m}'
  
  s.dependency 'SDWebImage', '~> 5.1.1'
  
  s.subspec 'RFVirtualView' do |ss|
    ss.source_files = 'RFTangram/Classes/RFVirtualView/**/*'
    ss.dependency 'SDWebImage', '~> 5.1.1'
    ss.public_header_files = 'RFTangram/Classes/RFVirtualView/**/*.h'
    ss.subspec 'RFTMUtils' do |sss|
      sss.source_files = 'RFTangram/Classes/RFTMUtils/**/*'
#      sss.public_header_files = 'RFTangram/Classes/RFVirtualView/RFTMUtils/**/*.h'
    end
  end
  
  s.subspec 'RFLazyScrollView' do |ss|
    ss.source_files = 'RFTangram/Classes/RFLazyScrollView/**/*'
    ss.dependency 'SDWebImage', '~> 5.1.1'
#    ss.public_header_files = 'RFTangram/Classes/RFLazyScrollView/*.h'
    ss.subspec 'RFTMUtils' do |sss|
      sss.source_files = 'RFTangram/Classes/RFTMUtils/**/*'
#      sss.public_header_files = 'RFTangram/Classes/RFLazyScrollView/RFTMUtils/**/*.h'
    end
  end

  

  # s.resource_bundles = {
  #   'RFTangram' => ['RFTangram/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
