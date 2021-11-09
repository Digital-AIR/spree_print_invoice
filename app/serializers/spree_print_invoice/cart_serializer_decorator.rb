module SpreePrintInvoice
  module CartSerializerDecorator
    def self.prepended(base)
      base.has_many :bookkeeping_documents
    end
  end
end
	
Spree::V2::Storefront::CartSerializer.prepend(SpreePrintInvoice::CartSerializerDecorator)