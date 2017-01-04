package fr.formation.CONTROLLER;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fr.formation.ENTITY.Ingredient;
import fr.formation.SERVICE.IngredientService;

@Controller
public class IngredientController {
	
	/**
	 * DECARATION DES PROPRIETES EN PRIVATE
	 */
	@Autowired
	private IngredientService service;

	
	
	/**
	 * Méthode permettant d'afficher la page ajoutingrédient.jsp
	 *
	 * @return
	 */
	@RequestMapping("/ajoutingredient")
	public ModelAndView vuePageAjoutIngredient() {

		final ModelAndView mav = new ModelAndView(); 		// affichage de la page ajoutingredient.jsp
		mav.setViewName("ajoutingredient");

		final String titreOnglet = "Ajouter ingrédient"; 	// affichage du titre de l'onglet
		mav.addObject("titreOnglet", titreOnglet);

		return mav;       
	}
	
	/**
	 * Méthode permettant d'afficher la liste des ingredients
	 *
	 * @return
	 */
	@RequestMapping("/listeingredient")
	public ModelAndView vuePageListeIngredient() {

		final ModelAndView mav = new ModelAndView(); 		// affichage de la page listeingredient.jsp
		mav.setViewName("listeingredient");

		final String titreOnglet = "Liste des ingrédients"; // affichage du titre de l'onglet
		mav.addObject("titreOnglet", titreOnglet);

		mav.addObject("liste", service.getAll());   		// insertion de la liste des ingrédients dans la page ingredient.jsp
		
		return mav;
	}
	
	

	/**
	 * Méthode pour récupérer les données saisies par l'utilisateur pour un ajout
	 * d'ingrédient. Et de lui afficher un récap.
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/recapingredient", method = RequestMethod.POST)
	public ModelAndView recupSaisieUtilisateur(final HttpServletRequest request) {
		
		// affichage de la page recapingredient.jsp	
		final ModelAndView mav = new ModelAndView(); 																// 
		mav.setViewName("recapingredient");
		
		// affichage du titre de l'onglet
		final String titreOnglet = "Confirmation de la saisie"; 
		mav.addObject("titreOnglet", titreOnglet);
		
		//récupération de la saisie de l'utilisateur
		final String nom = request.getParameter("inputName");
		final String etat = request.getParameter("inputState");
		
		//créa d'une liste qui répertorie des messages d'erreurs
		final List<String>listeMessageErreur = new ArrayList<>();
		
		//tests effectués sur le champs "nom de l'ingrédient" avant validation du formulaire
		if(nom != null) {
			if(nom.trim().isEmpty()) {
				listeMessageErreur.add("Le champs \"nom de l'ingrédient\" est obligatoire");
			}
			if(nom.matches("[0-9] | [a-z0-9] | [A-Z0-9]+")) {
				listeMessageErreur.add("Le champs \"nom de l'ingrédient\" ne doit pas contenir de chiffre");				
			}			
		}else {
			listeMessageErreur.add("Le champs \"nom de l'ingrédient\" est obligatoire");	
		}
		
		//tests effectués sur le champs "état de l'ingrédient" avant validation du formulaire
		if(etat != null) {
			if(etat.trim().isEmpty()) {
				listeMessageErreur.add("Le champs \"état de l'ingrédient\" est obligatoire");	
			}
			if(etat.matches("([A-Za-z/]+)")) {
				listeMessageErreur.add("Le champs \"état de l'ingrédient\" ne doit pas contenir de lettre");				
			}			
		}else {
			listeMessageErreur.add("Le champs \"état de l'ingrédient\" est obligatoire");	
		}
		
		//insertion du bean dans l'objet request
		request.setAttribute("nom", nom.toUpperCase());
		request.setAttribute("etat", etat);
		request.setAttribute("messageErreur", listeMessageErreur);
		
		return mav;
	}
	
	
	/**
	 * Méthode permettant d'ajouter un ingrédient dans la BBD et de l'afficher dans la liste
	 * @param request
	 */
	@RequestMapping(value = "/listeingredient", method = RequestMethod.POST)
	public String ajoutIngredientDansListe(final HttpServletRequest request) {
		
		final String nom = request.getParameter("nomTab");
		final Integer etat = Integer.parseInt(request.getParameter("etatTab"));
		
		service.create(new Ingredient(nom.toUpperCase(), etat));
		
		return "redirect:listeingredient.html";
	}
	
//	@RequestMapping(value = "/listeingredient", method = RequestMethod.GET)
//	public String supprimerIngredientListe(@RequestParam( value = "id") final Integer idIngredient) {
//
//		
//		service.delete(idIngredient);
//		return "redirect:listeingredient.html";
//	}
}
