package fr.formation.ENTITY;

import java.io.Serializable;

public class CocktailIngredient implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Cocktail cocktail;
	private Integer id;
	private Ingredient ingredient;
	private Integer quantite;
	
	
	
	public Cocktail getCocktail() {
		return cocktail;
	}
	public Integer getId() {
		return id;
	}
	public Ingredient getIngredient() {
		return ingredient;
	}
	public void setCocktail(Cocktail cocktail) {
		this.cocktail = cocktail;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public void setIngredient(Ingredient ingredient) {
		this.ingredient = ingredient;
	}
	public Integer getQuantite() {
		return quantite;
	}
	public void setQuantite(Integer quantite) {
		this.quantite = quantite;
	}
	
	
	
	

}
