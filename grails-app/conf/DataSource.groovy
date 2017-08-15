dataSource {
    pooled = true
    driverClassName = "org.postgresql.Driver"
    dialect = org.hibernate.dialect.PostgreSQLDialect

}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
//    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
}

// environment specific settings
environments {
    development {
        dataSource {
            url = "jdbc:postgresql://localhost:5432/pwjabar"
              dbCreate = "create-drop"
//            dbCreate = "update"
            driverClassName = "org.postgresql.Driver"
            username = "root"
            password = "root123"
        }
    }
    test {
        dataSource {
            url = "jdbc:postgresql://localhost:5432/pwjabar"
            //  dbCreate = "create-drop"
            dbCreate = "update"
            driverClassName = "org.postgresql.Driver"
            username = "root"
            password = "root123"
        }
    }
    production {
        dataSource {
            url = "jdbc:postgresql://localhost:5432/pwjabar"
            //  dbCreate = "create-drop"
            dbCreate = "update"
            driverClassName = "org.postgresql.Driver"
            username = "root"
            password = "root123"

        }
    }
}
