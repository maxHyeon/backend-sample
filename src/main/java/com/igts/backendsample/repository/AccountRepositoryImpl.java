package com.igts.backendsample.repository;

import com.igts.backendsample.model.AccountVo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface AccountRepositoryImpl extends JpaRepository<AccountVo, Long> {
    public Optional<AccountVo> findById(Integer id);
    public List<AccountVo> findByLastnameOrFirstname(String firstname,String lastname);
}
