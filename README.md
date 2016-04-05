# newspaper-all-as-submodules
newspaper project with all components as submodules for easier handling

For now run these commands to get a buildable tree:

    export OPTIONS=""
    (git clone $OPTIONS https://github.com/statsbiblioteket/sbforge-parent.git && git -C sbforge-parent checkout sbforge-parent-18 )
    (git clone $OPTIONS https://github.com/statsbiblioteket/sbforge-parent.git sbforge-parent-12 && git -C sbforge-parent-12 checkout 6706ccb9f25354c3cc924ec5355056b2aced6754)
    (cd sbforge-parent-12 && git clone $OPTIONS https://github.com/statsbiblioteket/sbutil.git && git -C sbutil checkout sbutil-0.5.29)
    (cd sbforge-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-parent && git -C newspaper-parent checkout newspaper-parent-1.5)
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-batch-event-framework )
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-batch-metadata-checker )
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-batch-structure-checker )
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-bitrepository-ingester)
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-digitisation-process-monitor )
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-md5-checker )
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-mfpak-integration )
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-prompt-doms-ingester )
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-workflow-restart-trigger )
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-ninestars-QA-suite)
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-summa-batch-object-index )
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-delayed-batch-alerter )
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-statistics )

    git clone $OPTIONS https://github.com/statsbiblioteket/doms-parent.git && git -C doms-parent checkout doms-1.2
    (cd doms-parent && git clone $OPTIONS https://github.com/statsbiblioteket/doms-server.git && git -C doms-server checkout central-1.17 )
    (cd doms-parent && git clone $OPTIONS https://github.com/statsbiblioteket/doms-ecm-lib.git && git -C doms-ecm-lib checkout doms-ecm-lib-1.11 )
    (cd doms-parent && git clone $OPTIONS https://github.com/statsbiblioteket/doms-pid-generator.git && git -C doms-pid-generator checkout pidgenerator-1.0.1 )
    (cd doms-parent && git clone $OPTIONS https://github.com/statsbiblioteket/xmlTapesForFedora )
    (cd doms-parent && git clone $OPTIONS https://github.com/statsbiblioteket/jtar.git && git -C jtar jtar-2.3 )
