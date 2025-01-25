.class public final Lcom/s1243808733/android/dx/rop/code/PlainInsn;
.super Lcom/s1243808733/android/dx/rop/code/Insn;
.source "PlainInsn.java"


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)V
    .registers 5

    .line 68
    invoke-static {p4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V
    .registers 5

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/rop/code/Insn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 44
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result p2

    const/4 p4, 0x5

    if-eq p2, p4, :cond_20

    const/4 p4, 0x6

    if-eq p2, p4, :cond_20

    if-eqz p3, :cond_1f

    .line 51
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_17

    goto :goto_1f

    .line 53
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "can\'t mix branchingness with result"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    :goto_1f
    return-void

    .line 47
    :cond_20
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "opcode with invalid branchingness: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public accept(Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;)V
    .registers 2

    .line 80
    invoke-interface {p1, p0}, Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;->visitPlainInsn(Lcom/s1243808733/android/dx/rop/code/PlainInsn;)V

    return-void
.end method

.method public getCatches()Lcom/s1243808733/android/dx/rop/type/TypeList;
    .registers 2

    .line 74
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    return-object v0
.end method

.method public withAddedCatch(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/code/Insn;
    .registers 3

    .line 86
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withNewRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/Insn;
    .registers 6

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
    .registers 7

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

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    return-object v3
.end method

.method public withSourceLiteral()Lcom/s1243808733/android/dx/rop/code/Insn;
    .registers 10

    .line 100
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    if-nez v1, :cond_b

    return-object p0

    .line 107
    :cond_b
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v2

    .line 109
    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v3

    if-nez v3, :cond_54

    .line 111
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/s1243808733/android/dx/rop/type/TypeBearer;

    move-result-object v2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_53

    .line 112
    invoke-interface {v2}, Lcom/s1243808733/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 113
    move-object v8, v2

    check-cast v8, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 114
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withoutFirst()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v7

    .line 115
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-static {v0, v1, v7, v8}, Lcom/s1243808733/android/dx/rop/code/Rops;->ropFor(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v4

    .line 117
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v5

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    return-object v0

    :cond_53
    return-object p0

    .line 123
    :cond_54
    check-cast v2, Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 125
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withoutLast()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v7

    .line 130
    :try_start_5a
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_79

    .line 131
    instance-of v1, v2, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    if-eqz v1, :cond_79

    .line 133
    check-cast v2, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v0

    neg-int v0, v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v2

    const/16 v0, 0xe

    move-object v8, v2

    goto :goto_7a

    .line 135
    :cond_79
    move-object v8, v2

    :goto_7a
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-static {v0, v1, v7, v8}, Lcom/s1243808733/android/dx/rop/code/Rops;->ropFor(ILcom/s1243808733/android/dx/rop/type/TypeBearer;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v4
    :try_end_82
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5a .. :try_end_82} :catch_91

    .line 141
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v5

    .line 142
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/PlainInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/s1243808733/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    return-object v0

    :catch_91
    move-exception v0

    return-object p0
.end method
