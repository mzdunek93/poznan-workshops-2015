require 'spec_helper'

feature 'User checks student payments' do
  let!(:student) { create :student, first_name: 'Jan', last_name: 'Nowak' }
  let!(:payment) { create :payment, january: '2015-08-22', student: student }

  before do
    visit report_payments_path
  end

  scenario 'searching for existing student', js: true do
    fill_in 'Search', with: 'Jan'
    expect(page).to have_content '2015-08-22'
  end

  scenario 'searching for non-existing student', js: true do
    fill_in 'Search', with: 'Krzysztof'
    expect(page).to have_no_content '2015-08-22'
  end
end
