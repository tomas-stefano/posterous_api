# Posterous API

Posterous API is a extraction from Reblog application (that is not ready in production, but will be =] )

## Install

    gem install posterous_api

## Require

    require 'posterous_api'

## Using

```ruby
    user = Posterous::User.new('my_user@email.com', 'my_password')
```

## Getting the blogs from the user

    user.blogs #  => return all blogs from posterous for this user

## Get posts from a blog

    users.posts_from :blog => 'site_id'

## Getting tags from a blog

    user.tags_from :blog => 'site_id'

# Creating a Post

    user.create_post_for :blog => '123456', :title => 'My title', :body => 'Body'