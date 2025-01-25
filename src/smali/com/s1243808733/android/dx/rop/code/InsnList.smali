.class public final Lcom/s1243808733/android/dx/rop/code/InsnList;
.super Lcom/s1243808733/android/dx/util/FixedSizeList;
.source "InsnList.java"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/s1243808733/android/dx/util/FixedSizeList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public contentEquals(Lcom/s1243808733/android/dx/rop/code/InsnList;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 91
    :cond_4
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->size()I

    move-result v1

    .line 93
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/InsnList;->size()I

    move-result v2

    if-eq v1, v2, :cond_f

    return v0

    :cond_f
    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_24

    .line 96
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v3

    invoke-virtual {p1, v2}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/rop/code/Insn;->contentEquals(Lcom/s1243808733/android/dx/rop/code/Insn;)Z

    move-result v3

    if-nez v3, :cond_21

    return v0

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_24
    const/4 p1, 0x1

    return p1
.end method

.method public forEach(Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;)V
    .registers 5

    .line 73
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    .line 76
    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/s1243808733/android/dx/rop/code/Insn;->accept(Lcom/s1243808733/android/dx/rop/code/Insn$Visitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method public get(I)Lcom/s1243808733/android/dx/rop/code/Insn;
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/s1243808733/android/dx/rop/code/Insn;

    return-object p1
.end method

.method public getLast()Lcom/s1243808733/android/dx/rop/code/Insn;
    .registers 2

    .line 64
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v0

    return-object v0
.end method

.method public set(ILcom/s1243808733/android/dx/rop/code/Insn;)V
    .registers 3

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/rop/code/InsnList;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public withRegisterOffset(I)Lcom/s1243808733/android/dx/rop/code/InsnList;
    .registers 6

    .line 114
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->size()I

    move-result v0

    .line 115
    new-instance v1, Lcom/s1243808733/android/dx/rop/code/InsnList;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/rop/code/InsnList;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1e

    .line 118
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/rop/code/InsnList;->get0(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/rop/code/Insn;

    if-eqz v3, :cond_1b

    .line 120
    invoke-virtual {v3, p1}, Lcom/s1243808733/android/dx/rop/code/Insn;->withRegisterOffset(I)Lcom/s1243808733/android/dx/rop/code/Insn;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/s1243808733/android/dx/rop/code/InsnList;->set0(ILjava/lang/Object;)V

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 124
    :cond_1e
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/InsnList;->isImmutable()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 125
    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/InsnList;->setImmutable()V

    :cond_27
    return-object v1
.end method
