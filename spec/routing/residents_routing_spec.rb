# == Schema Information
# Schema version: 20160202150722
#
# Table name: residents
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  multiplier :integer          default(2), not null
#  unit_id    :integer
#  bill_costs :integer          default(0), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_residents_on_name     (name) UNIQUE
#  index_residents_on_unit_id  (unit_id)
#
# Foreign Keys
#
#  fk_rails_8ddf6a82d6  (unit_id => units.id)
#

require "rails_helper"

RSpec.describe ResidentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/residents").to route_to("residents#index")
    end

    it "routes to #new" do
      expect(:get => "/residents/new").to route_to("residents#new")
    end

    it "routes to #show" do
      expect(:get => "/residents/1").to route_to("residents#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/residents/1/edit").to route_to("residents#edit", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/residents/1").to route_to("residents#destroy", :id => "1")
    end

  end
end
