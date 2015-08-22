class PaymentDecorator < Draper::Decorator
  def method_missing(method, *args, &block)
    if Payment.month_columns.include?(method)
      object.send(method) || "not paid"
    else
      object.send(method, *args, &block)
    end
  end
end
