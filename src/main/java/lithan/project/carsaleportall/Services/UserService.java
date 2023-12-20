package lithan.project.carsaleportall.Services;

import java.util.Arrays;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lithan.project.carsaleportall.Daos.RoleRepository;
import lithan.project.carsaleportall.Daos.UserRepository;
import lithan.project.carsaleportall.Entities.User;

import java.util.HashSet;

@Service
@Transactional
public class UserService {
	@Autowired
	UserRepository repo;

	@Autowired
    private RoleRepository roleRepository;
	
	public void save(User user) {		
	
		user.setRoles(new HashSet<>(roleRepository.findBySpecificRoles("Users")));
		 
        repo.save(user);	
	}
	
	public void updatePf(User user) {
		repo.save(user);
	}
	
//	public void save2(User user) {				 
//        repo.save(user);	
//	}


	public List<User> listAll() {
		return (List<User>) repo.findAll();
	}

	public User get(Long id) {
		return repo.findById(id).get();
	}

	public void delete(Long id) {
		repo.deleteById(id);
	}
	
	public User getUserByName(String username) {
		return repo.findByUserName(username);
	}

	public void save(User user, long id) {
		// TODO Auto-generated method stub
		user.setRoles(new HashSet<>(roleRepository.findBySpecificRoles("Users")));
		 
        repo.save(user);
	}

	public User findByuserName(String string) {
		// TODO Auto-generated method stub
		return repo.findByUserName(string);
	}

	
}