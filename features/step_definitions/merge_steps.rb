Given /^the following articles exist$/ do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |r|
    a = Article.new r
    a.id = r[:id]
    a.save
  end
end

Then /^the article "(.*?)" should have body "(.*?)"$/ do |title, body|
  Article.find_by_title(title).body.should eq body
end

