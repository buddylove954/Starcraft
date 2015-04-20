class AddPlayerToMatch < ActiveRecord::Migration
  def change
    add_reference :matches, :winner_faction, references: :players
    add_reference :matches, :loser_faction, references: :players
  end
end
