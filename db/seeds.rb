# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    Achievement.destroy_all
    Achievement.create( :username => 'james' )
            # pic_url: '/pic/jeffers',
            # title: 'Good Job',
            # message: 'That was a long one!',
            # points: 4,
            # time_ago: 32,
            # profile_url: '/profile/james',
            # url: '/achievements/66'
