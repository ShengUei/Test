package dinero.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ProductRepository extends JpaRepository<Product, Integer> {

	@Query(value = "from Product where prodName like concat('%',?1,'%')")
	public  List<Product> findProducts(String name);
}
