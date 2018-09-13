component {

  this.name = 'lucee_s3_error';
  this.s3.accessKeyid = getEnv( 'AWS_ACCESS_KEY_ID' );
  this.s3.awsSecretKey = getEnv( 'AWS_SECRET_ACCESS_KEY' );

  public function onApplicationStart() {
    application.bucketName = getEnv( 'AWS_DEMO_BUCKET_NAME' );
  }

  private function getEnv( required string key ) {
    var result = '';
    var system = createObject( "java", "java.lang.System" );
    var environment = system.getenv();

    if ( structKeyExists( environment, key ) && len( environment[ key ] ) )
      return environment[ key ];

    if ( !isNull( system.getProperty( key ) ) && len( system.getProperty( key ) ) )
      return system.getProperty( key );

    throw( 'Please add the #key# environment variable. An easy approach is via a .env file.');
  }

}