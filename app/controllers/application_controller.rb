require 'koala'
require 'twitter'

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  CLIENT_ID = '192478574514082'
  CLIENT_SECRET = 'f6a502571a9acf919d2baa1fe812acc0'
  ACCESS_TOKEN = 'EAACvDukPj6IBABsSISZCqNAYoWQzjVhVTqpuMZCJjWZC8S4BDPvqF8bfOlRuJ4libIEL3T5Sij8VbQnuPJZBROV0pRUj6wEOnSv9JKkmZAxkPPMhnRHcAae7EOZCZBkWcXgSUwMBHp4lZARKcf8z1hR4LFG1Tpk6w3oZD'
  def initialize
    super
    @graph = Koala::Facebook::API.new(ACCESS_TOKEN)
    @twitter_client = Twitter::REST::Client.new do |config|
      config.consumer_key        = '7z2BYFVHTQQIov2DR0stMV9oD'
      config.consumer_secret     = 'Ri0CrgAcQ2f2EE0yzsbpQqss1Dgrcye9h1IGIkyDpRsMZkmT2w'
      config.access_token        = '787001253163257856-XdmB6cfUykUlDuD7Tvk7qsAyGFhT8RT'
      config.access_token_secret = 'LMMvjEnXSdSRFLyfPdABDUkOQNa5OgAryTF1hYIeLCjkH'
    end
  end
end
