class SimsHistoryController < ApplicationController
  before_action :set_sim_historys, only: [:index]
  def index
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sim_historys
      @sim = Sim.find(params[:sim_id])
      @sims_historys = @sim.versions
    end
end
