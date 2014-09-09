Sequel.migration do
  up do
    create_table :parents do
      primary_key :id
      String :email
    end
  end

  down do
    drop_table :parents
  end
end
