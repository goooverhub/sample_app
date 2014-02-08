# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file).chomp
    File.read(token_file).chomp
  else
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end
SampleApp::Application.config.secret_key_base = 'debfb1517d3b684d340c5b7e8b067e82c593c7fed7843f9e62db43c6abf48b94d7cb130f37cc86a039e4623b1382fa239b37e578116809c79838ea97b04ca291'
