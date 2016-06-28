require 'rails_helper'

RSpec.shared_examples "a signed in user" do
  it "shows the user's email address" do
    expect(page).to have_content(user.email)
  end

  it "shows a Logout link" do
    expect(page).to have_link('Logout', href: logout_path)
  end

  it "shows a link to create a new post" do
    expect(page).to have_link 'New Post', href: new_user_post_path(user)
  end
end
