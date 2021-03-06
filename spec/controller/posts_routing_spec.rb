require 'rails_helper'

RSpec.describe TodosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
     expect(:get => "/todos").to route_to("todos#index")
   end

   it "routes to #create" do
     expect(:post => "/todos").to route_to("todos#create")
   end

  #  it "destroys the requested todo" do
  #    expect(:delete => "/todos/1").to route_to("todos#destroy")
  #  end
 end
end
