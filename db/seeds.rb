Member.delete_all

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
  email: 'stephen@example.com'
)

create_member(
  first_name: 'Chris',
  last_name: 'Nelson',
  handle: 'Fomps D. Nelson',
  email: 'chris@example.com'
)
