#! /usr/bin/env bash
dir=$(cd $(dirname $0) && pwd)
for i in *.yaml; do
	ln -sfn $dir/$i $GALAXY_ROOT/config/plugins/tours/$(basename $i)
done

[[ ! -e $GALAXY_ROOT/config/galaxy.ini ]] && cp $GALAXY_ROOT/config/galaxy.ini.sample $GALAXY_ROOT/config/galaxy.ini
sed -i -r 's/^\s*#+(\s*tour_config_dir.+)/\1/' $GALAXY_ROOT/config/galaxy.ini

$GALAXY_ROOT/run.sh
# source $GALAXY_ROOT/.venv/bin/activate
# pip install planemo bioblend
# planemo serve --galaxy_root=$GALAXY_ROOT
# deactivate
