## README

```ruby
class User < ActiveRecord::Base
  has_secure_password
  has_many :photos
  has_many :messages
  has_many :comments

  has_many :commented_messages, through: :comments, 
    source: :commentable, source_type: 'Message'

  has_many :commented_photos, through: :comments, 
    source: :commentable, source_type: 'Photo'

end

class Photo < ActiveRecord::Base
  belongs_to :user
  has_many :comments, as: :commentable
end

class Message < ActiveRecord::Base
  belongs_to :user
  has_many :comments, as: :commentable
end

class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :commentable, polymorphic: true
end


```

