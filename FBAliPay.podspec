#
#  Be sure to run `pod spec lint FBAliPay.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name             = 'FBAliPay'
  s.version          = '1.0.1'
  s.summary          = 'FBAliPay 是 AlipaySDK 的帮助类库。' 

  s.description      = <<-DESC
  FBAliPay 是 AlipaySDK 的帮助类库。它从 AlipaySDK 官方 Demo 中提取除 AlipaySDK.framework 和 AlipaySDK.bundle 之外的文件。
                       DESC

  s.homepage          = "https://github.com/robin2005/AliPaySDK"      #项目主页，不是git地址 
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "AliPay" => "http://www.alipay.com/" } 

  s.platform     = :ios, "8.0" 
  s.source       = { :git => "https://github.com/robin2005/FBAliPay.git", :tag => "#{s.version}" }  
  s.frameworks = "Foundation", "UIKit", "SystemConfiguration", "CoreTelephony", "QuartzCore", "CoreText", "CoreGraphics", "CFNetwork", "CoreMotion"
  s.libraries  =  'z','c++'   
  s.requires_arc = true
  s.vendored_frameworks = 'SDK/AlipaySDK.framework','SDK/openssl.framework'
  s.resources = 'SDK/AlipaySDK.bundle'    

end
