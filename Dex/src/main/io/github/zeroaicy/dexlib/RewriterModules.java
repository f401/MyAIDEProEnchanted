package io.github.zeroaicy.dexlib;

import java.util.List;
import org.jf.dexlib2.rewriter.RewriterModule;
import java.util.ArrayList;

public class RewriterModules{
	private List<RewriterModule> rewriterModules = new ArrayList<>();
	
	public List<RewriterModule> getRewriterModules(){
		return rewriterModules;
	}
}
