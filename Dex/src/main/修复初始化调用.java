import org.jf.dexlib2.rewriter.*;

import javax.annotation.Nonnull;
import org.jf.dexlib2.Opcode;
import org.jf.dexlib2.iface.MethodImplementation;
import org.jf.dexlib2.iface.instruction.Instruction;
import org.jf.dexlib2.iface.instruction.formats.Instruction35c;
import org.jf.dexlib2.iface.instruction.formats.Instruction3rc;
import org.jf.dexlib2.iface.reference.MethodReference;
import org.jf.dexlib2.iface.reference.Reference;

public class 修复初始化调用 extends RewriterModule{
	
	//构造器的调用都为 invoke-direct 或 invoke-direct/range
	//把一个包的方法调用都改为，从invoke-direct变为 invoke-virtual
	// 然后在修复 <init>的调用
	// 在把private方法改为public
	
	@Nonnull 
	@Override
	public Rewriter<Instruction> getInstructionRewriter(@Nonnull Rewriters rewriters){
        return new InstructionRewriter(rewriters){
			@Nonnull
			@Override 
			public Instruction rewrite(@Nonnull Instruction instruction){

				switch(instruction.getOpcode()){
					case INVOKE_VIRTUAL:
						Instruction35c instruction35c = (Instruction35c)instruction;
						Reference reference = instruction35c.getReference();
						if( reference instanceof MethodReference){
							MethodReference methodReference = (MethodReference) reference;
							if("<init>".equals(methodReference.getName())){
								return new RewrittenInstruction35c(instruction35c){
									@Override
									public Opcode getOpcode() {
										return Opcode.INVOKE_DIRECT;
									}
								};
							}
						}
						break;
					case INVOKE_VIRTUAL_RANGE:
						Instruction3rc instruction3rc = (Instruction3rc)instruction;
						Reference reference2 = instruction3rc.getReference();
						if( reference2 instanceof MethodReference){
							MethodReference methodReference = (MethodReference) reference2;
							if("<init>".equals(methodReference.getName())){
								return new RewrittenInstruction3rc(instruction3rc){
									@Override
									public Opcode getOpcode() {
										return Opcode.INVOKE_DIRECT_RANGE;
									}
								};
							}
						}
						break;
				}
				return super.rewrite(instruction);
			}
		};
    }
}
