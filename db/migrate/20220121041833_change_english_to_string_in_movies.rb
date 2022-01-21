class ChangeEnglishToStringInMovies < ActiveRecord::Migration[7.0]
  def change
    change_column :movies, :english, :string
  end
end
