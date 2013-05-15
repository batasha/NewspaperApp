class SubscriptionPlansController < ApplicationController

  def new
    id = params[:newspaper_id]
    @subscription_plan = SubscriptionPlan.new(newspaper_id: id)
  end

  def create
    @subscription_plan = SubscriptionPlan.new(params[:subscription_plan])

    if @subscription_plan.save
      redirect_to @subscription_plan.newspaper
    else
      render 'new'
    end
  end

  def show
    @subscription_plan = SubscriptionPlan.find(params[:id])
  end
end