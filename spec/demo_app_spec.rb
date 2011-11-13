require 'spec_helper'

feature 'the message process' do
  it 'expose message' do
    visit '/'

    fill_in 'Message', :with => 'Hi!'

    click_button 'Message!'

    page.should have_content 'Sua mensagem foi "Hi!"'
  end
end
