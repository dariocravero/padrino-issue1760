Sequel.migration do
  up do
    create_table :children do
      primary_key :id
      String :name
      foreign_key :parent_id, :parents
    end
  end

  down do
    drop_table :children
  end
end
