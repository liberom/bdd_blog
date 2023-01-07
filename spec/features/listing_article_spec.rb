require "rails_helper"

RSpec.feature "Listing articles" do
  # Create 2 articles to display
  # List 2 articles
  # expect both articles titles and bodies to be present

  before do
    @article1 = Article.create(title: "The first article", body: "Lorem ipsum dolar sit amet.")
    @article2 = Article.create(title: "The second article", body: "Lorem ipsum dolar sit amet, consectetur.")
  end

  scenario "A user lists all articles" do
    visit "/"

    expect(page).to have_content(@article1.title)
    expect(page).to have_content(@article1.body)
    expect(page).to have_content(@article2.title)
    expect(page).to have_content(@article2.body)
    expect(page).to have_link(@article1.title)
    expect(page).to have_link(@article2.title)

  end
end