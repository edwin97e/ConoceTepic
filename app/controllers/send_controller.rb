class SendController < ApplicationController

  def create
    @events = Event.where("id > :find AND updated_at >= :date",
      {find: params[:find],date: params[:date]})

      respond_to do |format|
        format.json {render json: @events}
      end
  end
  

end