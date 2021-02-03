package ir.maktab.repository;


import javax.persistence.EntityManager;

public abstract class AbstractRepository<E extends IEntity, T, IEntity> {

    protected EntityManager entityManager;

    public AbstractRepository(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    public void save(IEntity entity){
        entityManager.getTransaction().begin();
        entityManager.persist(entity);
        entityManager.getTransaction().commit();
    }
    public void delete(IEntity entity){
        entityManager.getTransaction().begin();
        entityManager.remove(entity);
        entityManager.getTransaction().commit();
    }
    public void update(IEntity entity){
        entityManager.getTransaction().begin();
        entityManager.merge(entity);
        entityManager.getTransaction().commit();
    }
    public E loadById(T id){
        return entityManager.find(getEntityClass(),id);
    }
    public abstract Class<E> getEntityClass();

}
