package br.com.ajudeumapesquisa.spring.entity;

import java.io.Serializable;
import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.DiscriminatorColumn;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import br.com.ajudeumapesquisa.spring.util.CriptografiaUtils;

@Entity
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn( name="tipo_usuario" )
@Table(name="T_AUP_USUARIO")
public class Usuario implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="id_usuario", sequenceName="sq_t_aup_usuario", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="id_usuario")
	@Column(name="cd_usuario")
	private int id;
	
	@Column(name="nm_usuario", length = 100, nullable=false)
	private String nome;
	
	@Column(name="email_usuario", length = 50, nullable=false)
	private String email;
	
	@Column(name="senha_usuario", length = 40, nullable=false)
	private String senha;

	@CreationTimestamp
	@Column(name="dt_criacao")
	private Calendar dataCriacao;
	
	@UpdateTimestamp
	@Column(name="dt_modificacao")
	private Calendar dataModificacao;
	
	private Boolean status;

	public Usuario(int id, String nome, String email, String senha, Calendar dataCriacao, Calendar dataModificacao,
			Boolean status) {
		super();
		this.id = id;
		this.nome = nome;
		this.email = email;
		setSenha(senha);
		this.dataCriacao = dataCriacao;
		this.dataModificacao = dataModificacao;
		this.status = status;
	}

	public Usuario() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		try{
			this.senha = CriptografiaUtils.criptografar(senha);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	public Calendar getDataCriacao() {
		return dataCriacao;
	}

	public void setDataCriacao(Calendar dataCriacao) {
		this.dataCriacao = dataCriacao;
	}

	public Calendar getDataModificacao() {
		return dataModificacao;
	}

	public void setDataModificacao(Calendar dataModificacao) {
		this.dataModificacao = dataModificacao;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}
	
	
}
