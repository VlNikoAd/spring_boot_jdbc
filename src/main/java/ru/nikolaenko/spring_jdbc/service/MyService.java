package ru.nikolaenko.spring_jdbc.service;

import org.springframework.stereotype.Service;
import ru.nikolaenko.spring_jdbc.repository.RepositoryImpl;

@Service
public class MyService {

    private final RepositoryImpl repositoryImpl;

    public MyService(RepositoryImpl repositoryImpl) {
        this.repositoryImpl = repositoryImpl;
    }

    public String getProductName(String name) {
        return repositoryImpl.getProductName(name);
    }
}