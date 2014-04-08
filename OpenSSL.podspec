Pod::Spec.new do |s|
  s.name         = "OpenSSL"
  s.version      = "1.0.1"
  s.summary      = "OpenSSL is an SSL/TLS and Crypto toolkit. Deprecated in Mac OS and gone in iOS, this spec gives your project non-deprecated OpenSSL support."
  s.author       = "OpenSSL Project <openssl-dev@openssl.org>"
  
  s.homepage     = "http://www.openssl.org/"
  s.license      = 'BSD-style Open Source'
  s.source       = { :git => "https://github.com/endSly/OpenSSL-pod.git", :tag => s.version.to_s }
  s.requires_arc = false

  s.source_files = "include/**/*.h", "build_command.sh"
  s.vendored_libraries    = "lib/*.a"
  s.prepare_command = "sh build-libssl.sh"

end
