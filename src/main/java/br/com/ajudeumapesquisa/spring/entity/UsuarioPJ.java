package br.com.ajudeumapesquisa.spring.entity;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="T_AUP_USUARIO_PJ")
public class UsuarioPJ extends Usuario {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Column(name="nr_cnpj", length = 14)
	private long nrCnpj;
	
	@Column(name="nm_inscricao_estadual", length = 12)
	private long nrInscricaoEstadual;

	public UsuarioPJ(int id, String nome, String email, String senha, Calendar dataCriacao, Calendar dataModificacao,
			Boolean status, long nrCnpj, long nrInscricaoEstadual) {
		super(id, nome, email, senha, dataCriacao, dataModificacao, status);
		this.nrCnpj = nrCnpj;
		this.nrInscricaoEstadual = nrInscricaoEstadual;
	}

	public UsuarioPJ() {
		super();
	}

	public UsuarioPJ(int id, String nome, String email, String senha, Calendar dataCriacao, Calendar dataModificacao,
			Boolean status) {
		super(id, nome, email, senha, dataCriacao, dataModificacao, status);
	}

	public long getNrCnpj() {
		return nrCnpj;
	}

	public void setNrCnpj(long nrCnpj) {
		this.nrCnpj = nrCnpj;
	}

	public long getNrInscricaoEstadual() {
		return nrInscricaoEstadual;
	}

	public void setNrInscricaoEstadual(long nrInscricaoEstadual) {
		this.nrInscricaoEstadual = nrInscricaoEstadual;
	}
}
