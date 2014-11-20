require 'spec_helper'

describe 'A user visiting the site', js: true do
  it 'sees a lists of todos' do
    todo = create(:todo, title: 'Do your laundry')

    visit '/'

    expect(page).to have_content todo.title
  end
end
