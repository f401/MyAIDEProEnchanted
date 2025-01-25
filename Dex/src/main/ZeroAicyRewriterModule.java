
import org.jf.dexlib2.rewriter.*;

import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import org.jf.dexlib2.ValueType;
import org.jf.dexlib2.base.value.BaseStringEncodedValue;
import org.jf.dexlib2.dexbacked.value.DexBackedStringEncodedValue;
import org.jf.dexlib2.iface.Method;
import org.jf.dexlib2.iface.MethodImplementation;
import org.jf.dexlib2.iface.value.EncodedValue;
import java.util.Objects;
import java.util.Map;
import java.util.HashMap;


public class ZeroAicyRewriterModule extends RewriterModule{
	//去除类名过长的类
	public ZeroAicyRewriterModule(){
	}
	
	@Nonnull public Rewriter<MethodImplementation> getMethodImplementationRewriter(@Nonnull Rewriters rewriters){
        return new MethodImplementationRewriter(rewriters);
    }
	
	//*
	@Override
	@Nonnull 
	public Rewriter<EncodedValue> getEncodedValueRewriter(@Nonnull Rewriters rewriters){
        return new EncodedValueRewriter(rewriters){
			@Nonnull
			@Override
			public EncodedValue rewrite(@Nonnull EncodedValue encodedValue){
				switch(encodedValue.getValueType()){
					case ValueType.STRING:
						final DexBackedStringEncodedValue stringEncodedValue = (DexBackedStringEncodedValue) encodedValue;
						
						return new BaseStringEncodedValue(){
							@Override
							public String getValue(){
								String value = stringEncodedValue.getValue();
								if(!value.contains("淆") && ! value.contains("混")){
									return value;
								}

								System.out.println("old value" + value.length());
								value = eliminate(value);
								System.out.println("new value" + value.length());
								System.out.println();

								if(true) return value;
								if(value.length() > 1 && value.contains("L") && !value.contains("/")){
									StringBuilder valueStringBuilder = new StringBuilder(value);

									if(value.startsWith("L")){
										valueStringBuilder.insert(1, "abcd/");
									}else if(value.contains("[L")){
										//[Ltll;
										valueStringBuilder.insert(value.lastIndexOf("[L") + 1 + 1, "abcd/");
									}else{
										System.out.println("name: " + value);
									}
									return valueStringBuilder.toString();
								}
								return value;
							}


						};
				}
				return super.rewrite(encodedValue);
			}
		};
    }
	//*/



	///**
	@Override
	public Rewriter<String> getTypeRewriter(Rewriters rewriters){
		return new Rewriter<String>() {

			@Override
			public String rewrite(String value){
				if(!value.contains("淆") && ! value.contains("混")){
					return value;
				}
				System.out.println("old value" + value.length());
				value = eliminate(value);
				System.out.println("new value" + value.length());

				if(true) return value;

				StringBuilder stringBuilder = new StringBuilder(value);
				if(value.length() > 1 && value.contains("L") && !value.contains("/")){
					if(value.startsWith("L")){
						stringBuilder.insert(1, "abcd/");
					}else if(value.contains("[L")){
						//[Ltll;
						stringBuilder.insert(value.lastIndexOf("[L") + 1 + 1, "abcd/");
					}else{
						System.out.println(value);
					}
				}
				return stringBuilder.toString();
			}


		};
	}
	//*/

	Map<String, String> cacheMap = new HashMap<>();
	int i = 0;
	private String eliminate(String value){
		//for(int i = 0; i < 5; i++){

		String oldValue = value;
		if( cacheMap.containsKey(oldValue)){
			return cacheMap.get(oldValue);
		}
		
		
		return value;
	}
}
