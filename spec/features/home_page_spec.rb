# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Home', type: :feature do
  context 'when you visit the index page' do
    it 'displays a name' do
      visit root_path
      expect(page).to have_content 'Jim Smith'
    end
  end
end
