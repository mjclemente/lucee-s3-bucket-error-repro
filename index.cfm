<cfscript>
directoryPath = 's3://#application.bucketName#/';
paths = directoryList( directoryPath );
writeOutput( 'There are #paths.len()# items in the directory. And this caused an error in the console.' );
</cfscript>
