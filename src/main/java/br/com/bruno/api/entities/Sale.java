package br.com.bruno.api.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "sale")
public class Sale implements Serializable {

	private static final long serialVersionUID = 1L;

	private Long id;
	private Salesman salesman;
	private Buyer buyer;
	private Product product;

	public Sale() {

	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public Long getId() {
		return id;
	}

	public Salesman getSalesman() {
		return salesman;
	}

	public Buyer getBuyer() {
		return buyer;
	}

	public Product getProduct() {
		return product;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setSalesman(Salesman salesman) {
		this.salesman = salesman;
	}

	public void setBuyer(Buyer buyer) {
		this.buyer = buyer;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

}