package dinero.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import dinero.model.Product;
import dinero.model.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService pService;
	
	@GetMapping("/productmain.controller")
	public String processQueryAllAction(Model m){
		m.addAttribute("productList",pService.findAll());
		m.addAttribute("product",new Product());
		return "ProductForm";
	}
	
	@GetMapping("/createproduct.controller")
	public String createProductForm(Model m) {
		m.addAttribute("product",new Product());
		return "CreateProduct";
	}
		
	@PostMapping("/createproduct.controller")
	public String processInsertAction(@ModelAttribute("product")Product p,@RequestParam("img_upload_base")String prodImg) {
//		Product product = new Product();
//		product.setProdName("wood");
//		product.setPrice(100);
//		product.setDescript("good");
//		product.setStock(50);
//		product.setCategory("toy");
//		product.setPetkind("cat");
		p.setProdImg(prodImg);
		pService.insert(p);
		
		return "redirect:/productform.controller";
	}
	
	@GetMapping("/updateproduct.controller")
	public String updateProductForm(Model m,@RequestParam("prodId")int prodId) {
		m.addAttribute("product",new Product());
		m.addAttribute("prodId",prodId);
		
		return "UpdateProduct";
	}
	
	
	@PostMapping("/updateproduct.controller")
	public String processUpdateAction(@ModelAttribute("product")Product p,@RequestParam("img_upload_base")String prodImg) {
//		Product product = new Product();
//		product.setProdId(3003);
//		product.setProdName("can");
//		product.setPrice(50);
//		product.setDescript("goodd");
//		product.setStock(20);
//		product.setCategory("罐頭");
//		product.setPetkind("cat");
		p.setProdImg(prodImg);
		pService.update(p);
		
		return "redirect:/productform.controller";
	}
	
	
	@PostMapping("/deleteproduct.controller")
	public String processDeleteByIdAction(@RequestParam("prodId")int prodId) {
		pService.deleteById(prodId);
		return "redirect:/productform.controller";
	}
	
//	@ResponseBody
//	@GetMapping("/productquerybyid.controller")
//	public Product processQueryByIdAction() {
//		return pService.findById(2004);
//	}
	
	
	
	@GetMapping("/readproductbyname.controller")
	public String processFindProductsAction(@RequestParam("prodName")String prodName,Model m, @ModelAttribute("product") Product p){
		m.addAttribute("productList", pService.findProducts(prodName));
		return "ProductForm";
	}
	
	@GetMapping("/productform.controller")
	public String productMainForm(Model m) {
		m.addAttribute("productList",pService.findAll());
		m.addAttribute("product",new Product());
		return "productFormNew";
	}

	@GetMapping("/uploadpage.controller")
	public String uploadpage() {
		return "upload";
	}
}
