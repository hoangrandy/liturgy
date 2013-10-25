<?php

class Songs extends Eloquent {
	protected $guarded = array();
	public static $main_song_directory = "songs";

	public static $rules = array();


	public static function classifySongMedia(){
		foreach( Songs::all() as $song ) {
			echo "............ \n";
			// echo "SONG: " . $song->title . "\n";
			$mediaEntries = Songs::getSongContents( $song );

			if( null != $mediaEntries ){
				foreach ( $mediaEntries as $entry ) {
					// echo "ENTRY: " . $entry . "\n";
					$blowup = explode( '.', $entry );
					$entryCount = count( $blowup );
					if( 0 == strcmp( $entry, '.DS_Store' )) {
						// skip
					}
					else if( $entryCount < 3 ){
						echo $entry . ": unknown type \n";
					}
					else {
						// echo $entry . ": " . $blowup[ count( $blowup ) - 3 ] . "\n";
					}
				}
			}

		}
	}

	public static function getSongContents( $song ){
		$mainDir = getcwd() . "/public";
		$url = Songs::getUrl( $song );
		if( $url == null ){
			return null;
		} else {
			$songDir = $mainDir . "/" . Songs::getUrl( $song );
			echo "SONG (" . $song->id . "): " . $songDir . "\n";
			$contents = scandir( $songDir );
			for($index = count( $contents ) - 1; $index >= 0; $index-- ){
				if( is_dir( $mainDir . "/" . $contents[ $index ] )){
					unset( $contents[ $index ] );
				}
			}
			return $contents;
		}
	}

	public static function getUrl( $song ){
		$directory = Songs::getSongDirectory( Songs::lookupPrefix( $song ));
		if( $directory != null ){
			return Songs::$main_song_directory . "/" . $directory;
		}
		else {
			return null;
		}
	}

	public static function lookupPrefix( $song ){
        // $song = Songs::find( $id );
        if( isset( $song ) ){
        	$prefix = null;
        	if( isset( $song->vocalprefix ) && !empty( $song->vocalprefix ) ){
        		$prefix = $song->vocalprefix;
        	}
        	else if( isset( $song->guitarprefix ) && !empty( $song->guitarprefix ) ){
        		$prefix = $song->guitarprefix;
        	}
        	else if( isset( $song->pianoprefix ) && !empty( $song->pianoprefix ) ){
        		$prefix = $song->pianoprefix;
        	}
        	else if( isset( $song->soloprefix ) && !empty( $song->soloprefix ) ){
        		$prefix = $song->soloprefix;
        	}
        	else if( isset( $song->mp3prefix ) && !empty( $song->mp3prefix ) ){
        		$prefix = $song->mp3prefix;
        	}
        	return $prefix;
        }
        else {
        	return null;
        }
	}

	public static function getSongDirectory( $str ){
		if( isset( $str ) && !empty( $str )){
			$exploded = explode( "/", $str );
			return $exploded[ 1 ];
		}
		else {
			return null;
		}
	}
}
