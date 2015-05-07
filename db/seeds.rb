[Member, Discussion, Comment, Category].each do |model|
  model.delete_all
end

def create_member(opts = {})
  attributes = opts.reverse_merge(
    password: '12345678'
  )
  Member.create!(attributes)
end

create_member(
  first_name: 'Stephen',
  last_name: 'Van Dahm',
  handle: 'Stephen',
  email: 'stephen@example.com',
  role: :admin
)

create_member(
  first_name: 'Chris',
  last_name: 'Nelson',
  handle: 'Fomps D. Nelson',
  email: 'chris@example.com',
  role: :admin
)

create_member(
  first_name: 'PJ',
  last_name: 'Jabhouse',
  handle: 'PJ Jabhouse',
  email: 'pj@example.com',
  role: :dude
)

create_member(
  first_name: 'Peppermint',
  last_name: 'Patty',
  handle: 'Patty',
  email: 'patty@example.com',
  role: :member
)

create_member(
  first_name: 'Stranger',
  last_name: 'Danger',
  handle: 'StrangeGuy',
  email: 'stranger@example.com',
  role: :applicant
)

# Categories
[
  'General',
  'Announcements',
  'Shamless Self Promotion',
  'Art, Literature, and Entertainment',
  'Best of the Forums',
  'Big Steer',
  'Category 5 Fouls',
  'Computing',
  'Dungeons and Dragons',
  'Food and Drink',
  'Fucking Horrifying',
  'Hi-larious',
  'Kids and Parenting',
  'Language',
  'Math, Science, and Medicine',
  'Politics and Governance',
  'Puzzles',
  'Sports'
].each do |category_name|
  Category.create(name: category_name)
end
