FROM jboss/wildfly:10.1.0.Final

ADD  https://nexus-alejandro-capel-dev.apps.sandbox.x8i5.p1.openshiftapps.com/repository/cursoOpenShift/artefactos/Aplicacion.war /opt/jboss/wildfly/standalone/deployments/


USER root
RUN chmod 777 -R /opt/jboss/wildfly/standalone/deployments/Aplicacion.war
USER jboss

