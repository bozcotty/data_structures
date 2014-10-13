require 'test_helper'

feature 'Build an insertion sort algorithm' do
  scenario 'article is deleted/destroyed with click of delete link' do
    # given an existing article
    #Article.create(title: 'Can You Delete Me?', content: 'Probably so.')
    #visit articles_path
    sign_in(:editor)
    Article.create(title: 'What\'s Happening?', content: 'Is it raining outsdie!')

    # when I click the delete link
    visit articles_path
    page.find('tbody tr:last').click_on 'Destroy'

    # the article should be deleted/destroyed
    page.text.must_include 'Article was successfully destroyed'
    page.text.wont_include 'Happening?'
  end
end
