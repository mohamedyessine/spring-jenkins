FROM openjdk:8-jdk-alpine
## SHA hashage of any layer
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
# sha compare l'integrite de donne a traver de hashage
# les couche eli yetbadlou lezm f lo5er bch a9al size puisque lo5rin yetaawdou deja aandhom
# lezm extract lil jar w nlansi kn code source plus optimiser
# docker build -t storeManagement . le point specifie le target de target/*.jar (chemain relatif) (/home absolut)
# docker image ls //all images
# docker run storemanagement  //run application
# docker ps -a // all containers
# docker run --detach --name store-management storemanagement  /// detach runs the container in the background
# curl google.com //HTML content of the page.
# docker logs name_container
# docker stop store-management
# docker start store-management
# docker rm -f store-management //with force
# docker run --detach --name store-management -p 9999:8080 storemanagement // expose port specifie on the host
# docker exec -it store-management /bin/sh // execution interactive lance ls (file system) njm nzuid des fichier w kol chy t9ol vm
# docker exec -it store-management ls -l (list files)
# if remove container all data disepear
# scal in +memoire extensible or scal out +instance or vm  (
# cpu ylagi app
# ram yekrachi (kill app if dont have limit ram)
# oom killer
# opaque token without jwt token (tesra9 jwt donc tahcha m8uir maythabet opaque dima ythabet )
# cors lezm b a9al risque
# base donnee statefull
# docker logs --follow mysql
# mysql -u root -p in bash of mysql or docker exec -it mysql mysql -u root -p my-secret-pw
# -v path/in/my/pc:/home/(path point)
# externalisation de config fi spring (application)
# docker volume ls
# docker volume inspect mysql-database
# -e (variable d environnement)
# CI (contunious integration): test changement du code avec l'ancient code
# CD (continuous delivery): deployment
# agent // eli bch ylanci stage si any so fi stage t7ot l agent
#stage // bloc logic et peut executer les stages en parallele et peut lancer chaque stage dans un noeud ou vm
#pipeline as a code : l code f repo git pour lancer ce pipeline
# powershell : hya step contient des param et une seul param obligatoire powershell 'java --version'
# nombre excecuters dans jenkins : limite pour n'est pas crache (lancer par controller node)
# environment peut utiliser globalement et peut utiliser sur les stages kol si nn tnajm taaml env f kol stage
# git : version control system
# revert : tna7ui commit
# reset : terjaa l commit w t4ayaaa3 li baadhom hol
# 3 way merge : changement m3a les 2 commit li 9bal w li baad
# origin/main: remote traking
# git fetch : synchronize m3a origin/main
# pull : pull + fetch
# git cherry pick : get changement from other commit
# git hub flow method/ git tbd  method/ git
# scan b 1 min after any commit
# use when fi jenkins fl delevery w deployment (important)
# use try catch f deploy kn fama mochkle yraja3 haja
