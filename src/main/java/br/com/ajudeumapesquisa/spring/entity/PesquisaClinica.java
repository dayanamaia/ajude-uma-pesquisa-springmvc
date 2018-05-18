package br.com.ajudeumapesquisa.spring.entity;

import java.io.Serializable;
import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

@Entity
@Table(name="T_AUP_PESQUISA_CLINICA")
public class PesquisaClinica implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="id_pesquisa", sequenceName="sq_t_aup_pesquisa_clinica", allocationSize=1)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="id_pesquisa")
	@Column(name="cd_pesquisa")
	private int id;
	
	@Column(name="nm_pesquisa", length = 100, nullable=false)
	private String nome;
	
	@Column(name="ds_pesquisa", length = 300, nullable=false)
	private String descricao;
	
	@Column(name="obj_pesquisa", length = 140, nullable=false)
	private String objetivo;
	
	@Column(name="tel_pesquisa", length = 8, nullable=false)
	private String telefone;
	
	@Column(name="cel_pesquisa", length = 9, nullable=false)
	private String celular;
	
	@Column(name="email", length = 50, nullable=false)
	private String email;

	@Temporal(TemporalType.DATE)
	@Column(name="dt_inicio", nullable=false)
	private Calendar dataInicio;
	
	@Temporal(TemporalType.DATE)
	@Column(name="dt_termino", nullable=false)
	private Calendar dataTermino;
	
	@Column(name="nm_pesquisador_responsavel", length = 100, nullable=false)
	private String nomePesquisadorResponsavel;
	
	@Column(name="nm_protocolo", length = 100, nullable=false)
	private String protocolo;
	
	@Column(name="ds_criterios", length = 200, nullable=false)
	private String criterios;
	
	@Column(name="nr_idade_minima", nullable=false)
	private int idadeMinina;
	
	@Column(name="nr_idade_maxima", nullable=false)
	private int idadeMaxima;
	
	@Column(name="img_cover")
	private Byte imgCover;
	
	@CreationTimestamp
	@Column(name="dt_criacao")
	private Calendar dataCriacao;
	
	@UpdateTimestamp
	@Column(name="dt_modificacao")
	private Calendar dataModificacao;
	
	private Boolean status;
	
	//@JoinColumn(name="id_usuario")
	//@ManyToOne
	//private Usuario idUsuario;

	public PesquisaClinica(int id, String nome, String descricao, String objetivo, String telefone, String celular,
			String email, Calendar dataInicio, Calendar dataTermino, String nomePesquisadorResponsavel,
			String protocolo, String criterios, int idadeMinina, int idadeMaxima, Byte imgCover, Calendar dataCriacao,
			Calendar dataModificacao, Boolean status) {
		super();
		this.id = id;
		this.nome = nome;
		this.descricao = descricao;
		this.objetivo = objetivo;
		this.telefone = telefone;
		this.celular = celular;
		this.email = email;
		this.dataInicio = dataInicio;
		this.dataTermino = dataTermino;
		this.nomePesquisadorResponsavel = nomePesquisadorResponsavel;
		this.protocolo = protocolo;
		this.criterios = criterios;
		this.idadeMinina = idadeMinina;
		this.idadeMaxima = idadeMaxima;
		this.imgCover = imgCover;
		this.dataCriacao = dataCriacao;
		this.dataModificacao = dataModificacao;
		this.status = status;
	}

	public PesquisaClinica() {
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

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getObjetivo() {
		return objetivo;
	}

	public void setObjetivo(String objetivo) {
		this.objetivo = objetivo;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getCelular() {
		return celular;
	}

	public void setCelular(String celular) {
		this.celular = celular;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Calendar getDataInicio() {
		return dataInicio;
	}

	public void setDataInicio(Calendar dataInicio) {
		this.dataInicio = dataInicio;
	}

	public Calendar getDataTermino() {
		return dataTermino;
	}

	public void setDataTermino(Calendar dataTermino) {
		this.dataTermino = dataTermino;
	}

	public String getNomePesquisadorResponsavel() {
		return nomePesquisadorResponsavel;
	}

	public void setNomePesquisadorResponsavel(String nomePesquisadorResponsavel) {
		this.nomePesquisadorResponsavel = nomePesquisadorResponsavel;
	}

	public String getProtocolo() {
		return protocolo;
	}

	public void setProtocolo(String protocolo) {
		this.protocolo = protocolo;
	}

	public String getCriterios() {
		return criterios;
	}

	public void setCriterios(String criterios) {
		this.criterios = criterios;
	}

	public int getIdadeMinina() {
		return idadeMinina;
	}

	public void setIdadeMinina(int idadeMinina) {
		this.idadeMinina = idadeMinina;
	}

	public int getIdadeMaxima() {
		return idadeMaxima;
	}

	public void setIdadeMaxima(int idadeMaxima) {
		this.idadeMaxima = idadeMaxima;
	}

	public Byte getImgCover() {
		return imgCover;
	}

	public void setImgCover(Byte imgCover) {
		this.imgCover = imgCover;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
}
