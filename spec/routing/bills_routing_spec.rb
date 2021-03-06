# == Schema Information
# Schema version: 20160301173036
#
# Table name: bills
#
#  id              :integer          not null, primary key
#  meal_id         :integer
#  resident_id     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  amount_cents    :integer          default(0), not null
#  amount_currency :string           default("USD"), not null
#
# Indexes
#
#  index_bills_on_meal_id      (meal_id)
#  index_bills_on_resident_id  (resident_id)
#
# Foreign Keys
#
#  fk_rails_a4b9083e79  (meal_id => meals.id)
#  fk_rails_d7e3fd1337  (resident_id => residents.id)
#

require "rails_helper"

RSpec.describe BillsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bills").to route_to("bills#index")
    end

    it "routes to #new" do
      expect(:get => "/bills/new").to route_to("bills#new")
    end

    it "routes to #edit" do
      expect(:get => "/bills/1/edit").to route_to("bills#edit", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bills/1").to route_to("bills#destroy", :id => "1")
    end

  end
end
