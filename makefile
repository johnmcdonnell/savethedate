remoteuser = mkrehm_savethedate
remotehost = ssh.phx.nearlyfreespeech.net
remotedir  = /home/public
localdir   = .
switches   = -Cavz --exclude ".git" --exclude ".*" --exclude "*.tgz*" --exclude "makefile"

sd = $(patsubst %/,%,$(tdir))

deploy:
	rsync $(switches) $(localdir)$(sd)/ $(remoteuser)@$(remotehost):$(remotedir)$(sd)/

.PHONY: deploy
