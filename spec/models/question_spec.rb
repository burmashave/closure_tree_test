require 'rails_helper'
require 'closure_tree/test/matcher'

RSpec.describe Question, type: :model do

	it { is_expected.to be_a_closure_tree.ordered }

	context "Deterministic ordering" do

		before :each do
			@root = Question.create!
			@q2, @q3, @q4, @q5 = 4.times.map { Question.create! }
			@root.append_child(@q3)
			@root.append_child(@q4)
			@root.append_child(@q5)
			@root.append_child(@q2) #append_child should place @q2 last in the children array
			@root.reload
		end

		it "appends children in order" do
			expect(@root.children).to eq [@q3, @q4, @q5, @q2]
		end

		it "identifies earlier siblings" do
			expect(@q2.siblings_before).to eq [@q3, @q4, @q5]
		end

	end

end
