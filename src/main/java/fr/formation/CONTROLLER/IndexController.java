package fr.formation.CONTROLLER;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {

	@RequestMapping("/index")
	public ModelAndView getIndex() {

		final String titreOnglet = "Accueil";
		final ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		mav.addObject("titreOnglet", titreOnglet);

		return mav;
	}
}
