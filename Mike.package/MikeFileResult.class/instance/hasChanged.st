testing
hasChanged

	| newEntry |
	newEntry := file entry.
	^ newEntry size ~= fileEntry size
		or: [ newEntry modificationTime ~= fileEntry modificationTime
			or: [ newEntry posixPermissions ~= fileEntry posixPermissions ] ]