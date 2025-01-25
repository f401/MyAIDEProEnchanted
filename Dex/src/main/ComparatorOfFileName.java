

import java.io.File;
import java.util.Comparator;

public class ComparatorOfFileName implements Comparator<File>{

	private static ComparatorOfFileName Singleten;
	public static ComparatorOfFileName getSingleten(){
		if( Singleten == null ){
			Singleten = new ComparatorOfFileName();
		}
		return Singleten;
	}
	@Override
	public int compare(File t, File tParam1){
		return compareFileName(t.getName(),tParam1.getName());
	}

    /** Length of string is passed in for improved efficiency (only need to calculate it once) **/
    private final String getChunk(String s, int slength, int marker){
        StringBuilder chunk = new StringBuilder();
        char c = s.charAt(marker);
        chunk.append(c);
        marker++;
        if(Character.isDigit(c)){
            while(marker < slength){
                c = s.charAt(marker);
                if(!Character.isDigit(c)){
                    break;
                }
                chunk.append(c);
                marker++;
            }
        }else{
            while(marker < slength){
                c = s.charAt(marker);
                if(Character.isDigit(c)){
                    break;
                }
                chunk.append(c);
                marker++;
            }
        }
        return chunk.toString();
    }
    public int compareFileName(String s1, String s2){
        if((s1 == null) || (s2 == null)){
            return 0;
        }

        int thisMarker = 0;
        int thatMarker = 0;
        int s1Length = s1.length();
        int s2Length = s2.length();

        while(thisMarker < s1Length && thatMarker < s2Length){
            String thisChunk = getChunk(s1, s1Length, thisMarker);
            thisMarker += thisChunk.length();

            String thatChunk = getChunk(s2, s2Length, thatMarker);
            thatMarker += thatChunk.length();

            // If both chunks contain numeric characters, sort them numerically
            int result = 0;
            if(Character.isDigit(thisChunk.charAt(0)) && Character.isDigit(thatChunk.charAt(0))){
                // Simple chunk comparison by length.
                int thisChunkLength = thisChunk.length();
                result = thisChunkLength - thatChunk.length();
                // If equal, the first different number counts
                if(result == 0){
                    for(int i = 0; i < thisChunkLength; i++){
                        result = thisChunk.charAt(i) - thatChunk.charAt(i);
                        if(result != 0){
                            return result;
                        }
                    }
                }
            }else{
                result = thisChunk.compareTo(thatChunk);
            }

            if(result != 0){
                return result;
            }
        }

        return s1Length - s2Length;
    }
}

