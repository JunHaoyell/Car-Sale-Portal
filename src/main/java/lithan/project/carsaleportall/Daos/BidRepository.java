package lithan.project.carsaleportall.Daos;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import lithan.project.carsaleportall.Entities.Car;
import lithan.project.carsaleportall.Entities.CarBidding;

import java.util.List;
import java.util.Set;


@Repository
public interface BidRepository extends JpaRepository<CarBidding, Long> {

	//can develop - Custom query & custom method 
	@Query( "select b from CarBidding b where b.car in :carid" )
	List<CarBidding> findByCarid(@Param("carid") Car car);
}
