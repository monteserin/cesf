package com.pablomonteserin.futbol;

import org.hibernate.SessionFactory;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import com.pablomonteserin.entity.Equipo;
import com.pablomonteserin.entity.Jugador;

public class HibernateUtil {
	private static StandardServiceRegistry registry;
	private static SessionFactory sessionFactory;

	public static SessionFactory getSessionFactory() {
		if (sessionFactory == null) {
			try {
				registry = new StandardServiceRegistryBuilder().configure().build();
				MetadataSources sources = new MetadataSources(registry);
				sources.addAnnotatedClass(Equipo.class);
				sources.addAnnotatedClass(Jugador.class);

				Metadata metadata = sources.getMetadataBuilder().build();
				sessionFactory = metadata.getSessionFactoryBuilder().build();
			} catch (Exception e) {
				e.printStackTrace();
				if (registry != null) {
					StandardServiceRegistryBuilder.destroy(registry);
				}
			}
		}
		return sessionFactory;
	}
}