class HomeController < ApplicationController

  def form
    @me_liky = MeLiky.new
  end

  def new
    @me_likies = MeLiky.new.all
  end

  def create
    if request.post?
    @me_liky = MeLiky.create!(name: params[:name], chocolate: params[:chocolate],
      rainbows: params[:rainbows], puppies: [:puppies],
      cold_hard_cash: params[:cold_hard_cash])
      redirect_to home_create_path
    end
  end
  private def me_liky_params

    def me_liky_params
      params.require(:me_liky).permit(:name, :chocolate, :rainbows,
       :puppies, :cold_hard_cash)
    end
  end
end
