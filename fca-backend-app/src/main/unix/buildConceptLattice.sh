#!/usr/bin/env sh

java -cp "../${project.build.finalName}.jar:../lib/*:/usr/lib/hadoop/client-0.20/*" com.mgarciaroig.pfc.fca.export.action.BuildConceptLatticeGraphAction ${databaseDriver} ${databaseConnString} ${databaseUser} ${databasePassword}