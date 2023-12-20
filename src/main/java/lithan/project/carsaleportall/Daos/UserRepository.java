package lithan.project.carsaleportall.Daos;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import lithan.project.carsaleportall.Entities.User;



@Repository
public interface UserRepository extends JpaRepository<User, Long> {
	
    User findByUserName(String name);
}