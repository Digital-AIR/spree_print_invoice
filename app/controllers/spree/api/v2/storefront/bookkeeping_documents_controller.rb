module Spree
  module Api
    module V2
      module Storefront
        class BookkeepingDocumentsController < ::Spree::Api::V2::BaseController
          include Spree::Api::V2::CollectionOptionsHelpers
          before_action :require_spree_current_user

          #to show all invoices
          # def index
          #   bkd = BookkeepingDocument.all
          #   render_serialized_payload { {"data": bkd} }
          # end

          def show
            send_data BookkeepingDocument.find(params[:id]).pdf, type: 'application/pdf', disposition: 'inline'
          end

        end
      end
    end
  end
end