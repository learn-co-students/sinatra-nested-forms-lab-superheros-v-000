describe App do

  describe 'GET /' do
    before do
      get '/'
    end

    it 'sends a 200 status code' do
      expect(last_response.status).to eq(200)
    end

    it 'renders super hero form' do
      expect(last_response.body).to include("Create a Team and Heroes!")
      expect(last_response.body).to include("<form")
    end
  end

  describe 'POST /teams' do
    it 'submits the form' do
      visit '/'
      fill_in("team[name]", :with => "Team Ruby")
      fill_in("team[motto]", :with => "We love Ruby!")
      fill_in("hero_name_1", :with => "Amanda")
      fill_in("hero_power_1", :with => "Ruby")
      fill_in("hero_bio_1", :with => "I love Ruby!")
      fill_in("hero_name_2", :with => "Arel")
      fill_in("hero_power_2", :with => "JavaScript")
      fill_in("hero_bio_2", :with => "I love JavaScript!")
      fill_in("hero_name_3", :with => "Katie")
      fill_in("hero_power_3", :with => "Sinatra")
      fill_in("hero_bio_3", :with => "I love Sinatra!")
      click_button 'submit'

      expect(page).to have_text("Team Ruby")
      expect(page).to have_text("Team Motto: We love Ruby!")
      expect(page).to have_text("Hero Name: Amanda")
      expect(page).to have_text("Hero Power: Ruby")
      expect(page).to have_text("Hero Biography: I love Ruby!")
      expect(page).to have_text("Hero Name: Arel")
      expect(page).to have_text("Hero Power: JavaScript")
      expect(page).to have_text("Hero Biography: I love JavaScript!")
      expect(page).to have_text("Hero Name: Katie")
      expect(page).to have_text("Hero Power: Sinatra")
      expect(page).to have_text("Hero Biography: I love Sinatra!")
    end
  end

end
