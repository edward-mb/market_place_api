require "test_helper"

class PlacementTest < ActiveSupport::TestCase
  setup do
    @placement = placements(:one)
  end

  test "decreases the product quantity by placement quantity" do
    # rubocop:disable Lint/UselessAssignment
    product = @placement.product
    # rubocop:enable Lint/UselessAssignment

    assert_difference("product.quantity", -@placement.quantity) do
      @placement.decrement_product_quantity!
    end
  end
end
