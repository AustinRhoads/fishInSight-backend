#if Rails.env == "production"
#Rails.application.config.session_store :cookie_store, key: "_fishInSight-backend" #, domain: "*"
#may need to update domain key 
#else
   Rails.application.config.session_store :cookie_store, key: "_fishInSight-backend"
#end

#Rails.application.config.session_store :active_record_store, :key => '_fishInSight-backend_session'
