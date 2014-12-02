Pod::Spec.new do |s|
s.name             = "NSManagedObject-HYPURI"
s.version          = "0.2"
s.summary          = "A convenience method to get a NSManagedObject URI"
s.description      = <<-DESC
* A convenience method to get a NSManagedObject URI
* Super easy to use!
DESC
s.homepage         = "https://github.com/hyperoslo/NSManagedObject-HYPURI"
s.license          = 'MIT'
s.author           = { "Hyper AS" => "teknologi@hyper.no" }
s.source           = { :git => "https://github.com/hyperoslo/NSManagedObject-HYPURI.git", :tag => s.version.to_s }
s.social_media_url = 'https://twitter.com/hyperoslo'

s.platform     = :ios, '7.0'
s.requires_arc = true

s.source_files = 'Source/**/*'

s.frameworks = 'CoreData'
end
