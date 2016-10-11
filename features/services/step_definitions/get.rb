Given(/^I sent valid data about a existent exame$/) do
  @response = Exam.new.get_exam(DEFAULT_DATA['exam_query']['query'])
end

Then(/^I should see at least one exame$/) do
  if @response.size > 0
    puts @response[0].to_json
  else
    fail "HTTP ERROR #{@response.code}#{@response}"
  end
end

Given(/^I sent an invalid data about a nonexistent exame$/) do
  @response = Exam.new.get_exam(DEFAULT_DATA['exam_query']['invalid_query'])
end
