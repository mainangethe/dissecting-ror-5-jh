class PortfoliosController < ApplicationController

  before_action :set_portfolio_items, only: [:edit, :update, :show, :destroy]
  skip_before_action :verify_authenticity_token

  #call unique layout
  layout "portfolio"

  access  all: [:show, :index, :angular, :rails ], 
          user: {except: [:destroy, :new, :create, :update, :edit, :sort ]}, 
          site_admin: :all
  
	def index
		@portfolio_items = Portfolio.by_position
	end

  def sort
    params[:order].each do |key_order_id, value_hash|
      Portfolio.find(value_hash[:id]).update(position: value_hash[:position])
    end

    render nothing: true
  end

  def angular
    @angular_portfolios = Portfolio.angular
  end

  def rails
    @rails_portfolios = Portfolio.ruby_on_rails_portfolio_items
  end

	def new
		@portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
	end

	def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio is now live.' }
      else
        format.html { render :new }
      end

    end

  end

  def edit
  end

  def update
  	

  	respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Your Portoflio has been updated.' }  
      else
        format.html { render :edit }
      end

    end

  end

  def show
  end

  def destroy 	
  	@portfolio_item.destroy
  	respond_to do |format|
  		format.html { redirect_to portfolios_path, notice: 'Your portfolio has been removed'}
  	end
  end

  private

  def portfolio_params
    params.require( :portfolio ).permit(  :title, 
                                          :subtitle, 
                                          :body, 
                                          :main_image,
                                          :thumb_image,
                                          technologies_attributes: [:name] 
                                        )
  end

  def set_portfolio_items
    @portfolio_item = Portfolio.find(params[:id])
  end


end
