if Rails.env == "production"
Rails.application.config.session_store :cookie_store, key: "_fishinsight", domain: "*"
#may need to update domain key 
else
    Rails.application.config.session_store :cookie_store, key: "_fishinsight"
end