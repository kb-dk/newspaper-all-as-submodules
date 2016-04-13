# newspaper-all-as-submodules
newspaper project with all components as submodules for easier handling

Important:

Note: For now all commands work on TRA's Ubuntu 15.10 box.  Adapt as
appropriate for other platforms.  Two issues prohibit compiling with
Java 8 - increased security with wsimport, and more restrictive javadoc.
Note that OpenJDK 7 has certificate problems with some maven repositories.

* Fedora Commons artifacts are hosted on DuraSpace, not in Maven Central!
* Do not use Maven 3.3.3 - there appears to be a bug triggered by domsutil-webservice-common
* Ninestars QA tool not active, as it is linked against an older snapshot which would
  make the tree unnecessarily complex and is unimportant to the purpose of this project.
* For Ubuntu, download Java 7 from Oracle, and increase PermGen size.

    export JAVA_HOME=$HOME/gnu/jdk1.7.0_79/
    export MAVEN_OPTS="-Xmx512m -XX:MaxPermSize=128m"

* For OS X, download the latest Java 7 from http://www.azul.com/downloads/zulu/zulu-mac/
(and the corresponding CCK from http://www.azul.com/products/zulu/cck-downloads/), and increase PermGen size.


    export JAVA_HOME=/Users/ravn/gnu/zulu7.13.0.1-jdk7.0.95-macosx_x64
    export MAVEN_OPTS="-Xmx512m -XX:MaxPermSize=128m"


* When compiling with OpenJDK, open `sbforge-parent/reference/bitrepository-core/src/main/java/org/bitrepository/common/utils/FileSizeUtils.java`
and comment out the unused import in line 24:


    // import sun.nio.ch.DevPollSelectorProvider;


To avoid hitting the defunct repository pulled in by fedora and to avoid sbforge.org consider
adding these lines to /etc/hosts

    # do not download from sbforge or repo.aduna-software.org
    127.0.0.1 sbforge.org repo.aduna-software.org

For now run these commands to get a buildable tree:

    export OPTIONS=""
    (git clone $OPTIONS https://github.com/statsbiblioteket/sbforge-parent.git && git -C sbforge-parent checkout sbforge-parent-18 )

    (git clone $OPTIONS https://github.com/statsbiblioteket/sbforge-parent.git sbforge-parent-10 && git -C sbforge-parent-10 checkout c4519b0f84cc1985e4c5c8fe05cecad7fc8c6fcd)
 
    (cd sbforge-parent-10 && git clone $OPTIONS https://github.com/bitrepository/repository-settings.git && git -C repository-settings checkout 87bc62682053db9e37d66c4e3071c4ff5eb82d7f)

    (git clone $OPTIONS https://github.com/statsbiblioteket/sbforge-parent.git sbforge-parent-12 && git -C sbforge-parent-12 checkout 6706ccb9f25354c3cc924ec5355056b2aced6754)
    (cd sbforge-parent-12 && git clone $OPTIONS https://github.com/statsbiblioteket/sbutil.git sbutil-0.5.13 && git -C sbutil-0.5.13 checkout sbutil-0.5.13)
    (cd sbforge-parent-12 && git clone $OPTIONS https://github.com/statsbiblioteket/sbutil.git sbutil-0.5.29 && git -C sbutil-0.5.29 checkout sbutil-0.5.29)
    (cd sbforge-parent-12 && git clone $OPTIONS https://github.com/statsbiblioteket/jtar.git && git -C jtar checkout jtar-2.3 )

    (git clone $OPTIONS https://github.com/statsbiblioteket/sbforge-parent.git sbforge-parent-15 && git -C sbforge-parent-15 checkout sbforge-parent-15)
    (cd sbforge-parent-15 && git clone $OPTIONS https://github.com/bitrepository/message-xml.git && git -C message-xml checkout bitrepository-message-xml-26)

    (cd sbforge-parent && git clone $OPTIONS https://github.com/bitrepository/reference.git && git -C reference checkout bitrepository-parent-1.3)

    (cd sbforge-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-parent && git -C newspaper-parent checkout newspaper-parent-1.5)
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-batch-event-framework )
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-batch-metadata-checker )
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-batch-structure-checker newspaper-batch-structure-checker-1.10-SNAPSHOT && git -C newspaper-batch-structure-checker-1.10-SNAPSHOT master)
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-bitrepository-ingester)
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-digitisation-process-monitor )
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-mfpak-integration )
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-prompt-doms-ingester )
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-workflow-restart-trigger )
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-ninestars-QA-suite)
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-delayed-batch-alerter )
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-statistics )
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-hadoop-jpylyzer.git)
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-hadoop-dissemination.git)
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-batch-trigger.git)

    (cd sbforge-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-parent newspaper-parent-1.2 && git -C newspaper-parent-1.2 checkout newspaper-parent-1.2)
    (cd sbforge-parent/newspaper-parent-1.2 && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-batch-metadata-checker newspaper-batch-metadata-checker-1.10-SNAPSHOT && git -C newspaper-batch-metadata-checker-1.10-SNAPSHOT checkout fa3f65a1d14cdaf23ae25536cf869a91db9fc869 )

    git clone $OPTIONS https://github.com/statsbiblioteket/doms-parent.git && git -C doms-parent checkout doms-1.2
    (cd doms-parent && git clone $OPTIONS https://github.com/statsbiblioteket/doms-server.git && git -C doms-server checkout central-1.17 )
    (cd doms-parent && git clone $OPTIONS https://github.com/statsbiblioteket/doms-ecm-lib.git && git -C doms-ecm-lib checkout doms-ecm-lib-1.11 )
    (cd doms-parent && git clone $OPTIONS https://github.com/statsbiblioteket/xmlTapesForFedora )
    (cd doms-parent && git clone $OPTIONS https://github.com/statsbiblioteket/doms-util.git doms-util-1.1 && git -C doms-util-1.1 checkout domsutil-1.1 )
    (cd doms-parent && git clone $OPTIONS https://github.com/statsbiblioteket/doms-auth-checker.git && git -C doms-auth-checker checkout authchecker-1.1 )
    (cd doms-parent && git clone $OPTIONS https://github.com/statsbiblioteket/doms-update-tracker.git && git -C doms-update-tracker checkout updatetracker-1.10)

    git clone $OPTIONS https://github.com/statsbiblioteket/doms-parent.git doms-parent-1.0 && git -C doms-parent-1.0 checkout doms-1.0
    (cd doms-parent-1.0 && git clone $OPTIONS https://github.com/statsbiblioteket/doms-pid-generator.git && git -C doms-pid-generator checkout pidgenerator-1.0.1 )
    (cd doms-parent-1.0 && git clone $OPTIONS https://github.com/statsbiblioteket/doms-util.git doms-util-1.0 && git -C doms-util-1.0 checkout domsutil-1.0 )



Install missing artifacts:
--

    mvn install:install-file -Dfile=not-in-central/jta-1.0.1B.jar -DgroupId=javax.transaction -DartifactId=jta -Dversion=1.0.1B  -Dpackaging=jar
    mvn install:install-file -Dfile=not-in-central/postgresql-9.2-1002.jdbc4.jar -DgroupId=postgresql -DartifactId=postgresql -Dversion=9.2-1002.jdbc4  -Dpackaging=jar

Work around repository configurations:
---

Work around repository configurations in sources by ensuring the following snippet
is present in $HOME/.m2/settings.xml (which overrides sbforge-nexus entries
with a pointer to Duraspace where the Fedora Commons artifacts are available)
(See http://stackoverflow.com/a/20520713/53897)

    <settings>
    <profiles>
    <profile>
       <id>duraspace-as-sbforge</id>

       <!--Enable snapshots for the built in central repo to direct -->
       <!--all requests to nexus via the mirror -->
       <repositories>
	      <repository>
	        <id>sbforge-nexus</id>
            <name>Duraspace Thirdparty Maven Repository</name>
            <url>https://m2.duraspace.org/content/repositories/thirdparty</url>
	        <releases><enabled>true</enabled></releases>
	        <snapshots><enabled>false</enabled></snapshots>
	      </repository>
       </repositories>
    </profile>
    </profiles>
    <activeProfiles>
      <activeProfile>duraspace-as-sbforge</activeProfile>
    </activeProfiles>
    </settings>

IntelliJ:
---

Invalidate and restart, before opening up the source project.  Disable
"dockerintegrationtests" profile and disable the test button before
actually invoking maven from inside IntelliJ.

Eclipse:
---

Importing existing maven projects in Eclipse 4.5.2 triggers a known bug, and 
importing fails.  

Netbeans:
----
Remember to set netbeans_jdkhome to a Java 7 JDK before launching Netbeans.
In the Tools->Options->Java->Maven panel set "Global Execution Options" to

    -DskipTests -P!dockerintegrationtests -P!RedisIntegrationTests -P!PostgresIntegrationTests


Command line:
---

    mvn -q -e -Dmaven.compiler.fork=true -DskipTests '-P!dockerintegrationtests' '-P!RedisIntegrationTests' '-P!PostgresIntegrationTests' -Dintegration.test.newspaper.properties=`pwd`/empty.properties clean install

