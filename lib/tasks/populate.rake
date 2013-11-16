namespace :db do
    desc "Create actvity records in the database."
    require 'faker'
    task :populate => :environment do
      truncate_all
      seed_activities
      seed_achievements
    end
    def truncate_all
      [Activity, Achievement].each(&:delete_all)
    end
    def seed_activities
      100.times do

        u = Activity.new(
            :desc => Faker::Name.first_name
        )
        u.save!

      end
    end
    def seed_achievements
      100.times do
        obj = Achievement.new do |o|
          o.comments_count = Faker::Number.digit
          o.message = Faker::Lorem.sentence(1)
          o.points = Faker::Number.digit
          o.time_ago = Faker::Number.digit
          o.title = Faker::Company.catch_phrase
          o.username  = Faker::Internet.user_name
        end


        obj.save

      end
    end
end