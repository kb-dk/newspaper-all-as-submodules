#!/usr/bin/env perl 

while(<DATA>) {
    chomp;
    next if (/^ *#/); # comment line
    next if (/^ *$/); # blank line
    ($path, $repo, $checkout, $rest) = split(/[ \t]+/);
    if (defined $rest) {
	die "$path has extra\n";
    }
    # print "path = $path, repo = $repo, checkout = $checkout\n";
    $encoded_repo = $repo;
    $encoded_repo =~ s/([^a-z0-9])/"_".sprintf("%X",ord($1))/eg;
    $repodir = "git/$encoded_repo";

    if (!$repo_seen_before{$repo}++) {
	print "if [ -d $repodir ]; then echo already mirrored - fetch; else git clone --mirror $repo $repodir; fi\n"; # fetch?
    }
    print "if [ -d $path ]; then echo already cloned; else git clone $repodir $path; fi\n"; # update?
    print "git -C $path checkout $checkout\n";
}

__DATA__
# as of 2016-04-15 - keep them sorted to ensure parents are in place first.
doms-parent https://github.com/statsbiblioteket/doms-parent.git doms-1.2
doms-parent-1.0 https://github.com/statsbiblioteket/doms-parent.git doms-1.0
doms-parent-1.0/doms-pid-generator https://github.com/statsbiblioteket/doms-pid-generator.git pidgenerator-1.0.1
doms-parent-1.0/doms-util-1.0 https://github.com/statsbiblioteket/doms-util.git domsutil-1.0
doms-parent/doms-auth-checker https://github.com/statsbiblioteket/doms-auth-checker.git authchecker-1.1
doms-parent/doms-ecm-lib https://github.com/statsbiblioteket/doms-ecm-lib.git doms-ecm-lib-1.11
doms-parent/doms-server https://github.com/statsbiblioteket/doms-server.git central-1.17
doms-parent/doms-update-tracker https://github.com/statsbiblioteket/doms-update-tracker.git updatetracker-1.10
doms-parent/doms-util-1.1 https://github.com/statsbiblioteket/doms-util.git domsutil-1.1
doms-parent/xmlTapesForFedora https://github.com/statsbiblioteket/xmlTapesForFedora master
sbforge-parent https://github.com/statsbiblioteket/sbforge-parent.git sbforge-parent-18
sbforge-parent-10 https://github.com/statsbiblioteket/sbforge-parent.git c4519b0f84cc1985e4c5c8fe05cecad7fc8c6fcd
sbforge-parent-10/repository-settings https://github.com/bitrepository/repository-settings.git 87bc62682053db9e37d66c4e3071c4ff5eb82d7f
sbforge-parent-12 https://github.com/statsbiblioteket/sbforge-parent.git 6706ccb9f25354c3cc924ec5355056b2aced6754
sbforge-parent-12/jtar https://github.com/statsbiblioteket/jtar.git jtar-2.3
sbforge-parent-12/sbutil-0.5.13 https://github.com/statsbiblioteket/sbutil.git sbutil-0.5.13
sbforge-parent-12/sbutil-0.5.29 https://github.com/statsbiblioteket/sbutil.git sbutil-0.5.29
sbforge-parent-15 https://github.com/statsbiblioteket/sbforge-parent.git sbforge-parent-15
sbforge-parent-15/message-xml https://github.com/bitrepository/message-xml.git bitrepository-message-xml-26
sbforge-parent/newspaper-parent https://github.com/statsbiblioteket/newspaper-parent newspaper-parent-1.5
sbforge-parent/newspaper-parent-1.2 https://github.com/statsbiblioteket/newspaper-parent newspaper-parent-1.2
sbforge-parent/newspaper-parent-1.2/newspaper-batch-metadata-checker-1.10-SNAPSHOT https://github.com/statsbiblioteket/newspaper-batch-metadata-checker fa3f65a1d14cdaf23ae25536cf869a91db9fc869
sbforge-parent/newspaper-parent/newspaper-batch-event-framework https://github.com/statsbiblioteket/newspaper-batch-event-framework master
sbforge-parent/newspaper-parent/newspaper-batch-metadata-checker https://github.com/statsbiblioteket/newspaper-batch-metadata-checker master
sbforge-parent/newspaper-parent/newspaper-batch-structure-checker-1.10-SNAPSHOT https://github.com/statsbiblioteket/newspaper-batch-structure-checker master
sbforge-parent/newspaper-parent/newspaper-batch-trigger https://github.com/statsbiblioteket/newspaper-batch-trigger.git master
sbforge-parent/newspaper-parent/newspaper-bitrepository-ingester https://github.com/statsbiblioteket/newspaper-bitrepository-ingester master
sbforge-parent/newspaper-parent/newspaper-delayed-batch-alerter https://github.com/statsbiblioteket/newspaper-delayed-batch-alerter master
sbforge-parent/newspaper-parent/newspaper-digitisation-process-monitor https://github.com/statsbiblioteket/newspaper-digitisation-process-monitor master
sbforge-parent/newspaper-parent/newspaper-hadoop-dissemination https://github.com/statsbiblioteket/newspaper-hadoop-dissemination.git master
sbforge-parent/newspaper-parent/newspaper-hadoop-jpylyzer https://github.com/statsbiblioteket/newspaper-hadoop-jpylyzer.git master
sbforge-parent/newspaper-parent/newspaper-mfpak-integration https://github.com/statsbiblioteket/newspaper-mfpak-integration master
sbforge-parent/newspaper-parent/newspaper-ninestars-QA-suite https://github.com/statsbiblioteket/newspaper-ninestars-QA-suite master
sbforge-parent/newspaper-parent/newspaper-prompt-doms-ingester https://github.com/statsbiblioteket/newspaper-prompt-doms-ingester master
sbforge-parent/newspaper-parent/newspaper-statistics https://github.com/statsbiblioteket/newspaper-statistics master
sbforge-parent/newspaper-parent/newspaper-workflow-restart-trigger https://github.com/statsbiblioteket/newspaper-workflow-restart-trigger master
sbforge-parent/reference https://github.com/bitrepository/reference.git bitrepository-parent-1.3
