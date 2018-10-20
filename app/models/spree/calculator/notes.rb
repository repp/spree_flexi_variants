require_dependency 'spree/calculator'

module Spree
  class Calculator::Notes < Calculator

    def self.description
      "Notes Calculator"
    end

    def self.register
      super
      ProductCustomizationType.register_calculator(self)
    end

    def create_options
      # This calculator knows that it needs one CustomizableOption named inscription
      [
       CustomizableProductOption.create(name: "notes", presentation: "Notes")
      ]
    end

    def compute(product_customization, variant=nil)
      return 0
    end

    def valid_configuration?(product_customization)
      true
    end
  end
end
