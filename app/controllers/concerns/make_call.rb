require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'
 
# put your own credentials here - from twilio.com/user/account
account_sid = 'ACe78296c2dba8b2780d117a780efff674'
auth_token = '89be11c7bebc5c63e644bac1f6ce380b'
 
# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token
 
@call = @client.account.calls.create(
  :from => '+16785852669',   # From your Twilio number
  :to => '+16154842917',     # To any number
  # Fetch instructions from this URL when the call connects
  :url => 'http://twimlets.com/holdmusic?Bucket=com.twilio.music.ambient'
)