# == Schema Information
# Schema version: 20160210160946
#
# Table name: reconciliations
#
#  id         :integer          not null, primary key
#  date       :date             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Reconciliation < ApplicationRecord
  has_many :meals, dependent: :nullify

  before_create :set_date
  after_commit :update_meals, on: :create

  def set_date
    self.date = Time.now
  end

  # Add reconciliation_id to meals without a
  # reconciliation_id that have at least one
  # bill associated with them
  def update_meals
    Meal.unreconciled.joins(:bills).update_all(reconciliation_id: id)
  end
end
