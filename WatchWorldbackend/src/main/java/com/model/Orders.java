package com.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Orders implements Serializable {

	@Id
	@GeneratedValue
	private int orderId;
	private String 
}
