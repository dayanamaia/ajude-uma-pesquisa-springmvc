package br.com.ajudeumapesquisa.spring.dao.impl;

import java.util.List;

import java.lang.reflect.*;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import br.com.ajudeumapesquisa.spring.dao.GenericDAO;

public class GenericDAOImpl<T, K> implements GenericDAO<T, K> {

	@PersistenceContext
	protected EntityManager em;
	
	private Class<T> clazz;
	
	@SuppressWarnings("unchecked")
	public GenericDAOImpl() {
		clazz = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass())
				.getActualTypeArguments()[0];
	}
	
	public void cadastrar(T entidade) {
		em.persist(entidade);
	}
	
	public void atualizar(T entidade) {
		em.merge(entidade);
	}
	
	public T buscar(K chave) {
		return em.find(clazz, chave);
	}
	
	public void remover(K chave) throws Exception {
		T entidade = buscar(chave);
		if (entidade == null) {
			throw new Exception("Entidade não encontrada");
		}
		em.remove(entidade);
	}
	
	public List<T> listar(){
		return em.createQuery("from " + clazz.getName(),clazz).getResultList();
	}
}
