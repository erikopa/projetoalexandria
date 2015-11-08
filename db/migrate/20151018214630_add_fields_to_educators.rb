class AddFieldsToEducators < ActiveRecord::Migration
  def change
    add_column :educators, :phone_number, :string
    add_column :educators, :cel_number, :string
    add_column :educators, :work_number, :string
    add_column :educators, :city_id, :integer
    add_column :educators, :neighborhood, :string
    add_column :educators, :birth_date, :date
    add_column :educators, :profession, :date
    add_column :educators, :id_school_level, :integer
    add_column :educators, :courses, :text
    add_column :educators, :voluntair, :text
    
    
    
    
  end
end
