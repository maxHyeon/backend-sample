package com.igts.backendsample.controller;

import com.igts.backendsample.model.AccountVo;
import com.igts.backendsample.service.AccountService;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/account")
@AllArgsConstructor
public class AccountServiceController {

    @Autowired
    AccountService accountService;

    @GetMapping
    @ResponseBody
    public ResponseEntity<List<AccountVo>> getAllAccounts()  {
        List<AccountVo> accounts = accountService.findAll();
        return new ResponseEntity<List<AccountVo>>(accounts, HttpStatus.OK);
    }
    @GetMapping(value="/{id}",produces = {MediaType.APPLICATION_JSON_VALUE})
    @ResponseBody
    public ResponseEntity<AccountVo> getAccount(@PathVariable("id") Integer id)  {
        Optional<AccountVo> account = accountService.findById(id);
        return new ResponseEntity<AccountVo>(account.get(), HttpStatus.OK);
    }
}
