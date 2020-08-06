package com.niit.shoppingcart1.model;
import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class Supplier implements Serializable
{

	@javax.persistence.Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "Id")
	private int id;
	@NotNull
	@Size(min=2,max=30,message="Enter Supplier Name")
	@Column(name = "supname")
	private String supname;
	@NotNull
	@Size(min=2,max=30,message="Enter Supplier Location")
	@Column(name = "suplocation")
	private String suplocation;
	@OneToOne(cascade=CascadeType.PERSIST)
	@JoinColumn(name="category")
	private Category category;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSupname() {
		return supname;
	}
	public void setSupname(String supname) {
		this.supname = supname;
	}
	public String getSuplocation() {
		return suplocation;
	}
	public void setSuplocation(String suplocation) {
		this.suplocation = suplocation;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
}
