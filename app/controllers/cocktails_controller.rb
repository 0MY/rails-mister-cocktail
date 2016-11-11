class CocktailsController < ApplicationController
  before_action :find_cocktail, only: [:show, :edit, :update, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    # Si l'écriture en base réussi on affiche le coktail créé
    if @cocktail.save
      redirect_to @cocktail # = cocktail_path(@cocktail)
    # sinon on revient à la vue de saisie des informations
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @cocktail.update(cocktail_params)
      redirect_to cocktail_path(@cocktail)
    else
      # le render fait tourner les validations
      # et affichera les messages d'erreur correspondants
      # avant de revenir sur la page de l'edit (méthode edit()
      # pour redemander les infos via le formulaire)
      render :edit
    end
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def find_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end

