-
,mvtrclass ChangeDateTypeForMonth < ActiveRecord::Migration/
  def change

  	change_column :months, :month_range, :string

  end
end
