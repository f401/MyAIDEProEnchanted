.class public abstract Lcom/s1243808733/android/dx/dex/code/DalvInsn;
.super Ljava/lang/Object;
.source "DalvInsn.java"


# instance fields
.field private address:I

.field private final opcode:Lcom/s1243808733/android/dx/dex/code/Dop;

.field private final position:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

.field private final registers:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V
    .registers 6

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    if-nez p1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "opcode == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    if-nez p2, :cond_1

    .line 101
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "position == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    if-nez p3, :cond_2

    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "registers == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->address:I

    .line 109
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->opcode:Lcom/s1243808733/android/dx/dex/code/Dop;

    .line 110
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->position:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    .line 111
    iput-object p3, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->registers:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    return-void
.end method

.method public static makeMove(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/dex/code/SimpleInsn;
    .registers 8

    const/4 v0, 0x1

    .line 57
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    .line 58
    :cond_0
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/type/Type;->isReference()Z

    move-result v1

    .line 59
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    .line 60
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    .line 61
    or-int/2addr v3, v2

    const/16 v4, 0x10

    if-ge v3, v4, :cond_3

    .line 64
    if-eqz v1, :cond_1

    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->MOVE_OBJECT:Lcom/s1243808733/android/dx/dex/code/Dop;

    .line 74
    :goto_0
    new-instance v1, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    invoke-static {p1, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    invoke-direct {v1, v0, p0, v2}, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    return-object v1

    .line 64
    :cond_1
    if-eqz v0, :cond_2

    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->MOVE:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->MOVE_WIDE:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_0

    .line 66
    :cond_3
    const/16 v3, 0x100

    if-ge v2, v3, :cond_6

    .line 67
    if-eqz v1, :cond_4

    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->MOVE_OBJECT_FROM16:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->MOVE_FROM16:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->MOVE_WIDE_FROM16:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_0

    .line 70
    :cond_6
    if-eqz v1, :cond_7

    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->MOVE_OBJECT_16:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_8

    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->MOVE_16:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->MOVE_WIDE_16:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_0
.end method


# virtual methods
.method protected abstract argString()Ljava/lang/String;
.end method

.method public abstract codeSize()I
.end method

.method public cstComment()Ljava/lang/String;
    .registers 3

    .line 485
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cstString()Ljava/lang/String;
    .registers 3

    .line 472
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public expandedPrefix(Ljava/util/BitSet;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 6

    const/4 v3, 0x0

    .line 263
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->registers:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    .line 264
    invoke-virtual {p1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    .line 266
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->hasResult()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 268
    :cond_0
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->subset(Ljava/util/BitSet;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    .line 270
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v3, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 272
    :cond_1
    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    .line 274
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lcom/s1243808733/android/dx/dex/code/HighRegisterPrefix;

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->position:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    invoke-direct {v0, v1, v2}, Lcom/s1243808733/android/dx/dex/code/HighRegisterPrefix;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    goto :goto_0
.end method

.method public expandedSuffix(Ljava/util/BitSet;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 5

    const/4 v2, 0x0

    .line 288
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->registers:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->position:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->makeMove(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    move-result-object v0

    .line 292
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    goto :goto_0
.end method

.method public expandedVersion(Ljava/util/BitSet;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 5

    .line 311
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->registers:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->hasResult()Z

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withExpandedRegisters(IZLjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 313
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->withRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v0

    return-object v0
.end method

.method public final getAddress()I
    .registers 3

    .line 163
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->address:I

    if-gez v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "address not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->address:I

    return v0
.end method

.method public getLowRegVersion()Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 5

    .line 247
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->registers:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->hasResult()Z

    move-result v3

    const/4 v0, 0x0

    check-cast v0, Ljava/util/BitSet;

    invoke-virtual {v1, v2, v3, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withExpandedRegisters(IZLjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 249
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->withRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v0

    return-object v0
.end method

.method public final getMinimumRegisterRequirement(Ljava/util/BitSet;)I
    .registers 7

    const/4 v1, 0x0

    .line 221
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->hasResult()Z

    move-result v2

    .line 222
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->registers:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v4

    .line 226
    if-eqz v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->registers:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v0

    move v3, v0

    .line 230
    :goto_0
    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    move v2, v0

    :goto_2
    if-lt v2, v4, :cond_1

    .line 236
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    move v0, v1

    .line 230
    goto :goto_1

    .line 231
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->registers:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v0

    add-int/2addr v0, v1

    .line 230
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    move v3, v1

    goto :goto_0
.end method

.method public final getNextAddress()I
    .registers 3

    .line 381
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result v0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->codeSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->opcode:Lcom/s1243808733/android/dx/dex/code/Dop;

    return-object v0
.end method

.method public final getPosition()Lcom/s1243808733/android/dx/rop/code/SourcePosition;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->position:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    return-object v0
.end method

.method public final getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->registers:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    return-object v0
.end method

.method public final hasAddress()Z
    .registers 2

    .line 151
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->address:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hasResult()Z
    .registers 2

    .line 205
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->opcode:Lcom/s1243808733/android/dx/dex/code/Dop;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/Dop;->hasResult()Z

    move-result v0

    return v0
.end method

.method public final identifierString()Ljava/lang/String;
    .registers 6

    .line 323
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->address:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 324
    const-string v0, "%04x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->address:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final listingString(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 9

    .line 346
    invoke-virtual {p0, p3}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->listingString0(Z)Ljava/lang/String;

    move-result-object v1

    .line 348
    if-nez v1, :cond_0

    .line 349
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    .line 356
    :goto_0
    return-object v0

    .line 352
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->identifierString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 353
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 354
    if-nez p2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 356
    :goto_1
    const-string v4, ""

    invoke-static {v2, v3, v4, v1, v0}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->toString(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 354
    :cond_1
    sub-int v0, p2, v3

    goto :goto_1
.end method

.method protected abstract listingString0(Z)Ljava/lang/String;
.end method

.method public final setAddress(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 365
    if-gez p1, :cond_0

    .line 366
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "address < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_0
    iput p1, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->address:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 7
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/16 v5, 0x20

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 119
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->identifierString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->position:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->opcode:Lcom/s1243808733/android/dx/dex/code/Dop;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/Dop;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const/4 v0, 0x0

    .line 127
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->registers:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->registers:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    const-string v3, " "

    const-string v4, ", "

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->toHuman(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const/4 v0, 0x1

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->argString()Ljava/lang/String;

    move-result-object v2

    .line 133
    if-eqz v2, :cond_2

    .line 134
    if-eqz v0, :cond_1

    .line 135
    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withMapper(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 3

    .line 392
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/ssa/RegisterMapper;->map(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->withRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v0

    return-object v0
.end method

.method public abstract withOpcode(Lcom/s1243808733/android/dx/dex/code/Dop;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
.end method

.method public abstract withRegisterOffset(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
.end method

.method public abstract withRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
.end method

.method public abstract writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/util/AnnotatedOutput;",
            ")V"
        }
    .end annotation
.end method
