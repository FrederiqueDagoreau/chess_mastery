require "rails_helper"

RSpec.describe ResultMotivesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/result_motives").to route_to("result_motives#index")
    end

    it "routes to #new" do
      expect(get: "/result_motives/new").to route_to("result_motives#new")
    end

    it "routes to #show" do
      expect(get: "/result_motives/1").to route_to("result_motives#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/result_motives/1/edit").to route_to("result_motives#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/result_motives").to route_to("result_motives#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/result_motives/1").to route_to("result_motives#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/result_motives/1").to route_to("result_motives#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/result_motives/1").to route_to("result_motives#destroy", id: "1")
    end
  end
end
