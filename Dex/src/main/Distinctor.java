
import com.google.common.base.Charsets;
import com.google.common.collect.Sets;
import com.google.common.io.Files;
import com.google.common.io.LineProcessor;
import java.io.File;
import java.io.IOException;
import java.util.HashSet;
import java.io.PrintWriter;

public class Distinctor  
{
    public static void main(String[] args) throws Exception {
        final HashSet<String> left = Sets.newHashSet();
        Files.readLines(new File("/storage/emulated/0/Dex.classes"), Charsets.UTF_8,
            new LineProcessor<Void>() {

                @Override
                public Void getResult() {
                    return null;
                }

                @Override
                public boolean processLine(String string) throws IOException {
                    left.add(string);
                    return true;
                }
            });
        
        final HashSet<String> right = Sets.newHashSet();
        Files.readLines(new File("/storage/emulated/0/androidjarMethods.txt"), Charsets.UTF_8,
            new LineProcessor<Void>() {

                @Override
                public Void getResult() {
                    return null;
                }

                @Override
                public boolean processLine(String string) throws IOException {
                    right.add(string);
                    return true;
                }
            });
            
        PrintWriter pw = new PrintWriter("/sdcard/diff.txt");
        for (String item: left) {
            if (!right.contains(item)) {
                pw.println(item);
            }
        }
        pw.close();
    }
}
