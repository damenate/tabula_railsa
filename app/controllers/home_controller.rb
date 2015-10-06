class HomeController < ApplicationController

  def form
    if request.post?
      MeLiky.create!(name: params[:name], chocolate: params[:chocolate],
      rainbows: params[:rainbows], puppies: [:puppies],
      cold_hard_cash: params[:cold_hard_cash])
    end
  end

  def new
    @me_likies = MeLiky.new.all
  end

  def private

    def me_liky_params
      params.require(:me_likies).permit(:name, :chocolate, :rainbows,
       :puppies, :cold_hard_cash)
    end

end
