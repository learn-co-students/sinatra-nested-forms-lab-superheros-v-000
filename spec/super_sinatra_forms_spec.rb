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

  # describe 'POST /teams' do
  #   it 'submits the form' do
  #     visit '/'
  #     fill_in("team[name]", :with => "Team Ruby")
  #     fill_in("team[motto]", :with => "We love Ruby!")
  #     fill_in("hero[1][]", :with => "Amanda")
  #     fill_in("hero[1][]", :with => "Ruby")
  #     fill_in("hero[1][]", :with => "I love Ruby!")
  #     fill_in("hero[2][]", :with => "Arel")
  #     fill_in("hero[2][]", :with => "JavaScript")
  #     fill_in("hero[2][]", :with => "I love JavaScript!")
  #     fill_in("hero[3][]", :with => "Katie")
  #     fill_in("hero[3][]", :with => "Sinatra")
  #     fill_in("hero[3][]", :with => "I love Sinatra!")
  #     click_button 'submit'
  #
  #     expect(page).to have_text("Team Ruby")
  #     expect(page).to have_text("Team Motto: We love Ruby!")
  #     expect(page).to have_text("Hero Name: Amanda")
  #     expect(page).to have_text("Hero power: Ruby")
  #     expect(page).to have_text("Hero biography: I love Ruby!")
  #     expect(page).to have_text("Hero Name: Arel")
  #     expect(page).to have_text("Hero power: JavaScript")
  #     expect(page).to have_text("Hero biography: I love JavaScript!")
  #     expect(page).to have_text("Hero Name: Katie")
  #     expect(page).to have_text("Hero power: Sinatra")
  #     expect(page).to have_text("Hero biography: I love Sinatra!")
  #   end
  # end

end
