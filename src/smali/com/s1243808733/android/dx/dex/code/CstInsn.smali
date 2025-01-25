.class public final Lcom/s1243808733/android/dx/dex/code/CstInsn;
.super Lcom/s1243808733/android/dx/dex/code/FixedSizeInsn;
.source "CstInsn.java"


# instance fields
.field private classIndex:I

.field private final constant:Lcom/s1243808733/android/dx/rop/cst/Constant;

.field private index:I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 5

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/dex/code/FixedSizeInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    if-eqz p4, :cond_d

    .line 64
    iput-object p4, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->constant:Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 65
    const/4 p1, -0x1

    iput p1, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->index:I

    .line 66
    iput p1, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->classIndex:I

    return-void

    .line 61
    :cond_d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "constant == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->constant:Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cstComment()Ljava/lang/String;
    .registers 4

    .line 220
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->hasIndex()Z

    move-result v0

    if-nez v0, :cond_9

    .line 221
    const-string v0, ""

    return-object v0

    .line 224
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 225
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/cst/Constant;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->index:I

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_2e

    .line 229
    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 231
    :cond_2e
    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :goto_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cstString()Ljava/lang/String;
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->constant:Lcom/s1243808733/android/dx/rop/cst/Constant;

    instance-of v1, v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-eqz v1, :cond_d

    .line 212
    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 214
    :cond_d
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassIndex()I
    .registers 3

    .line 162
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->classIndex:I

    if-ltz v0, :cond_5

    return v0

    .line 163
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "class index not yet set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->constant:Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-object v0
.end method

.method public getIndex()I
    .registers 3

    .line 119
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->index:I

    if-ltz v0, :cond_5

    return v0

    .line 120
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "index not yet set for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->constant:Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasClassIndex()Z
    .registers 2

    .line 178
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->classIndex:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasIndex()Z
    .registers 2

    .line 134
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->index:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setClassIndex(I)V
    .registers 3

    if-ltz p1, :cond_11

    .line 195
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->classIndex:I

    if-gez v0, :cond_9

    .line 199
    iput p1, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->classIndex:I

    return-void

    .line 196
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "class index already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 192
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIndex(I)V
    .registers 3

    if-ltz p1, :cond_11

    .line 148
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->index:I

    if-gez v0, :cond_9

    .line 152
    iput p1, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->index:I

    return-void

    .line 149
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "index already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withOpcode(Lcom/s1243808733/android/dx/dex/code/Dop;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 6

    .line 72
    nop

    .line 73
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->constant:Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/s1243808733/android/dx/dex/code/CstInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 75
    iget p1, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->index:I

    if-ltz p1, :cond_17

    .line 76
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->setIndex(I)V

    .line 79
    :cond_17
    iget p1, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->classIndex:I

    if-ltz p1, :cond_1e

    .line 80
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->setClassIndex(I)V

    :cond_1e
    return-object v0
.end method

.method public withRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 6

    .line 89
    nop

    .line 90
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->constant:Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/s1243808733/android/dx/dex/code/CstInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 92
    iget p1, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->index:I

    if-ltz p1, :cond_17

    .line 93
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->setIndex(I)V

    .line 96
    :cond_17
    iget p1, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->classIndex:I

    if-ltz p1, :cond_1e

    .line 97
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->setClassIndex(I)V

    :cond_1e
    return-object v0
.end method
