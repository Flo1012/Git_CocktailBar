package fr.formation.ENTITY;

import java.io.Serializable;

public class Ingredient implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String nom;
	private Integer etat;

	public Ingredient() {

	}

	public Ingredient(String nom, Integer etat) {
		this.nom = nom;
		this.etat = etat;
	}

	public static long getSerialversionuid() {
		return Ingredient.serialVersionUID;
	}

	public Integer getId() {
		return id;
	}

	public String getNom() {
		return nom;
	}

	public Integer getEtat() {
		return etat;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public void setEtat(Integer etat) {
		this.etat = etat;
	}
	
	
}
