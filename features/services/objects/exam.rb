
class Exam
  include HTTParty

  base_uri ENVIRONMENT['dasa']
  headers 'Content-Type' => 'application/json', 'Accept' => 'application/json'

  def post_exam(id=nil, code=nil, name=nil, tag=nil)
    createbody = {"_id": id, "code": code, "name": name, "tag": tag }.to_json
    response = self.class.post("/exame",
    {
      :body => createbody
    })
    return response
  end

  def get_exam(query=nil)
    response = self.class.get("/exame/q?q=#{query}")
    return response
  end

  def delete_exam(id=nil)
    response = self.class.delete("/exame/#{id}")
    return response
  end
end
