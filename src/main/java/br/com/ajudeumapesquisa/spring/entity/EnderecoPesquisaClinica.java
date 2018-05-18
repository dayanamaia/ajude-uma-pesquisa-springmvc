package br.com.ajudeumapesquisa.spring.entity;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

@Entity
@Table(name="T_AUP_ENDERECO_PESQUISA")
public class EnderecoPesquisaClinica {
	
	@Id
	@SequenceGenerator(name="id_endereco_pesquisa", sequenceName="sq_t_aup_endereco_pesquisa", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="id_endereco_pesquisa")
	@Column(name="cd_endereco")
	private int id;
	
	@Column(name="nr_cep",length = 8, nullable=false)
	private String cep;
	
	@Column(name="ds_endereco", length = 100, nullable=false)
	private String endereco;
	
	@Column(name="nr_endereco", nullable=false)
	private int nrEndereco;
	
	@Column(name="ds_complemento", length = 50, nullable=false)
	private String complemento;
	
	@Column(name="nm_bairro", length = 30, nullable=false)
	private String bairro;
	
	@Column(name="nm_estado", length = 30, nullable=false)
	private String estado;
	
	@Column(name="nm_cidade", length = 30, nullable=false)
	private String cidade;
	
	@CreationTimestamp
	@Column(name="dt_criacao")
	private Calendar dataCriacao;
	
	@UpdateTimestamp
	@Column(name="dt_modificacao")
	private Calendar dataModificacao;
	
	@JoinColumn(name="id_pesquisa")
	@ManyToOne
	private PesquisaClinica idPesquisa;


	public EnderecoPesquisaClinica(int id, String cep, String endereco, int nrEndereco, String complemento, String bairro,
			String estado, String cidade, Calendar dataCriacao, Calendar dataModificacao, PesquisaClinica idPesquisa) {
		super();
		this.id = id;
		this.cep = cep;
		this.endereco = endereco;
		this.nrEndereco = nrEndereco;
		this.complemento = complemento;
		this.bairro = bairro;
		this.estado = estado;
		this.cidade = cidade;
		this.dataCriacao = dataCriacao;
		this.dataModificacao = dataModificacao;
		this.idPesquisa = idPesquisa;
	}

	public EnderecoPesquisaClinica() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public int getNrEndereco() {
		return nrEndereco;
	}

	public void setNrEndereco(int nrEndereco) {
		this.nrEndereco = nrEndereco;
	}

	public String getComplemento() {
		return complemento;
	}

	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
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

	public PesquisaClinica getIdPesquisa() {
		return idPesquisa;
	}

	public void setIdPesquisa(PesquisaClinica idPesquisa) {
		this.idPesquisa = idPesquisa;
	}
	
}
