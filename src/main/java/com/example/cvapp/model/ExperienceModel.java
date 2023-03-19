package com.example.cvapp.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class ExperienceModel {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "position")
    private String position;

    @Column(name = "company")
    private String company;

    @Column(name = "description")
    private String description;

    @Column(name = "period")
    private String period;



}
