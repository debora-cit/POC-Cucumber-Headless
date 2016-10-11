Given(/^I sent valid data about a nonexistent exame$/) do
  @response = Exam.new.post_exam(nil, DEFAULT_DATA['exam_post']['code'], DEFAULT_DATA['exam_post']['name'], DEFAULT_DATA['exam_post']['tag'])
  @id = @response["_id"]
end

Then(/^I should get success$/) do
  fail "HTTP ERROR #{@response.code}#{@response}" unless @response.success?
end

Given(/^I sent the same data$/) do
  @response = Exam.new.post_exam(@id, DEFAULT_DATA['exam_post']['code'], DEFAULT_DATA['exam_post']['name'], DEFAULT_DATA['exam_post']['tag'])
end

Then(/^I should get fail$/) do
  fail "HTTP ERROR #{@response.code}#{@response}" unless !(@response.success?)
end

Given(/^I sent an empty list about a nonexistent exame$/) do
  @response = Exam.new.post_exam(nil, nil, nil, nil)
end

Then(/^I should get every null fields$/) do
  expect(@response["code"]).to eq(nil)
  expect(@response["name"]).to eq(nil)
  expect(@response["tag"]).to eq(nil)
end
