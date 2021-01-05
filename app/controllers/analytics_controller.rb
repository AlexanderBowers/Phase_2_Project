class AnalyticsController < ApplicationController
    def show
        @analytic = Analytic.find(params[:id])
    end
end
