.class public final Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;
.super Lcom/s1243808733/android/dx/rop/code/Insn;
.source "ThrowingInsn.java"


# instance fields
.field private final catches:Lcom/s1243808733/android/dx/rop/type/TypeList;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;)V
    .locals 2

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/s1243808733/android/dx/rop/code/Insn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 67
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    if-eqz p4, :cond_0

    .line 75
    iput-object p4, p0, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "catches == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
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

.method public static toCatchString(Lcom/s1243808733/android/dx/rop/type/TypeList;)Ljava/lang/String;
    .locals 4

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 43
    const-string v0, "catch"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-interface {p0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 47
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-interface {p0, v0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public accept(Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;)V
    .locals 0

    .line 93
    invoke-interface {p1, p0}, Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;->visitThrowingInsn(Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;)V

    return-void
.end method

.method public getCatches()Lcom/s1243808733/android/dx/rop/type/TypeList;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    return-object v0
.end method

.method public getInlineString()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->toCatchString(Lcom/s1243808733/android/dx/rop/type/TypeList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAddedCatch(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/code/Insn;
    .locals 5

    .line 99
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    .line 100
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    iget-object v4, p0, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-interface {v4, p1}, Lcom/s1243808733/android/dx/rop/type/TypeList;->withAddedType(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/type/TypeList;

    move-result-object v4

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;)V

    return-object v2
.end method

.method public withNewRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/Insn;
    .locals 4

    .line 116
    new-instance v0, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    iget-object v3, p0, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-direct {v0, v1, v2, p2, v3}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;)V

    return-object v0
.end method

.method public withRegisterOffset(I)Lcom/s1243808733/android/dx/rop/code/Insn;
    .locals 5

    .line 106
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    .line 107
    new-instance v2, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    iget-object v4, p0, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;)V

    return-object v2
.end method
