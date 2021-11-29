class Cart

    def initialize(token:)
        @token = token
    end

    def order
        @order ||= Order.find_or_create_by(token: @token) do |order|
            order.order_total = 0
        end
    end

    def add_item(product_id:, quantity: 1)
        product = Product.find(product_id)

        order_item = order.items.find_or_initialize_by(
            product_id: product_id
        )
        order_item.normal_price = product.normal_price
        order_item.wholesale_price = product.wholesale_price
        order_item.quantity = quantity

        order_item.save
    end

end