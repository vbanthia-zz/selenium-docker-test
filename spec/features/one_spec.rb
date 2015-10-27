RSpec.describe 'feature-one' do

  context 'google.com' do

    before(:each) { $driver.navigate.to 'http://www.google.com' }

    let!(:title) { "Google" }

    it "has title" do
      sleep $intentional_wait if $intentional_wait

      expect($driver.title).to eq(title)
    end

  end
end
