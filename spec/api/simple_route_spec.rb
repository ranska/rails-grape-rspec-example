require 'spec_helper'

describe ExampleAPI do
  describe "GET /api/v1/entries" do
    it "returns an empty array of entries" do
      Entry.create! title: "title 1", body: "body 1", score: 5 
      Entry.create! title: "title 2", body: "body 2", score: 12 
      Entry.create! title: "title 3", body: "body 3", score: 17 
      get "/api/v1/entries"
      response.status.should == 200
      JSON.parse(response.body).size.should == 3
    end
  end
  describe "GET /api/v1/entries/:id" do
    it "returns a entry by id" do
      pending
      entry = Entry.create!
      get "/api/v1/entries/#{entry.id}"
      response.body.should == entry.to_json
    end
  end
end

