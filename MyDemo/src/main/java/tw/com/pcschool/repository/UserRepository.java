package tw.com.pcschool.repository;

import org.springframework.data.repository.CrudRepository;

import tw.com.pcschool.model.User;

public interface UserRepository extends CrudRepository<User, Integer> {

	public abstract User UsernameAndPassword(String username,String password);

}
