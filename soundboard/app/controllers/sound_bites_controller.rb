class SoundBitesController < ApplicationController
  before_action :set_sound_bite, only: [:show, :edit, :update, :destroy]

  def index
    @sound_bites = SoundBite.all
  end

  def show
    
  end

  def new
    @sound_bite = SoundBite.new
  end

  def edit
    @sound_bite = SoundBite.find(params[:id])
  end

  def create
    @sound_bite = SoundBite.new(sound_bite_params)

    respond_to do |format|
      if @sound_bite.save
        format.html { redirect_to @sound_bite, notice: 'Sound bite was created' }
        format.json { render :show, status: :created, location: @sound_bite }
      else
        format.html { render :new }
        format.json { render json: @sound_bite.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @sound_bite.update(sound_bite_params)
        format.html { redirect_to @sound_bite, notice: 'Sound bite was updated.' }
        format.json { render :show, status: :ok, location: @sound_bite }
      else
        format.html { render :edit }
        format.json { render json: @sound_bite.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @sound_bite.destroy
    respond_to do |format|
      format.html { redirect_to sound_bites_url, notice: 'Sound bite deleted.' }
      format.json { head :no_content }
    end
  end

  private
    def set_sound_bite
      @sound_bite = SoundBite.find(params[:id])
    end

    def sound_bite_params
      params.require(:sound_bite).permit(:title, :transcript, :length, :audiofile, :recording_date)
    end
end
