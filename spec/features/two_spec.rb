RSpec.describe 'feature-one' do

  context 'docker.com' do

    before(:each) { $driver.navigate.to 'http://www.docker.com' }

    let!(:title) { "Docker - Build, Ship, and Run Any App, Anywhere" }

    it "has title" do
      sleep $intentional_wait if $intentional_wait

      expect($driver.title).to eq(title)
    end

  end
end
