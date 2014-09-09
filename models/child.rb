class Child < Sequel::Model
  many_to_one :parent
end
