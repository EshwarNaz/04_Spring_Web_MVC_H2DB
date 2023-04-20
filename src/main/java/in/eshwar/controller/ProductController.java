package in.eshwar.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import in.eshwar.entity.ProductEntity;
import in.eshwar.repo.ProductRepository;

@Controller
public class ProductController {

	@Autowired
	private ProductRepository repo;

	@GetMapping("/products")
	public String loadProducts(Model model) {
		model.addAttribute("Allproducts", repo.findAll());
		return "data";
	}

	@GetMapping("/")
	public String loadPage(Model model) {
		model.addAttribute("product", new ProductEntity());
		return "index";
	}

	@PostMapping("/save")
	public String SaveProduct(@ModelAttribute("product") ProductEntity p, Model model) {
		p = repo.save(p);
		if (p.getPid() != null) {
			model.addAttribute("msg", "Product Saved....");
		}
		return "index";

	}

}
