# class Achievement
#     attr_accessor :username, :pic_url, :title, :message, :points, :time_ago, :profile_url, :url, :comments_count

#     def initialize(username, pic_url, title, message, points, time_ago, profile_url, url, comments_count)
#         @username = username
#         @pic_url = pic_url
#         @title = title
#         @message = message
#         @points = points
#         @time_ago = time_ago
#         @profile_url = profile_url
#         @url = url
#         @comments_count = comments_count
#     end
# end

# class Donation
#     attr_accessor :username, :pic_url, :title, :message, :cause, :time_ago
#     def initialize(username, pic_url, title, message, points, time_ago)
#         @username = username
#         @pic_url = pic_url
#         @title = title
#         @message = message
#         @cause = cause
#         @time_ago = time_ago
#     end
# end


class HomeController < ApplicationController
  def index
    @feed_entries = Achievement.all
    #@feed_entries = []
    #@feed_entries.push(Achievement.new('James', "james_pic", 'This is your activity', 'And you know what? You worked hard', 100, 32, 'profile_url_value', 'entry_url_value', 3))
    #@feed_entries.push(Donation.new('Adam', 'adam_pic', "You have reached...", 'You worked hard', 100, 32, 'profile_url_value', 'entry_url_value'))
    #@feed_entries.push(Achievement.new('James', "james_pic", 'Monies to spend on this...', 'You worked hard', 100, 32, 'profile_url_value', 'entry_url_value', 5))
  end
end
