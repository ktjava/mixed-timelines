class TimelineController < ApplicationController
  def show
    @timelines = []
    @graph.get_connections("me", "?fields=posts.limit(30)")["posts"]["data"].each do |facebook_post|
      @timelines.push({"id"=>facebook_post["id"],"created_time"=>DateTime.parse(facebook_post["created_time"]),"message"=>facebook_post["message"]})
    end
    @twitter_client.home_timeline.each do |tweet|
      @timelines.push({"id"=>tweet.id,"created_time"=>DateTime.parse(tweet.created_at.to_s),"message"=>tweet.full_text})
    end
    @timelines.sort!{|a,b| b["created_time"]<=>a["created_time"]}
  end
end