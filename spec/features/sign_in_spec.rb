
RSpec.feature "User signs in" do

  let!(:user){ User.create(email: "test@test.com", username: "test_user",
                name: "Testy Man", password: "passw0rd")}

  scenario "after sign up" do
    sign_in
    expect(page).to have_content "Welcome #{user.name.split(' ')[0]}"
  end

end
