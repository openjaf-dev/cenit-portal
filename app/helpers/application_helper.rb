module ApplicationHelper
  
  def generate_url(url, params = {})
     uri = URI(url)
     uri.query = params.to_query
     uri.to_s
  end

  def open_workspace(user)
    params = {
        dbname: user.email.split('@').first,
        login: user.email,
        name: user.email,
        password: 'admin',
        confirm_password: 'admin'
    }
    return generate_url("http://wwww.cenitodoo.com/saas_portal/signup", params)
  end
   
end
