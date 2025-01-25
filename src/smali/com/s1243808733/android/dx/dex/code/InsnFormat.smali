.class public abstract Lcom/s1243808733/android/dx/dex/code/InsnFormat;
.super Ljava/lang/Object;
.source "InsnFormat.java"


# static fields
.field public static final ALLOW_EXTENDED_OPCODES:Z = true


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static argIndex(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)I
    .registers 2

    .line 421
    check-cast p0, Lcom/s1243808733/android/dx/dex/code/CstInsn;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/CstInsn;->getConstant()Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p0

    check-cast p0, Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->getValue()I

    move-result p0

    if-ltz p0, :cond_f

    return p0

    .line 424
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bogus insn"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static branchComment(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .registers 2

    .line 319
    check-cast p0, Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    .line 320
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;->getTargetOffset()I

    move-result p0

    int-to-short v0, p0

    if-ne p0, v0, :cond_e

    .line 322
    invoke-static {p0}, Lcom/s1243808733/android/dx/util/Hex;->s2(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_12

    :cond_e
    invoke-static {p0}, Lcom/s1243808733/android/dx/util/Hex;->s4(I)Ljava/lang/String;

    move-result-object p0

    :goto_12
    return-object p0
.end method

.method protected static branchString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .registers 2

    .line 306
    check-cast p0, Lcom/s1243808733/android/dx/dex/code/TargetInsn;

    .line 307
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/TargetInsn;->getTargetAddress()I

    move-result p0

    int-to-char v0, p0

    if-ne p0, v0, :cond_e

    .line 309
    invoke-static {p0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_12

    :cond_e
    invoke-static {p0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object p0

    :goto_12
    return-object p0
.end method

.method protected static codeUnit(II)S
    .registers 3

    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_15

    and-int/lit16 v0, p1, 0xff

    if-ne v0, p1, :cond_d

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0

    .line 484
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "high out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 480
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "low out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static codeUnit(IIII)S
    .registers 5

    and-int/lit8 v0, p0, 0xf

    if-ne v0, p0, :cond_33

    and-int/lit8 v0, p1, 0xf

    if-ne v0, p1, :cond_2b

    and-int/lit8 v0, p2, 0xf

    if-ne v0, p2, :cond_23

    and-int/lit8 v0, p3, 0xf

    if-ne v0, p3, :cond_1b

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    shl-int/lit8 p1, p3, 0xc

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0

    .line 513
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "n3 out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 509
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "n2 out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 505
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "n1 out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 501
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "n0 out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static isRegListSequential(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Z
    .registers 8

    .line 393
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_9

    return v2

    .line 399
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v0, :cond_28

    .line 403
    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    .line 404
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    if-eq v6, v3, :cond_20

    return v1

    .line 407
    :cond_20
    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_28
    return v2
.end method

.method protected static literalBitsComment(Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;I)Ljava/lang/String;
    .registers 5

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 274
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    instance-of v1, p0, Lcom/s1243808733/android/dx/rop/cst/CstLiteral64;

    if-eqz v1, :cond_17

    .line 279
    check-cast p0, Lcom/s1243808733/android/dx/rop/cst/CstLiteral64;

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstLiteral64;->getLongBits()J

    move-result-wide v1

    goto :goto_1c

    .line 281
    :cond_17
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    move-result p0

    int-to-long v1, p0

    :goto_1c
    const/4 p0, 0x4

    if-eq p1, p0, :cond_5a

    const/16 p0, 0x8

    if-eq p1, p0, :cond_51

    const/16 p0, 0x10

    if-eq p1, p0, :cond_48

    const/16 p0, 0x20

    if-eq p1, p0, :cond_3f

    const/16 p0, 0x40

    if-ne p1, p0, :cond_37

    .line 289
    invoke-static {v1, v2}, Lcom/s1243808733/android/dx/util/Hex;->u8(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_62

    .line 291
    :cond_37
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "shouldn\'t happen"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3f
    long-to-int p0, v1

    .line 288
    invoke-static {p0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_62

    :cond_48
    long-to-int p0, v1

    .line 287
    invoke-static {p0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_62

    :cond_51
    long-to-int p0, v1

    .line 286
    invoke-static {p0}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_62

    :cond_5a
    long-to-int p0, v1

    .line 285
    invoke-static {p0}, Lcom/s1243808733/android/dx/util/Hex;->uNibble(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :goto_62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static literalBitsString(Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;)Ljava/lang/String;
    .registers 3

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 249
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    instance-of v1, p0, Lcom/s1243808733/android/dx/rop/cst/CstKnownNull;

    if-eqz v1, :cond_16

    .line 252
    const-string p0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 254
    :cond_16
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstLiteralBits;->toHuman()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :goto_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static makeByte(II)I
    .registers 3

    and-int/lit8 v0, p0, 0xf

    if-ne v0, p0, :cond_14

    and-int/lit8 v0, p1, 0xf

    if-ne v0, p1, :cond_c

    shl-int/lit8 p1, p1, 0x4

    or-int/2addr p0, p1

    return p0

    .line 532
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "high out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 528
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "low out of range 0..15"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static opcodeUnit(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)S
    .registers 2

    .line 462
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object p0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/Dop;->getOpcode()I

    move-result p0

    const/16 v0, 0x100

    if-lt p0, v0, :cond_13

    const v0, 0xffff

    if-gt p0, v0, :cond_13

    int-to-short p0, p0

    return p0

    .line 465
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "opcode out of range 0..65535"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static opcodeUnit(Lcom/s1243808733/android/dx/dex/code/DalvInsn;I)S
    .registers 3

    and-int/lit16 v0, p1, 0xff

    if-ne v0, p1, :cond_1d

    .line 443
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object p0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/code/Dop;->getOpcode()I

    move-result p0

    and-int/lit16 v0, p0, 0xff

    if-ne v0, p0, :cond_15

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0

    .line 446
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "opcode out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 440
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "arg out of range 0..255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static regListString(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Ljava/lang/String;
    .registers 5

    .line 180
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 183
    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_2a

    if-eqz v2, :cond_1c

    .line 187
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_1c
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 192
    :cond_2a
    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static regRangeString(Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;)Ljava/lang/String;
    .registers 7

    .line 205
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 208
    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_49

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3e

    .line 220
    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_26

    .line 226
    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->withOffset(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 229
    :cond_26
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    const-string p0, ".."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_49

    .line 216
    :cond_3e
    invoke-virtual {p0, v2}, Lcom/s1243808733/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/s1243808733/android/dx/rop/code/RegisterSpec;

    move-result-object p0

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_49
    :goto_49
    const-string p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static signedFitsInByte(I)Z
    .registers 2

    int-to-byte v0, p0

    if-ne v0, p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method protected static signedFitsInNibble(I)Z
    .registers 2

    const/4 v0, -0x8

    if-lt p0, v0, :cond_8

    const/4 v0, 0x7

    if-gt p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method protected static signedFitsInShort(I)Z
    .registers 2

    int-to-short v0, p0

    if-ne v0, p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method protected static unsignedFitsInByte(I)Z
    .registers 2

    and-int/lit16 v0, p0, 0xff

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method protected static unsignedFitsInNibble(I)Z
    .registers 2

    and-int/lit8 v0, p0, 0xf

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method protected static unsignedFitsInShort(I)Z
    .registers 2

    const v0, 0xffff

    and-int/2addr v0, p0

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method protected static write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;S)V
    .registers 2

    .line 545
    invoke-interface {p0, p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    return-void
.end method

.method protected static write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SI)V
    .registers 4

    int-to-short v0, p2

    shr-int/lit8 p2, p2, 0x10

    int-to-short p2, p2

    .line 621
    invoke-static {p0, p1, v0, p2}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SSS)V

    return-void
.end method

.method protected static write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SIS)V
    .registers 5

    int-to-short v0, p2

    shr-int/lit8 p2, p2, 0x10

    int-to-short p2, p2

    .line 636
    invoke-static {p0, p1, v0, p2, p3}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SSSS)V

    return-void
.end method

.method protected static write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SISS)V
    .registers 11

    int-to-short v2, p2

    shr-int/lit8 p2, p2, 0x10

    int-to-short v3, p2

    .line 652
    move-object v0, p0

    move v1, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SSSSS)V

    return-void
.end method

.method protected static write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SJ)V
    .registers 11

    long-to-int v0, p2

    int-to-short v3, v0

    const/16 v0, 0x10

    shr-long v0, p2, v0

    long-to-int v1, v0

    int-to-short v4, v1

    const/16 v0, 0x20

    shr-long v0, p2, v0

    long-to-int v1, v0

    int-to-short v5, v1

    const/16 v0, 0x30

    shr-long/2addr p2, v0

    long-to-int p3, p2

    int-to-short v6, p3

    .line 665
    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SSSSS)V

    return-void
.end method

.method protected static write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SS)V
    .registers 3

    .line 556
    invoke-interface {p0, p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 557
    invoke-interface {p0, p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    return-void
.end method

.method protected static write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SSS)V
    .registers 4

    .line 570
    invoke-interface {p0, p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 571
    invoke-interface {p0, p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 572
    invoke-interface {p0, p3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    return-void
.end method

.method protected static write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SSSS)V
    .registers 5

    .line 586
    invoke-interface {p0, p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 587
    invoke-interface {p0, p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 588
    invoke-interface {p0, p3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 589
    invoke-interface {p0, p4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    return-void
.end method

.method protected static write(Lcom/s1243808733/android/dx/util/AnnotatedOutput;SSSSS)V
    .registers 6

    .line 604
    invoke-interface {p0, p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 605
    invoke-interface {p0, p2}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 606
    invoke-interface {p0, p3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 607
    invoke-interface {p0, p4}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 608
    invoke-interface {p0, p5}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->writeShort(I)V

    return-void
.end method


# virtual methods
.method public branchFits(Lcom/s1243808733/android/dx/dex/code/TargetInsn;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public abstract codeSize()I
.end method

.method public compatibleRegs(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .registers 2

    .line 142
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    return-object p1
.end method

.method public abstract insnArgString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
.end method

.method public abstract insnCommentString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
.end method

.method public abstract isCompatible(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Z
.end method

.method public final listingString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .registers 6

    .line 54
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/s1243808733/android/dx/dex/code/Dop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/code/Dop;->getName()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->insnArgString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/dex/code/InsnFormat;->insnCommentString(Lcom/s1243808733/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;

    move-result-object p1

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 59
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_28

    .line 62
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_36

    .line 67
    const-string v0, " // "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_36
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;Lcom/s1243808733/android/dx/dex/code/DalvInsn;)V
.end method
