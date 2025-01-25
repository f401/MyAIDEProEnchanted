package io.github.zeroaicy.dexlib;
import org.jf.dexlib2.rewriter.RewriterModule;
import org.jf.dexlib2.rewriter.Rewriter;
import org.jf.dexlib2.rewriter.Rewriters;
import java.util.Map;
import java.util.HashMap;
import org.jf.dexlib2.rewriter.TypeRewriter;

//重命名修改器
public class RenameRewriterModule extends RewriterModule{
	public class RenameTypeRewriter extends TypeRewriter{
		@Override
		public String rewriteUnwrappedType(String value){
			return rewriteTypeName(value);
		}
	}
	RenameTypeRewriter renameTypeRewriter = new RenameTypeRewriter();
	@Override
	public Rewriter<String> getTypeRewriter(Rewriters rewriters){
		return renameTypeRewriter;
	}
	Map<String, String> typeNameMap = new HashMap<>();
	private String rewriteTypeName(String value){
		if(value.length() <=0 || value.charAt(0) != 'L'){
			return value;
		}
		
		String renameValue = typeNameMap.get(value);
		if ( renameValue == null ){
			renameValue = new StringBuilder(value).insert(1, "abcd/").toString();
			typeNameMap.put(value, renameValue);
		}
		return renameValue;
	}

	//是Java类数组
	private int isArrayType(String value){
		for ( int index = 0, length = value.length(); index < length; index++ ){
			char charAt = value.charAt(index);
			if ( charAt == '[' ){
				continue;
			}else{
				return charAt == 'L' ? index : -1;
			}
		}
		return -1;
	}
}
