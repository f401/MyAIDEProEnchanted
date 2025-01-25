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
    .registers 5

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_23

    if-eqz p2, :cond_1b

    if-eqz p3, :cond_13

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->address:I

    .line 109
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->opcode:Lcom/s1243808733/android/dx/dex/code/Dop;

    .line 110
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->position:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    .line 111
    iput-object p3, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->registers:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    return-void

    .line 105
    :cond_13
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "registers == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_1b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "position == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_23
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "opcode == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static makeMove(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/dex/code/SimpleInsn;
    .registers 8

    .line 57
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 58
    :goto_9
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getType()Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->isReference()Z

    move-result v0

    .line 59
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    .line 60
    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    or-int/2addr v3, v2

    const/16 v4, 0x10

    if-ge v3, v4, :cond_2b

    if-eqz v0, :cond_23

    .line 64
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->MOVE_OBJECT:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_48

    :cond_23
    if-eqz v1, :cond_28

    .line 65
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->MOVE:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_48

    :cond_28
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->MOVE_WIDE:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_48

    :cond_2b
    const/16 v3, 0x100

    if-ge v2, v3, :cond_3c

    if-eqz v0, :cond_34

    .line 67
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->MOVE_OBJECT_FROM16:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_48

    :cond_34
    if-eqz v1, :cond_39

    .line 68
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->MOVE_FROM16:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_48

    :cond_39
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->MOVE_WIDE_FROM16:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_48

    :cond_3c
    if-eqz v0, :cond_41

    .line 70
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->MOVE_OBJECT_16:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_48

    :cond_41
    if-eqz v1, :cond_46

    .line 71
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->MOVE_16:Lcom/s1243808733/android/dx/dex/code/Dop;

    goto :goto_48

    :cond_46
    sget-object v0, Lcom/s1243808733/android/dx/dex/code/Dops;->MOVE_WIDE_16:Lcom/s1243808733/android/dx/dex/code/Dop;

    .line 74
    :goto_48
    nop

    .line 75
    new-instance v1, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    invoke-static {p1, p2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->make(Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    invoke-direct {v1, v0, p0, p1}, Lcom/s1243808733/android/dx/dex/code/SimpleInsn;-><init>(Lcom/s1243808733/android/dx/dex/code/Dop;Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    return-object v1
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

    .line 263
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->registers:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    .line 264
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    .line 266
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->hasResult()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 268
    :cond_10
    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->subset(Ljava/util/BitSet;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 270
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->hasResult()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {p1, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 272
    :cond_1d
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result p1

    if-nez p1, :cond_25

    const/4 p1, 0x0

    return-object p1

    .line 274
    :cond_25
    new-instance p1, Lcom/s1243808733/android/dx/dex/code/HighRegisterPrefix;

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->position:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    invoke-direct {p1, v1, v0}, Lcom/s1243808733/android/dx/dex/code/HighRegisterPrefix;-><init>(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)V

    return-object p1
.end method

.method public expandedSuffix(Ljava/util/BitSet;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 4

    .line 288
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 289
    iget-object p1, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->registers:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    .line 290
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->position:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->makeMove(Lcom/s1243808733/android/dx/rop/code/SourcePosition;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;Lcom/s1243808733/android/dx/rop/code/RegisterSpec;)Lcom/s1243808733/android/dx/dex/code/SimpleInsn;

    move-result-object p1

    return-object p1

    :cond_1e
    const/4 p1, 0x0

    return-object p1
.end method

.method public expandedVersion(Ljava/util/BitSet;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 5

    .line 311
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->registers:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    .line 312
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->hasResult()Z

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withExpandedRegisters(IZLjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    .line 313
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->withRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object p1

    return-object p1
.end method

.method public final getAddress()I
    .registers 3

    .line 163
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->address:I

    if-ltz v0, :cond_5

    return v0

    .line 164
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "address not yet known"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLowRegVersion()Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 5

    .line 247
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->registers:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    .line 248
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->hasResult()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->withExpandedRegisters(IZLjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 249
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->withRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object v0

    return-object v0
.end method

.method public final getMinimumRegisterRequirement(Ljava/util/BitSet;)I
    .registers 7

    .line 221
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->hasResult()Z

    move-result v0

    .line 222
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->registers:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-virtual {v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    .line 226
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 227
    iget-object v3, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->registers:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v3

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    if-ge v0, v1, :cond_35

    .line 231
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_32

    .line 232
    iget-object v4, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->registers:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-virtual {v4, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v4

    add-int/2addr v2, v4

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 236
    :cond_35
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
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

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
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
    .registers 4

    .line 323
    iget v0, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->address:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    .line 324
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "%04x"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 327
    :cond_16
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final listingString(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 6

    .line 346
    invoke-virtual {p0, p3}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->listingString0(Z)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 352
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->identifierString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 353
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez p2, :cond_2b

    .line 354
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    goto :goto_2c

    :cond_2b
    sub-int/2addr p2, v0

    .line 356
    :goto_2c
    const-string v1, ""

    invoke-static {p1, v0, v1, p3, p2}, Lcom/s1243808733/android/dx/util/TwoColumnOutput;->toString(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract listingString0(Z)Ljava/lang/String;
.end method

.method public final setAddress(I)V
    .registers 3

    if-ltz p1, :cond_5

    .line 369
    iput p1, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->address:I

    return-void

    .line 366
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "address < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 119
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->identifierString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->position:Lcom/s1243808733/android/dx/rop/code/SourcePosition;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->opcode:Lcom/s1243808733/android/dx/dex/code/Dop;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/code/Dop;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->registers:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    if-eqz v2, :cond_3e

    .line 128
    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->registers:Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    const-string v3, ", "

    const/4 v4, 0x0

    const-string v5, " "

    invoke-virtual {v2, v5, v3, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->toHuman(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    .line 132
    :goto_3f
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->argString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_52

    if-eqz v2, :cond_4c

    .line 135
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    :cond_4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withMapper(Lcom/s1243808733/android/dx/ssa/RegisterMapper;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
    .registers 3

    .line 392
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/ssa/RegisterMapper;->map(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->withRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;

    move-result-object p1

    return-object p1
.end method

.method public abstract withOpcode(Lcom/s1243808733/android/dx/dex/code/Dop;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
.end method

.method public abstract withRegisterOffset(I)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
.end method

.method public abstract withRegisters(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Lcom/s1243808733/android/dx/dex/code/DalvInsn;
.end method

.method public abstract writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
.end method
