require 'rails_helper'

describe "the add a list process" do
  it "adds a new list" do
    visit posts_path
    click_link 'New Post'
    fill_in 'post[author]', :with => 'Brian'
    fill_in 'post[content]', :with => 'Brian'
    click_on 'Create Post'
    expect(page).to have_content 'Brian'
  end

  it "gives error when no name is entered" do
    visit new_post_path
    click_on 'Create Post'
    expect(page).to have_content 'errors'
  end
end
