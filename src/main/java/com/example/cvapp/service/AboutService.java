package com.example.cvapp.service;

import com.example.cvapp.model.AboutModel;
import com.example.cvapp.repository.AboutRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class AboutService {
    private final AboutRepository repo;


    public void saveEditAbout(AboutModel aboutModel) {
        repo.save(aboutModel);
    }

    public AboutModel getAboutModelById(Long id) {
        return repo.findById(id).orElse(null);
    }

    public List<AboutModel> getAboutList() {
        return repo.findAll();
    }
}
