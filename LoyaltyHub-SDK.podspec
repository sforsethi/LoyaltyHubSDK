#
#  Be sure to run `pod spec lint LoyaltyHub.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '12.0'
s.name = "LoyaltyHub-SDK"
s.summary = "LoyaltyHub lets a user integrate Unifynd's Loyalty Features in their app."
s.requires_arc = true

# 2
s.version = "0.1.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Raghav Sethi" => "rsraghavsethi@gmail.com" }

# 5 - Replace this URL with your own GitHub page's URL (from the address bar)
s.homepage = "https://github.com/sforsethi/LoyaltyHubSDK"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/sforsethi/LoyaltyHubSDK.git",
             :tag => "#{s.version}" }

# 7
s.framework = "UIKit"
s.dependency 'Alamofire', '~> 5.1'

# 8
s.source_files = "LoyaltyHub-SDK/**/*.{swift}"

# 9
s.resources = "LoyaltyHub-SDK/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"

# 10
s.swift_version = "5.5.1"

end

