
User.delete_all

names = ['Marth', 'Alm', 'Celica', 'Sigurd', 'Leaf', 'Roy', 'Eliwood', 'Eirika', 'Ephraim', 'Ike']
names.each do |name|
  user = User.new
  user.name  = name
  user.email = "#{name}@example.com"
  user.password              = "password"
  user.password_confirmation = "password"
  user.save!
end
