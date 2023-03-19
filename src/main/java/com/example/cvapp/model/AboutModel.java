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
public class AboutModel {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column(name = "name")
    private String name;

    @Column(name = "last_name")
    private String lastName;

    @Column(name = "address")
    private String address;

    @Column(name = "email")
    private String email;

    @Column(name = "description")
    private String description;

    @Column(name = "instagram")
    private String instagram;

    @Column(name = "gitHub")
    private String gitHub;

    @Column(name = "twitter")
    private String twitter;

    @Column(name = "facebook")
    private String facebook;

}
