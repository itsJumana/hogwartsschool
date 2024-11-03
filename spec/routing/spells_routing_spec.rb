require "rails_helper"

RSpec.describe SpellsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/spells").to route_to("spells#index")
    end

    it "routes to #new" do
      expect(get: "/spells/new").to route_to("spells#new")
    end

    it "routes to #show" do
      expect(get: "/spells/1").to route_to("spells#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/spells/1/edit").to route_to("spells#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/spells").to route_to("spells#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/spells/1").to route_to("spells#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/spells/1").to route_to("spells#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/spells/1").to route_to("spells#destroy", id: "1")
    end
  end
end
