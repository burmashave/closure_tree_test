class Question < ActiveRecord::Base
	has_closure_tree order: 'sort_order'
end
