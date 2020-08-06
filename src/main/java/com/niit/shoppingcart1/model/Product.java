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
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;
@Entity  
@Table
@Component
public class Product implements Serializable
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ProId")
	int proId;
	@NotNull
	@Size(min=2,max=30,message="*Enter Product Name")
	@Column(name="ProName")
	String proName;
	@NotNull
	@Min(5)
	@Column(name="ProPrice")
	int proPrice;
	@NotNull
	@Size(min=2,max=30,message="*Enter Product Description")
	@Column(name="ProDesc")
	String proDesc;
	@NotNull
	@Size(min=2,max=30,message="*Enter Product Style")
	@Column(name="ProStyle")
	String proStyle;
	@NotNull
	@Size(min=2,max=30,message="*Enter Product Warranty")
	@Column(name="warranty")
	String warranty;
	@NotNull
	@Size(min=2,max=30,message="*Enter Product PrimaryMeterial")
	@Column(name="primaryMeterial")
	String primaryMeterial;
	@NotNull
	@Size(min=2,max=30,message="*Enter Product Capacity")
	@Column(name="capacity")
	String capacity;
	 	
	 	 
	 	@OneToOne(cascade=CascadeType.PERSIST)
		@JoinColumn(name="supplier")
		private Supplier supplier;
	 	
	 	 @OneToOne(cascade=CascadeType.PERSIST)
			@JoinColumn(name="category")
			private Category category;
	 	
		@Column(name="image",columnDefinition="varchar(255)")
		@Size(min=3,message="Please Select the Image")
		private	String image;
		@JsonIgnore
		transient private MultipartFile img;
		public int getProId() {
			return proId;
		}
		public void setProId(int proId) {
			this.proId = proId;
		}
		public String getProName() {
			return proName;
		}
		public void setProName(String proName) {
			this.proName = proName;
		}
		public int getProPrice() {
			return proPrice;
		}
		public void setProPrice(int proPrice) {
			this.proPrice = proPrice;
		}
		public String getProDesc() {
			return proDesc;
		}
		public void setProDesc(String proDesc) {
			this.proDesc = proDesc;
		}
		public String getProStyle() {
			return proStyle;
		}
		public void setProStyle(String proStyle) {
			this.proStyle = proStyle;
		}
		public String getWarranty() {
			return warranty;
		}
		public void setWarranty(String warranty) {
			this.warranty = warranty;
		}
		public String getPrimaryMeterial() {
			return primaryMeterial;
		}
		public void setPrimaryMeterial(String primaryMeterial) {
			this.primaryMeterial = primaryMeterial;
		}
		public String getCapacity() {
			return capacity;
		}
		public void setCapacity(String capacity) {
			this.capacity = capacity;
		}
		public Supplier getSupplier() {
			return supplier;
		}
		public void setSupplier(Supplier supplier) {
			this.supplier = supplier;
		}
		public Category getCategory() {
			return category;
		}
		public void setCategory(Category category) {
			this.category = category;
		}
		public String getImage() {
			return image;
		}
		public void setImage(String image) {
			this.image = image;
		}
		public MultipartFile getImg() {
			return img;
		}
		public void setImg(MultipartFile img) {
			this.img = img;
		}

		


}