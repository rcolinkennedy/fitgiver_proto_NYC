class AchievementController < ApplicationController
  def list
    @ach = Achievement.create!(title: 'my title2982') do | u |
      u.message="my message"
    end
    mytitle=@ach.title
    puts mytitle
    @achievements = Achievement.all
  end

end
