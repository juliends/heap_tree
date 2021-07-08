class ProgramModule < ApplicationRecord
  has_closure_tree order: 'position', numeric_order: true, dependent: :destroy
end
