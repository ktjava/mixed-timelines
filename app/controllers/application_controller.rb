require 'koala'

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  CLIENT_ID = '192478574514082'
  CLIENT_SECRET = 'f6a502571a9acf919d2baa1fe812acc0'
  ACCESS_TOKEN = 'EAACvDukPj6IBABsSISZCqNAYoWQzjVhVTqpuMZCJjWZC8S4BDPvqF8bfOlRuJ4libIEL3T5Sij8VbQnuPJZBROV0pRUj6wEOnSv9JKkmZAxkPPMhnRHcAae7EOZCZBkWcXgSUwMBHp4lZARKcf8z1hR4LFG1Tpk6w3oZD'
  def initialize
    super
    @graph = Koala::Facebook::API.new(ACCESS_TOKEN)
  end
end
