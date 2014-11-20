require 'spec_helper'

describe 'A user visiting the site', js: true do
  it 'sees a lists of todos' do
    todo = create(:todo, title: 'Do your laundry')

    visit '/'

    expect(page).to have_content todo.title
  end

  it 'can complete a todo', js: true do
    todo = create(:todo)

    visit '/'

    check 'completed'

    expect(page).to have_selector '.strikethrough'
  end
end
