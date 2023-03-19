package com.example.cvapp.service;

import com.example.cvapp.model.ExperienceModel;
import com.example.cvapp.repository.ExperienceRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ExperienceService {

    private final ExperienceRepository repo;

    public void addExperience(ExperienceModel experienceModel) {
        repo.save(experienceModel);
    }

    public List<ExperienceModel> getExperienceList() {
        return repo.findAll();
    }

    public ExperienceModel getExperienceById(Long id) {
        return repo.findById(id).orElse(null);
    }

    public void saveEditExperience(ExperienceModel experienceModel) {
        repo.save(experienceModel);
    }

    public void removeExperience(Long id) {
        repo.deleteById(id);
    }
}
