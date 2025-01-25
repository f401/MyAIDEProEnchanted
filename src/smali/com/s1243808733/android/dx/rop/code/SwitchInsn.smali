.class public final Lcom/s1243808733/android/dx/rop/code/SwitchInsn;
.super Lcom/s1243808733/android/dx/rop/code/Insn;
.source "SwitchInsn.java"


# instance fields
.field private final cases:Lcom/s1243808733/android/dx/util/IntList;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/util/IntList;)V
    .registers 6

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/s1243808733/android/dx/rop/code/Insn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 45
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/Rop;->getBranchingness()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_17

    if-eqz p5, :cond_f

    .line 53
    iput-object p5, p0, Lcom/s1243808733/android/dx/rop/code/SwitchInsn;->cases:Lcom/s1243808733/android/dx/util/IntList;

    return-void

    .line 50
    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cases == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bogus branchingness"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public accept(Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;)V
    .registers 2

    .line 71
    invoke-interface {p1, p0}, Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;->visitSwitchInsn(Lcom/s1243808733/android/dx/rop/code/SwitchInsn;)V

    return-void
.end method

.method public contentEquals(Lcom/s1243808733/android/dx/rop/code/Insn;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public getCases()Lcom/s1243808733/android/dx/util/IntList;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/SwitchInsn;->cases:Lcom/s1243808733/android/dx/util/IntList;

    return-object v0
.end method

.method public getCatches()Lcom/s1243808733/android/dx/rop/type/TypeList;
    .registers 2

    .line 65
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/s1243808733/android/dx/rop/type/StdTypeList;

    return-object v0
.end method

.method public getInlineString()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/code/SwitchInsn;->cases:Lcom/s1243808733/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/IntList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAddedCatch(Lcom/s1243808733/android/dx/rop/type/Type;)Lcom/s1243808733/android/dx/rop/code/Insn;
    .registers 3

    .line 77
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withNewRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/Insn;
    .registers 10

    .line 105
    new-instance v6, Lcom/s1243808733/android/dx/rop/code/SwitchInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/SwitchInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/SwitchInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    iget-object v5, p0, Lcom/s1243808733/android/dx/rop/code/SwitchInsn;->cases:Lcom/s1243808733/android/dx/util/IntList;

    move-object v0, v6

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/rop/code/SwitchInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/util/IntList;)V

    return-object v6
.end method

.method public withRegisterOffset(I)Lcom/s1243808733/android/dx/rop/code/Insn;
    .registers 9

    .line 83
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/SwitchInsn;->getOpcode()Lcom/s1243808733/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/SwitchInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    .line 84
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/SwitchInsn;->getResult()Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 85
    new-instance v6, Lcom/s1243808733/android/dx/rop/code/SwitchInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/SwitchInsn;->getSources()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    iget-object v5, p0, Lcom/s1243808733/android/dx/rop/code/SwitchInsn;->cases:Lcom/s1243808733/android/dx/util/IntList;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/android/dx/rop/code/SwitchInsn;-><init>(Lcom/s1243808733/android/dx/rop/code/Rop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/util/IntList;)V

    return-object v6
.end method
