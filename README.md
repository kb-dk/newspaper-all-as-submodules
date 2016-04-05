# newspaper-all-as-submodules
newspaper project with all components as submodules for easier handling

For now run these commands to get a buildable tree:

    export OPTIONS="--depth 1"
    git clone $OPTIONS $OPTIONS https://github.com/statsbiblioteket/sbforge-parent.git
    (cd sbforge-parent && git clone $OPTIONS https://github.com/statsbiblioteket/sbutil.git)
    (cd sbforge-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-parent )
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-batch-event-framework )
    (cd sbforge-parent/newspaper-parent && git clone $OPTIONS https://github.com/statsbiblioteket/newspaper-batch-metadata-checker )
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

    git clone $OPTIONS https://github.com/statsbiblioteket/doms-parent.git
    (cd doms-parent && git clone $OPTIONS https://github.com/statsbiblioteket/doms-server.git )
    (cd doms-parent && git clone $OPTIONS https://github.com/statsbiblioteket/xmlTapesForFedora )


