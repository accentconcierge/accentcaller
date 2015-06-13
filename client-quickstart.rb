require 'rubygems'
require 'sinatra'
require 'twilio-ruby'
 
get '/' do
    # Find these values at twilio.com/user/account
    account_sid = 'ACe78296c2dba8b2780d117a780efff674'
    auth_token = '89be11c7bebc5c63e644bac1f6ce380b'
    # This application sid will play a Welcome Message.
    demo_app_sid = 'APabe7650f654fc34655fc81ae71caa3ff'
    capability = Twilio::Util::Capability.new account_sid, auth_token
    capability.allow_client_outgoing demo_app_sid
    token = capability.generate
    erb :index, :locals => {:token => token}
end