package lithan.project.carsaleportall.Services;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lithan.project.carsaleportall.Controller.CarController;
import lithan.project.carsaleportall.Daos.CarRepository;
import lithan.project.carsaleportall.Entities.Car;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class CarService {
  
	private static final Logger logger = LoggerFactory.getLogger(CarController.class);

    @Autowired
    private CarRepository carRepository;

    //Constructor
	public CarService(CarRepository car_repo) {
		// TODO Auto-generated constructor stub
		this.carRepository=car_repo;
	}



	public List<Car> getAllCars() {
		System.out.println("In get call car service");
        return carRepository.findAll();
    }
    
    //used for both update and Save Car
    public void saveCar(Car car) {
       carRepository.save(car);
    }
    
	public Car get(Long id) {
		return carRepository.findById(id).get();
	}

	
	public void delete(Long id) {
		carRepository.deleteById(id);
	}
	
	public List<Car> search(String keyword) {
		return carRepository.search(keyword);
		
		}

}
