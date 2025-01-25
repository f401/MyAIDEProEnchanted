.class public final Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;
.super Lcom/s1243808733/android/dx/rop/code/Insn;
.source "ThrowingInsn.java"


# instance fields
.field private final catches:Lcom/s1243808733/android/dx/rop/type/TypeList;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;)V
    .registers 6

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/s1243808733/android/dx/rop/code/Insn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 67
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result p2

    const/4 p3, 0x6

    if-ne p2, p3, :cond_18

    if-eqz p4, :cond_10

    .line 75
    iput-object p4, p0, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    return-void

    .line 72
    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "catches == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_18
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

.method public static toCatchString(Lcom/s1243808733/android/dx/rop/type/TypeList;)Ljava/lang/String;
    .registers 5

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 43
    const-string v1, "catch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-interface {p0}, Lcom/s1243808733/android/dx/rop/type/TypeList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_26

    .line 47
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-interface {p0, v2}, Lcom/s1243808733/android/dx/rop/type/TypeList;->getType(I)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 51
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public accept(Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;)V
    .registers 2

    .line 93
    invoke-interface {p1, p0}, Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;->visitThrowingInsn(Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;)V

    return-void
.end method

.method public getCatches()Lcom/s1243808733/android/dx/rop/type/TypeList;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    return-object v0
.end method

.method public getInlineString()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->toCatchString(Lcom/s1243808733/android/dx/rop/type/TypeList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAddedCatch(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/code/Insn;
    .registers 7

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

    move-result-object p1

    invoke-direct {v2, v0, v1, v3, p1}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;)V

    return-object v2
.end method

.method public withNewRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/Insn;
    .registers 6

    .line 116
    new-instance p1, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-direct {p1, v0, v1, p2, v2}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;)V

    return-object p1
.end method

.method public withRegisterOffset(I)Lcom/s1243808733/android/dx/rop/code/Insn;
    .registers 6

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

    move-result-object p1

    iget-object v3, p0, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;->catches:Lcom/s1243808733/android/dx/rop/type/TypeList;

    invoke-direct {v2, v0, v1, p1, v3}, Lcom/s1243808733/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/type/TypeList;)V

    return-object v2
.end method
