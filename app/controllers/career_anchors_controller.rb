class CareerAnchorsController < ApplicationController

  def index
    @career_anchor = CareerAnchor.all.order(created_at: :desc)
  end

  def new
    @career_anchor = CareerAnchor.new
  end

  def create 
    @career_anchor = CareerAnchor.new(career_anchor_params)
    if @career_anchor.save
      redirect_to career_anchors_path
    else
      render :new
    end
  end

  def show
    @career_anchor = CareerAnchor.find(params[:id])
  end

  def destroy
    @career_anchor = CareerAnchor.find(params[:id])
    @career_anchor.destroy
  end

  def edit
    @career_anchor = CareerAnchor.find(params[:id])
  end

  def update
    if @career_anchor = CareerAnchor.find(params[:id])
       @career_anchor.update(career_anchor_params)
       redirect_to career_anchors_path
    else
      render :edit
    end
  end

  private
  def career_anchor_params
    params.require(:career_anchor).permit(
      :question_1, :question_2, :question_3, :question_4, :question_5, :question_6, :question_7, :question_8, :question_9, :question_10,
      :question_11, :question_12, :question_13, :question_14, :question_15, :question_16, :question_17, :question_18, :question_19, :question_20,
      :question_21, :question_22, :question_23, :question_24, :question_25, :question_26, :question_27, :question_28, :question_29, :question_30,
      :question_31, :question_32, :question_33, :question_34, :question_35, :question_36, :question_37, :question_38, :question_39, :question_40
      ).merge(user_id: current_user.id)
  end
end
