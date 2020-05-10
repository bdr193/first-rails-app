class PagesController < ApplicationController
  def about

  end

  def homepage

  end

  def contact
    @members = ["Sam", "Bob", "Adam", "Rob"]
    if params[:member]
      @members= @members.select {|member| member.starts_with?(params[:member].capitalize) }
    end
  end
end
