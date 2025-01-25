package io.github.zeroaicy.dexlib.rewriter;

import java.util.zip.ZipOutputStream;
import org.jf.dexlib2.writer.io.DexDataStore;
import org.jf.dexlib2.writer.io.MemoryDataStore;

public class ZipDataStore extends MemoryDataStore{
	ZipOutputStream zipOutput;

	public ZipDataStore(ZipOutputStream zipOutput){
		this.zipOutput = zipOutput;
	}
	
}
