class AddTreeToBirds < ActiveRecord::Migration[6.1]
  def change
    add_reference :birds, :tree, null: false, foreign_key: true
  end
end
