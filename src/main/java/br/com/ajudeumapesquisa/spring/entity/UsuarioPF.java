package br.com.ajudeumapesquisa.spring.entity;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;

@Entity
@Table(name="T_AUP_USUARIO_PF")
public class UsuarioPF extends Usuario {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@CreationTimestamp
	@Column(name="dt_nascimento")
	private Calendar dataNascimento;
	
	@Column(name="tp_genero")
	private char genero;

	public UsuarioPF(int id, String nome, String email, String senha, Calendar dataCriacao, Calendar dataModificacao,
			Boolean status, Calendar dataNascimento, char genero) {
		super(id, nome, email, senha, dataCriacao, dataModificacao, status);
		this.dataNascimento = dataNascimento;
		this.genero = genero;
	}

	public UsuarioPF() {
		super();
	}

	public UsuarioPF(int id, String nome, String email, String senha, Calendar dataCriacao, Calendar dataModificacao,
			Boolean status) {
		super(id, nome, email, senha, dataCriacao, dataModificacao, status);
	}

	public Calendar getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(Calendar dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public char getGenero() {
		return genero;
	}

	public void setGenero(char genero) {
		this.genero = genero;
	}
	
}
