class DashboardController < ApplicationController

    def index
        @cakedealers = CakeDealer.all

        @totalInventory = Inventory.all

        

    end
end
