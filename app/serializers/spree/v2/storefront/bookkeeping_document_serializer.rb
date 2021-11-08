module Spree
  module V2
    module Storefront
      class BookkeepingDocumentSerializer < BaseSerializer
        set_type :bookkeeping_documents

        attributes :number, :template, :firstname, :lastname, :email, :total

      end
    end
  end
end