package tw.com.pcschool.services;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;
import org.springframework.stereotype.Service;
import tw.com.pcschool.model.User;
import tw.com.pcschool.repository.UserRepository;

@Service
@Transactional
public class UserService {
	
	private final UserRepository userRepository ;
	
	public UserService(UserRepository userRepository) {
		this.userRepository=userRepository;
	}
	
	public void saveMyUser(User user) {
		userRepository.save(user);
	}
	
	public List<User> showAllUser(){
		List<User> users = new ArrayList<User>();
		for(User user:userRepository.findAll()) {
			users.add(user);
		}
		return users;
	}
	
	
	public void deleteMyUser(int id) {
		userRepository.deleteById(id);
	}
	
	public User editMyUser(int id) {
		User user=userRepository.findById(id).get();
		return user;
	}
	
	public User UsernameAndPassword(String username,String password) {
		return userRepository.UsernameAndPassword(username, password);
	}
}
