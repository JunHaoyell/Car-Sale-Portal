package lithan.project.carsaleportall;


import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;


import lithan.project.carsaleportall.Entities.Car;
import lithan.project.carsaleportall.Entities.User;
import lithan.project.carsaleportall.Services.CarService;
import lithan.project.carsaleportall.Services.UserService;



@SpringBootTest
class CarSalePortallApplicationTests {

	@Test
	void contextLoads() {
	}

	@Autowired
	private CarService carS;
	private UserService uS;
	
	@Test
	public void searchCarByKeyWord() {
		List<Car> result=carS.search("G&G@gmail.com");
		 //Test is successful when actual result & expect result = meet
		 assertNotNull(result);	
	}
	
	
}
