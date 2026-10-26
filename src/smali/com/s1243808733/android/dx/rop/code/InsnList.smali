.class public final Lcom/s1243808733/android/dx/rop/code/InsnList;
.super Lcom/s1243808733/android/dx/util/FixedSizeList;
.source "InsnList.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public contentEquals(Lcom/s1243808733/android/dx/rop/code/InsnList;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->size()I

    move-result v2

    .line 93
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/InsnList;->size()I

    move-result v1

    if-ne v2, v1, :cond_0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 96
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v3

    invoke-virtual {p1, v1}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/rop/code/Insn;->contentEquals(Lcom/s1243808733/android/dx/rop/code/Insn;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public forEach(Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;)V
    .locals 3

    .line 73
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 76
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/s1243808733/android/dx/rop/code/Insn;->accept(Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(I)Lcom/s1243808733/android/dx/rop/code/Insn;
    .locals 1

    .line 44
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/Insn;

    return-object v0
.end method

.method public getLast()Lcom/s1243808733/android/dx/rop/code/Insn;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    return-object v0
.end method

.method public set(ILcom/s1243808733/android/dx/rop/code/Insn;)V
    .locals 0

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/rop/code/InsnList;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public withRegisterOffset(I)Lcom/s1243808733/android/dx/rop/code/InsnList;
    .locals 4

    .line 114
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->size()I

    move-result v2

    .line 115
    new-instance v3, Lcom/s1243808733/android/dx/rop/code/InsnList;

    invoke-direct {v3, v2}, Lcom/s1243808733/android/dx/rop/code/InsnList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 118
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/code/Insn;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/Insn;->withRegisterOffset(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->set0(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/InsnList;->setImmutable()V

    :cond_2
    return-object v3
.end method
