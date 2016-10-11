Given(/^I sent this id to delete this exame$/) do
  @response = Exam.new.delete_exam(@id)
end

Given(/^I sent an invalid id to delete this exame$/) do
  @response = Exam.new.delete_exam(DEFAULT_DATA['exam_delete']['invalid_id'])
end
