-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto_empresas_tecnologicas
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `empresas`
--

DROP TABLE IF EXISTS `empresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresas` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `coordenadas` varchar(255) NOT NULL,
  `fundacion` date NOT NULL,
  `historia` varchar(3000) NOT NULL,
  `lugar` varchar(200) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas`
--

LOCK TABLES `empresas` WRITE;
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` VALUES (1,'[36.73461554337152,-4.557148841146211]','1998-12-10','Accenture nació como una división de la empresa auditora Arthur Andersen, dedicada a la consultoría empresarial y tecnológica a principios de la década de 1950. En 1989, Arthur Andersen (AA) y Andersen Consulting (AC) se convirtieron en unidades separadas de Andersen Worldwide Société Coopérative (AWSC). En la década de los noventa se tensaron las relaciones entre las dos divisiones por una claúsula del contrato de escisión por el cual la sección con mayor rentabilidad debía pagar hasta el 15% de sus beneficios a la otra. A la vez Arthur Andersen creó su propia línea de servicios de consultoría empresarial que competía directamente con el negocio de Andersen Consulting. En agosto de 2000, se rompieron definitivamente todos los vínculos entre las dos ramas después del arbitraje presentada por AC ante la Cámara de Comercio Internacional. En enero de 2001, de acuerdo con la resolución que estableció la separación, tuvo que abandonar la deonominación de Anderseny adoptó el título de Accenture (confluencia de los términos accent y future), motivado también por el desprestigio de Arthur Andersen, involucrada en el escándalo financiero de Enron, que conllevaría el cese de sus actividades.',' Edificio I+D6, C. Severo Ochoa, 21, Edificio I+D 6, Campanillas, 29590 Campanillas, Málaga','Accenture','../../assets/img/accenture-logo-768x768.webp'),(2,'[36.71934929444389, -4.419732460306011]','2010-01-01','Freepik fue fundada en 2010 por los hermanos Alejandro Blanes y Pablo Blanes, junto con su amigo Joaquín Cuenca, fundador de Panoramio (adquirido por Google).En un principio se trataba de un buscador que indexaba contenido de las 10 principales webs de contenido gratuito para diseñadores.\n\nEn 2014, Freepik dejó de ser simplemente un metabuscador y se convirtió en un productor de recursos gráficos gratuitos a gran escala.\n\nEn 2015 se lanzó el modelo de suscripción.Los usuarios que pagan una cuenta Premium tienen acceso a más recursos y a contenido exclusivo en la plataforma, sin necesidad de atribuir.3\n\nEn 2018 Freepik cambió su identidad visual y presentó un nuevo logo. Este rediseño incluyó una nueva fuente, un isotipo modificado, al igual que la paleta de colores. El objetivo de este cambio fue redefinir la imagen de la marca y acercarla más a las tendencias del diseño gráfico.1\n\nEn 2020 durante el brote de Coronavirus, como parte de una iniciativa de RSC de Freepik Company, Freepik ofreció sus recursos de manera gratuita para sanitarios, educadores, periodistas y trabajadores de las instituciones públicas.','Freepik Company, C. Molina Lario, 13, PISO 5º, Distrito Centro, 29015 Málaga','Freepik','https://play-lh.googleusercontent.com/4LPtKx3YE6XVOtHE_sIyRiHIiRelb4vFcmg4qI_QMTFeaB_kBg5X_LD8OK-tvTC4Uuw'),(5,'[36.72034885155851,-4.4172026118083325]','1992-01-01','Indra Sistemas S.A es una de las principales compañías globales de tecnología y consultoría y el socio tecnológico para las operaciones clave de los negocios de sus clientes en todo el mundo. Es un proveedor líder mundial de soluciones propias en segmentos específicos de los mercados de Transporte y Defensa, y la empresa líder en consultoría de transformación digital y Tecnologías de la Información en España y Latinoamérica a través de su filial Minsait. Su modelo de negocio está basado en una oferta integral de productos propios, con un enfoque end-to-end, de alto valor y con un elevado componente de innovación.','Plaza de la Aduana, 0, Distrito Centro, 29015 Málaga','Indra','https://clusterdefensa.es/wp-content/uploads/2022/02/Indra-se-incorpora-al-cluster-de-defensa.jpg'),(6,'[36.7184375328906,-4.496704732826968]','1976-06-01','CGI Inc. fue fundada como una empresa de consultoría de TI el 15 de junio de 1976 en la ciudad de Quebec, Quebec, por Serge Godin. Al cabo de varios meses se le unió el cofundador André Imbeau[6] de la ciudad de Quebec. Inicialmente dirigieron el negocio desde el sótano de Godin con un solo teléfono. Comenzando con un cliente, a medida que la empresa creció en tamaño, los cofundadores se mudaron a Montreal y al final del primer año habían generado 138.000 dólares en ingresos. Si bien CGI significa \"Conseillers en gestion et informatique\" en francés (que se traduce como \"consultores en gestión y tecnología de la información\"), el significado oficial en inglés se convertiría más tarde en \"Consultores del gobierno y la industria\". En años posteriores, la empresa comenzó a comercializar simplemente como CGI.','CGI, Blvr. Louis Pasteur, 47, Campanillas, 29010 Málaga','CGI','https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/CGI_logo.svg/1024px-CGI_logo.svg.png'),(7,'[36.71838137933482, -4.422549338908259]','1988-05-23','NTT Data nació en 1967, a raíz de la creación del Departamento de Comunicaciones (DATA Communications Bureau) en la estatal Nippon Telegraph and Telephone Public Corporation (ahora NTT). En 1981, desarrollo la unidad central del ordenador DIPS 11 Modelo 45. En 1985, Nippon Telegraph and Telephone se privatizó. En 1988 NTT Data se escindió de su matriz NTT. En 1990, fue autorizada como System Integrator. En 1992, su sede se reubicó en Toyosu (Tokio). A año siguiente recibió el premio Deming de Aplicaciones 1993. En 1996 fue incluida en la primera Sección de la Bolsa de valores de Tokio y cambió su nombre a NTT Data','NTT DATA Málaga, C. Prta del Mar, 18, Distrito Centro, 29005 Málaga','NTT DATA','https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/NTT-Data-Logo.svg/1920px-NTT-Data-Logo.svg.png'),(8,'[36.7393972652057, -4.553893052516271]','1970-01-07','Oracle Corporation es una compañía especializada en el desarrollo de soluciones de nube y locales. Oracle tiene su sede central en la localidad de Austin, capital del estado de Texas. Según la clasificación correspondiente al año 2006, ocupa el primer lugar en la categoría de las bases de datos y el séptimo lugar a nivel mundial de las compañías de tecnologías de la información. La tecnología Oracle se encuentra en muchas industrias del mundo y en las oficinas de 98 de las 100 empresas Fortune 100.','Oracle Corporation, C. Severo Ochoa, 55, Campanillas, 29590 Málaga','Oracle','https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Oracle_logo.svg/1024px-Oracle_logo.svg.png');
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresas_tecnologias`
--

DROP TABLE IF EXISTS `empresas_tecnologias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresas_tecnologias` (
  `empresa_id` bigint NOT NULL,
  `tecnologias` varchar(255) DEFAULT NULL,
  KEY `FK5l8kgll08tvclhydmrp2090hy` (`empresa_id`),
  CONSTRAINT `FK5l8kgll08tvclhydmrp2090hy` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas_tecnologias`
--

LOCK TABLES `empresas_tecnologias` WRITE;
/*!40000 ALTER TABLE `empresas_tecnologias` DISABLE KEYS */;
INSERT INTO `empresas_tecnologias` VALUES (1,'Sap Solution'),(1,'Strategy'),(2,'Imagenes'),(5,'Servicios financieros'),(5,'Soluciones propias del transporte'),(6,'Integración de sistemas'),(6,'procesos de negocios'),(6,'propiedad intelectual'),(7,''),(7,'Consultoría de negocio y tecnología'),(7,'Servicios de aplicaciones'),(7,'CX & Diseño'),(8,'Oracle Cloud Infrastructure'),(8,'Aplicaciones en la nube'),(8,'Banca y seguros');
/*!40000 ALTER TABLE `empresas_tecnologias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-07 13:09:29
