accessing
command

	^ 'wget -O - get.pharo.org/{getString} | bash' format: { 'getString' -> getString } asDictionary