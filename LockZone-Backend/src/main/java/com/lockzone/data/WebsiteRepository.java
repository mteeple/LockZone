package com.lockzone.data;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.lockzone.beans.Website;

@Repository
public interface WebsiteRepository extends JpaRepository<Website, Integer>{
	
	@Query("from Website web inner join web.master mas where mas.name = ?1")
	public List<Website> findByMasterName(String name);
}
