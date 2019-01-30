
require 'faker'


#Creation User
10.times do |index|
    user = User.create(name: Faker::Science.element)
end

#Creation Link
10.times do |index|
    link = Link.create(url: Faker::University.name)
    link.user=User.first
   link.save
end


#Creation Comment
10.times do |index|
    comment = Comment.create(commment: Faker::Shakespeare.hamlet_quote)
    comment.user=User.first
    comment.link=Link.first
    comment.save
end


#Creation Subcomment
10.times do |index|
    subcomment = Subcomment.create(subcomment: Faker::Shakespeare.hamlet_quote)
    subcomment.user=User.first
    subcomment.comment=Comment.first
    subcomment.save
end
