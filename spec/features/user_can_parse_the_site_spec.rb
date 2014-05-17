require 'spec_helper'

feature 'User can parse the site' do
  scenario 'without cookie' do
    FactoryGirl.create(:site)

    visit '/sales/new'

    select 'http://www.ukr.net', from: 'sale_site'

    click_button 'Create Sale'

    page.should have_text 'Sale action was successfully created'
  end
end
