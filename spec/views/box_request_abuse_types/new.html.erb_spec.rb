require 'rails_helper'

RSpec.describe "box_request_abuse_types/new", type: :view do
  before(:each) do
    @box_request_abuse_type = create(:box_request_abuse_type)
  end

  it "renders new box_request_abuse_type form" do
    render

    assert_select "form[action=?][method=?]", box_request_abuse_type_path(@box_request_abuse_type), "post" do

      assert_select "select[name=?]", "box_request_abuse_type[box_request_id]"

      assert_select "select[name=?]", "box_request_abuse_type[abuse_type_id]"
    end
  end
end
