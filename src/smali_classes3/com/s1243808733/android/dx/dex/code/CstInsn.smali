.class public final Lcom/s1243808733/android/dx/dex/code/CstInsn;
.super Lcom/s1243808733/android/dx/dex/code/FixedSizeInsn;
.source "CstInsn.java"


# instance fields
.field private classIndex:I

.field private final constant:Lcom/s1243808733/android/dx/rop/cst/Constant;

.field private index:I


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V
    .registers 7

    const/4 v0, -0x1

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/s1243808733/android/dx/dex/code/FixedSizeInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    .line 60
    if-nez p4, :cond_0

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "constant == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iput-object p4, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->constant:Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 65
    iput v0, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->index:I

    .line 66
    iput v0, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->classIndex:I

    return-void
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->constant:Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cstComment()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 220
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->hasIndex()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    const-string v0, ""

    .line 234
    :goto_0
    return-object v0

    .line 224
    :cond_0
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

    if-ge v1, v2, :cond_1

    .line 229
    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->index:I

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 231
    :cond_1
    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->index:I

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public cstString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->constant:Lcom/s1243808733/android/dx/rop/cst/Constant;

    instance-of v0, v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->constant:Lcom/s1243808733/android/dx/rop/cst/Constant;

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toQuoted()Ljava/lang/String;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->constant:Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassIndex()I
    .registers 3

    .line 162
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->classIndex:I

    if-gez v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "class index not yet set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->classIndex:I

    return v0
.end method

.method public getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->constant:Lcom/s1243808733/android/dx/rop/cst/Constant;

    return-object v0
.end method

.method public getIndex()I
    .registers 4

    .line 119
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->index:I

    if-gez v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "index not yet set for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->constant:Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->index:I

    return v0
.end method

.method public hasClassIndex()Z
    .registers 2

    .line 178
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->classIndex:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasIndex()Z
    .registers 2

    .line 134
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->index:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setClassIndex(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 191
    if-gez p1, :cond_0

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->classIndex:I

    if-ltz v0, :cond_1

    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "class index already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_1
    iput p1, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->classIndex:I

    return-void
.end method

.method public setIndex(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 144
    if-gez p1, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->index:I

    if-ltz v0, :cond_1

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "index already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    iput p1, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->index:I

    return-void
.end method

.method public withOpcode(Lcom/s1243808733/android/dx/dex/code/Dop;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 72
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->constant:Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/s1243808733/android/dx/dex/code/CstInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 75
    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->index:I

    if-ltz v1, :cond_0

    .line 76
    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->index:I

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->setIndex(I)V

    .line 79
    :cond_0
    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->classIndex:I

    if-ltz v1, :cond_1

    .line 80
    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->classIndex:I

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->setClassIndex(I)V

    .line 83
    :cond_1
    return-object v0
.end method

.method public withRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 89
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    move-result-object v2

    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->constant:Lcom/s1243808733/android/dx/rop/cst/Constant;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/s1243808733/android/dx/dex/code/CstInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;Lcom/s1243808733/android/dx/rop/cst/Constant;)V

    .line 92
    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->index:I

    if-ltz v1, :cond_0

    .line 93
    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->index:I

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->setIndex(I)V

    .line 96
    :cond_0
    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->classIndex:I

    if-ltz v1, :cond_1

    .line 97
    iget v1, p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;->classIndex:I

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->setClassIndex(I)V

    .line 100
    :cond_1
    return-object v0
.end method
