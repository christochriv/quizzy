
user = User.new(
  :first_name => "Administrator",
  :last_name => "De Novastoria",
  :email => "admin@novastoria.fr",
  :password => '12345678',
  :admin => true
)

user.save!(:validate => false)





