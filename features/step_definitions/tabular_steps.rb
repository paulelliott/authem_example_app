Then /^I should see the following table:$/ do |table|
  max_width = table.raw.first.size + 1
  table_content = page.all('table thead,tr').map do |row|
    row.all('td,th').map(&:text).first(max_width).map(&:strip)
  end

  table.diff! Cucumber::Ast::Table.new(table_content)
end
