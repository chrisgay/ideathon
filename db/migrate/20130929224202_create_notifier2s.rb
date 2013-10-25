class CreateNotifier2s < ActiveRecord::Migration
  def change
    create_table :notifier2s do |t|
      t.string "to"
      t.string "from"
      t.string "subject"
      t.timestamps
    end
  end
end
