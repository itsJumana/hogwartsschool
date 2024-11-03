require "rails_helper"

RSpec.describe WizardsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/wizards").to route_to("wizards#index")
    end

    it "routes to #new" do
      expect(get: "/wizards/new").to route_to("wizards#new")
    end

    it "routes to #show" do
      expect(get: "/wizards/1").to route_to("wizards#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/wizards/1/edit").to route_to("wizards#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/wizards").to route_to("wizards#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/wizards/1").to route_to("wizards#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/wizards/1").to route_to("wizards#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/wizards/1").to route_to("wizards#destroy", id: "1")
    end
  end
end
