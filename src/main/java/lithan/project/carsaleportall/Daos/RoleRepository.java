package lithan.project.carsaleportall.Daos;


import java.util.List;
import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import lithan.project.carsaleportall.Entities.Role;



@Repository
public interface RoleRepository extends JpaRepository<Role, Long>{
	
	@Query( "select r from Role r where r.name in :roles" )
	Set<Role> findBySpecificRoles(@Param("roles") String role);
}
