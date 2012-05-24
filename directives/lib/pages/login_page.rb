class LoginPage < Page
  path '/'

  field  'username', '#username'
  field  'password', '#password'

  button 'login',    '#login'
end
