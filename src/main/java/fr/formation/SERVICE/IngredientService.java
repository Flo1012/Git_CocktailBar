package fr.formation.SERVICE;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.formation.DAO.IngredientDao;
import fr.formation.ENTITY.Ingredient;

@Service
public class IngredientService {

	/**
	 * DECLARATION DES PROPRIETES EN PRIVATE
	 */
	@Autowired
	private IngredientDao dao;
	
	
	
	
	/****************************************************
	 *LES METHODES NON TRANSACTIONALS 
	 ****************************************************/
	
	
	/**
	 * Méthode qui récupère la liste de tous les ingrédients
	 * @return
	 */
	public List<Ingredient> getAll(){
		
		return this.dao.findAll();
	}
	
	
	
	
	/****************************************************
	 *LES METHODES TRANSACTIONALS 
	 ****************************************************/
	 
	 
	/**
	 * Méthode qui permet de créer un nouvel ingrédient
	 * et de l'insérer dans la BDD
	 * @param ingredient
	 * @return
	 */
	@Transactional
	public Ingredient create(final Ingredient ingredient){
		return this.dao.save(ingredient);
	}
	
	
	/**
	 * Méthode pour supprimer un ingrédient dans la liste d'ingrédient
	 * @param id
	 */
	@Transactional
	public void delete(final Integer id) {
		this.dao.delete(id);
		
	}
	
}
