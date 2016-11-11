class DosesController < ApplicationController
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = @cocktail.doses.new(dose_params)

    if @dose.save
      # le flash affichera un bandeau vert et un message de succès.
      flash[:notice] = "Dose '#{@dose.description} #{@dose.ingredient.name}' for cocktail '#{@cocktail.name}' has been successfully created"
      redirect_to @cocktail
    else
      # le flash affichera un bandeau rouge et un message d'erreur.
      flash[:alert] = "Dose with '#{@dose.ingredient.name}' has not been created for cocktail '#{@cocktail.name}'. Check your inputs and try again."
      # le render fait tourner les validations
      # et affichera les messages d'erreur correspondants
      render 'cocktails/show'
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    flash[:notice] = "Dose '#{@dose.description} #{@dose.ingredient.name}' for current cocktail has been successfully deleted"
    redirect_to @dose.cocktail
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end

