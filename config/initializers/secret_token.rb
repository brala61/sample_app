# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
SampleApp::Application.config.secret_token = '49e1dd4799483a28c14d77c173ba21ebdf64b4f35aa4d6a89f5b02c49cf3503fc5a88f10d463fddb4f9db12832fafbac9307ce354cb5557746907db13b8e6792'


=begin
require 'securerandom'



def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

SampleApp::Application.config.secret_key_base = secure_token
=end


