.class public final Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;
.super Lcom/s1243808733/android/dx/rop/code/CstInsn;
.source "PlainCstInsn.java"


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .locals 2

    .line 42
    invoke-direct/range {p0 .. p5}, Lcom/s1243808733/android/dx/rop/code/CstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 44
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "opcode with invalid branchingness: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public accept(Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;)V
    .locals 0

    .line 58
    invoke-interface {p1, p0}, Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;->visitPlainCstInsn(Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;)V

    return-void
.end method

.method public getCatches()Lcom/s1243808733/android/dx/rop/type/TypeList;
    .locals 1

    .line 52
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    return-object v0
.end method

.method public withAddedCatch(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/code/Insn;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withNewRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/Insn;
    .locals 6

    .line 81
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    .line 84
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    return-object v0
.end method

.method public withRegisterOffset(I)Lcom/s1243808733/android/dx/rop/code/Insn;
    .locals 6

    .line 70
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    .line 71
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 72
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    .line 73
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    return-object v0
.end method
