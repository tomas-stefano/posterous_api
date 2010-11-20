
module FakerResponse
  def blogs_response
    { 
      "rsp" => {       
        "site" => [ 
          { "id" => "2165389", "name" => "testandoreblog's posterous" }
        ] }
     }
  end
  
  def mock_sites(user)
    HTTParty.should_receive(:get).with(user.get_all_sites_uri, 
        :basic_auth => { :username => user.email, :password => user.password
          }).and_return('response')
  end
  
  def mock_posts(user, blog_id)
    HTTParty.should_receive(:get).with(user.read_posts_uri, 
        :basic_auth => { :username => user.email, :password => user.password},
        :site_id => blog_id
    ).and_return('response')
  end
  
  def mock_tags(user, blog_id)
    HTTParty.should_receive(:get).with(user.get_tags_uri, 
        :basic_auth => { :username => user.email, :password => user.password},
        :site_id => blog_id
    ).and_return('response')      
  end
  
  def mock_create_post(user, options)
    blog = options[:blog]
    options.delete(:blog)
    HTTParty.should_receive(:post).with(user.new_post_uri, 
        {:basic_auth => { :username => user.email, :password => user.password},
        :site_id => blog,
        :title => nil,
        :body => nil }.merge(options)
    ).and_return('response')    
  end
  
end