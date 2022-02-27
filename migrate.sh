if [ -z "$SCRIPT_HOME" ]; then
	echo "Missing environment variable SCRIPT_HOME"
	exit 1
fi

while read SCRIPT_FILE; do
	SCRIPT_FILE_PATH="$SCRIPT_HOME$SCRIPT_FILE"
	if [ -f $SCRIPT_FILE_PATH ]; then
		echo "mysql --login-path=refocus_metadata_service_admin < $SCRIPT_FILE_PATH"
		mysql --login-path=refocus_metadata_service_admin < $SCRIPT_FILE_PATH
		if [ $? -ne 0 ]; then
			echo "Error with script: $SCRIPT_FILE_PATH"
			exit 1
		fi
	else
		echo "File $SCRIPT_FILE_PATH not found"
		exit 1
	fi
done < $SCRIPT_HOME/migrate.txt

