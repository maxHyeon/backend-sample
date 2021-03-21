package com.igts.backendsample.service;

import com.igts.backendsample.model.AccountVo;
import com.igts.backendsample.repository.AccountRepositoryImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class AccountService {
    @Autowired
    private AccountRepositoryImpl accountRepositoryimpl;

    public List<AccountVo> findAll(){
        List<AccountVo> accounts = new ArrayList<>();
        accountRepositoryimpl.findAll().forEach(e -> accounts.add(e));
        return accounts;
    }

    public Optional<AccountVo> findById(Integer id){
        Optional<AccountVo> account = accountRepositoryimpl.findById(id);
        return account;
    }

    public List<AccountVo> findByName(String firstname,String lastname){

        List<AccountVo> accounts = new ArrayList<>();
        accountRepositoryimpl.findByLastnameOrFirstname(firstname,lastname).forEach(e -> accounts.add(e));
        return accounts;
    }

}
