package com.lockzone.controllers;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.lockzone.beans.Master;
import com.lockzone.data.MasterRepository;

@RestController
@RequestMapping("/")
@CrossOrigin(origins = "*")
public class MasterController {

	private static final Logger log = LoggerFactory.getLogger(MasterController.class);

	@Autowired(required=true)
	private MasterRepository repository;
	
	@GetMapping("/{id}")
	//@Operation(description = "Returns an artist by id, and if not found returns blank Artist", 
	//	responses = {@ApiResponse(responseCode = "400", description = "Invalid input")})
	public ResponseEntity<Master> findById(@PathVariable int id, Authentication principal) {
		log.debug("we're in the findById method"); // INFO default threshold
		log.debug("findById URL: /artist/" + id);
		log.info("Current user: " + principal.getName());
		return ResponseEntity.ok(repository.findById(id).orElse(new Master()));
	}
	
	@GetMapping
	@ResponseBody
	public Object findAll(@RequestParam(required = false) String name) {
		if (name != null) {
			return repository.findByNameLike("%" + name + "%");
		} else {
			return repository.findAll();
		}
	}
	
	//@GetMapping("/{id}") SAME AS ABOVE
	//public ResponseEntity<Master> findById(@PathVariable int id) {
	//	return ResponseEntity.ok(repository.findById(id).orElse(new Master()));
	//}
	
	@PostMapping
	@Transactional
	public ResponseEntity<Master> save (@Valid @RequestBody Master master){
		return new ResponseEntity<>(repository.save(master), HttpStatus.CREATED);
	}
	
	// Update
	@PutMapping("/{id}") // PUT /artist/56
	public Master update(@RequestBody Master master, @PathVariable int id) {
		if (repository.existsById(id)) {
			master.setMasterId(id); // don't trust user to use your system as intended
			return repository.save(master);
		} else {
			// you ain't updating, you saving
			throw new IllegalArgumentException("ID doesn't exist");
		}
	}
	
	// Delete
}
