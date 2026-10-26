.class public final Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;
.super Lcom/s1243808733/android/dx/rop/code/CstInsn;
.source "ThrowingCstInsn.java"


# instance fields
.field private final catches:Lcom/s1243808733/android/dx/rop/type/TypeList;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .locals 6

    .line 45
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/rop/code/CstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 47
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    if-eqz p4, :cond_0

    .line 55
    iput-object p4, p0, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "catches == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
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

    .line 78
    invoke-interface {p1, p0}, Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;->visitThrowingCstInsn(Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;)V

    return-void
.end method

.method public getCatches()Lcom/s1243808733/android/dx/rop/type/TypeList;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    return-object v0
.end method

.method public getInlineString()Ljava/lang/String;
    .locals 3

    .line 61
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    move-result-object v1

    .line 63
    instance-of v2, v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-eqz v2, :cond_0

    .line 64
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->toCatchString(Lcom/s1243808733/android/dx/rop/type/TypeList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public withAddedCatch(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/code/Insn;
    .locals 6

    .line 84
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    .line 85
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v0, p1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->withAddedType(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v4

    .line 86
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    return-object v0
.end method

.method public withNewRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/Insn;
    .locals 6

    .line 103
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    iget-object v4, p0, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    .line 106
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    return-object v0
.end method

.method public withRegisterOffset(I)Lcom/s1243808733/android/dx/rop/code/Insn;
    .locals 6

    .line 92
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    .line 93
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    iget-object v4, p0, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    .line 95
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    return-object v0
.end method
