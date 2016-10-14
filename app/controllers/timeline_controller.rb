class TimelineController < ApplicationController
  def show
    @timelines = @graph.get_connections("me", "?fields=posts.limit(30)")
  end
end
