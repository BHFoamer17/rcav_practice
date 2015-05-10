class CalculationsController < ApplicationController
  def instructions
  end

  def sqrt
    @number = params["num"]
    @number1 = Math.sqrt(params["num"].to_i)
    @square_root = @number1.round(2)
  end

  def pmt

  @apr = params[:annual_percentage_rate].to_f
  @years = params[:number_of_years].to_i
  @principal = params[:principal_value].to_f


  apr_decimal = @apr/100/12
  months = @years*-12
  num = apr_decimal*@principal
  den = 1-((1+apr_decimal)**months)

  @monthly_payment = num/den


  end


end
