.class public final Lcom/s1243808733/android/dx/rop/code/PlainInsn;
.super Lcom/s1243808733/android/dx/rop/code/Insn;
.source "PlainInsn.java"


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .locals 1

    .line 68
    invoke-static {p4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V
    .locals 2

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/rop/code/Insn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 44
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    if-eqz p3, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 53
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t mix branchingness with result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_2
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

    .line 80
    invoke-interface {p1, p0}, Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;->visitPlainInsn(Lcom/s1243808733/android/dx/rop/code/PlainInsn;)V

    return-void
.end method

.method public getCatches()Lcom/s1243808733/android/dx/rop/type/TypeList;
    .locals 1

    .line 74
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    return-object v0
.end method

.method public withAddedCatch(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/code/Insn;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withNewRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/Insn;
    .locals 3

    .line 152
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    return-object v0
.end method

.method public withRegisterOffset(I)Lcom/s1243808733/android/dx/rop/code/Insn;
    .locals 5

    .line 92
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    .line 93
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 94
    new-instance v3, Lcom/s1243808733/android/dx/rop/code/PlainInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    return-object v3
.end method

.method public withSourceLiteral()Lcom/s1243808733/android/dx/rop/code/Insn;
    .locals 6

    .line 100
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-object p0

    .line 107
    :cond_1
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v3

    if-nez v3, :cond_2

    .line 111
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v5

    const/4 v0, 0x2

    if-ne v2, v0, :cond_0

    .line 112
    invoke-interface {v5}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    check-cast v5, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 114
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withoutFirst()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    .line 115
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/s1243808733/android/dx/rop/code/Rops;->ropFor(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    .line 117
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    move-object p0, v0

    goto :goto_0

    .line 123
    :cond_2
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 125
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withoutLast()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_3

    .line 131
    instance-of v2, v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    if-eqz v2, :cond_3

    .line 133
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v0

    neg-int v0, v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v0

    const/16 v1, 0xe

    move-object v5, v0

    .line 135
    :goto_1
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-static {v1, v0, v4, v5}, Lcom/s1243808733/android/dx/rop/code/Rops;->ropFor(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/rop/code/Rop;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 141
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    .line 142
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    move-object p0, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_3
    move-object v5, v0

    goto :goto_1
.end method
