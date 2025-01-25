.class public final Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;
.super Ljava/lang/Object;
.source "ConstantPoolParser.java"


# instance fields
.field private final bytes:Lcom/s1243808733/android/dx/util/ByteArray;

.field private endOffset:I

.field private observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

.field private final offsets:[I

.field private final pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/util/ByteArray;)V
    .registers 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    .line 86
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    .line 87
    new-instance p1, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    invoke-direct {p1, v0}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;-><init>(I)V

    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    .line 88
    new-array p1, v0, [I

    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    .line 89
    const/4 p1, -0x1

    iput p1, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    return-void
.end method

.method private determineOffsets()V
    .registers 7

    const/16 v0, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 190
    :goto_4
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v4, v3

    if-ge v2, v4, :cond_6f

    .line 191
    aput v0, v3, v2

    .line 192
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v3, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v3

    packed-switch v3, :pswitch_data_72

    .line 238
    :pswitch_14  #0x2, 0xd, 0xe, 0x11
    :try_start_14
    new-instance v1, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    goto :goto_34

    :pswitch_17  #0xf
    add-int/lit8 v0, v0, 0x4

    goto :goto_2f

    :pswitch_1a  #0x7, 0x8, 0x10
    add-int/lit8 v0, v0, 0x3

    goto :goto_2f

    :pswitch_1d  #0x5, 0x6
    add-int/lit8 v0, v0, 0x9

    const/4 v3, 0x2

    goto :goto_30

    :pswitch_21  #0x3, 0x4, 0x9, 0xa, 0xb, 0xc, 0x12
    add-int/lit8 v0, v0, 0x5

    goto :goto_2f

    .line 219
    :pswitch_24  #0x1
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    add-int/2addr v0, v3

    .line 238
    :goto_2f
    const/4 v3, 0x1

    .line 219
    :goto_30
    add-int/2addr v2, v3

    goto :goto_4

    :catch_32
    move-exception v1

    goto :goto_4d

    .line 238
    :goto_34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown tag byte: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4d
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_14 .. :try_end_4d} :catch_32

    .line 242
    :goto_4d
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "...while preparsing cst "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at offset "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->addContext(Ljava/lang/String;)V

    .line 243
    throw v1

    .line 247
    :cond_6f
    iput v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    return-void

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_24  #00000001
        :pswitch_14  #00000002
        :pswitch_21  #00000003
        :pswitch_21  #00000004
        :pswitch_1d  #00000005
        :pswitch_1d  #00000006
        :pswitch_1a  #00000007
        :pswitch_1a  #00000008
        :pswitch_21  #00000009
        :pswitch_21  #0000000a
        :pswitch_21  #0000000b
        :pswitch_21  #0000000c
        :pswitch_14  #0000000d
        :pswitch_14  #0000000e
        :pswitch_17  #0000000f
        :pswitch_1a  #00000010
        :pswitch_14  #00000011
        :pswitch_21  #00000012
    .end packed-switch
.end method

.method private static getMethodHandleTypeForKind(I)I
    .registers 3

    packed-switch p0, :pswitch_data_2a

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid kind: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_17  #0x9
    const/16 p0, 0x8

    return p0

    :pswitch_1a  #0x8
    const/4 p0, 0x6

    return p0

    :pswitch_1c  #0x7
    const/4 p0, 0x7

    return p0

    :pswitch_1e  #0x6
    const/4 p0, 0x4

    return p0

    :pswitch_20  #0x5
    const/4 p0, 0x5

    return p0

    :pswitch_22  #0x4
    const/4 p0, 0x0

    return p0

    :pswitch_24  #0x3
    const/4 p0, 0x2

    return p0

    :pswitch_26  #0x2
    const/4 p0, 0x1

    return p0

    :pswitch_28  #0x1
    const/4 p0, 0x3

    return p0

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_28  #00000001
        :pswitch_26  #00000002
        :pswitch_24  #00000003
        :pswitch_22  #00000004
        :pswitch_20  #00000005
        :pswitch_1e  #00000006
        :pswitch_1c  #00000007
        :pswitch_1a  #00000008
        :pswitch_17  #00000009
    .end packed-switch
.end method

.method private parse()V
    .registers 10

    .line 135
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->determineOffsets()V

    .line 137
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_36

    .line 138
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "constant_pool_count: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v5, v5

    .line 139
    invoke-static {v5}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 138
    const/16 v5, 0x8

    const/4 v6, 0x2

    invoke-interface {v0, v3, v5, v6, v4}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    const/16 v4, 0xa

    const-string v5, "\nconstant_pool:"

    invoke-interface {v0, v3, v4, v1, v5}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    invoke-interface {v0, v2}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    .line 148
    :cond_36
    new-instance v0, Ljava/util/BitSet;

    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v3, v3

    invoke-direct {v0, v3}, Ljava/util/BitSet;-><init>(I)V

    const/4 v3, 0x1

    .line 150
    :goto_3f
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v5, v4

    if-ge v3, v5, :cond_56

    .line 151
    aget v4, v4, v3

    if-eqz v4, :cond_53

    .line 152
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    invoke-virtual {v4, v3}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->getOrNull(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v4

    if-nez v4, :cond_53

    .line 153
    invoke-direct {p0, v3, v0}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 157
    :cond_56
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v3, :cond_de

    .line 158
    :goto_5a
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v3, v3

    if-ge v2, v3, :cond_cd

    .line 159
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->getOrNull(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v3

    if-nez v3, :cond_68

    goto :goto_ca

    .line 163
    :cond_68
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    aget v4, v4, v2

    .line 164
    iget v5, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    add-int/lit8 v6, v2, 0x1

    .line 165
    :goto_70
    iget-object v7, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v8, v7

    if-ge v6, v8, :cond_7e

    .line 166
    aget v7, v7, v6

    if-eqz v7, :cond_7b

    move v5, v7

    goto :goto_7e

    :cond_7b
    add-int/lit8 v6, v6, 0x1

    goto :goto_70

    .line 172
    :cond_7e
    :goto_7e
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_a6

    .line 173
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": utf8{\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/s1243808733/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_c2

    .line 174
    :cond_a6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 175
    :goto_c2
    iget-object v6, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v7, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    sub-int/2addr v5, v4

    invoke-interface {v6, v7, v4, v5, v3}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :goto_ca
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 178
    :cond_cd
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    const/4 v2, -0x1

    invoke-interface {v0, v2}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    .line 179
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    iget v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    const-string v4, "end constant_pool"

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_de
    return-void
.end method

.method private parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 9

    .line 260
    const-string v0, " at offset "

    const-string v1, "...while parsing cst "

    .line 0
    nop

    .line 260
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    invoke-virtual {v2, p1}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->getOrNull(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v2

    if-eqz v2, :cond_e

    return-object v2

    .line 265
    :cond_e
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    aget v2, v2, p1

    .line 268
    :try_start_12
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v3

    packed-switch v3, :pswitch_data_20c

    .line 388
    :pswitch_1b  #0x2, 0xd, 0xe, 0x11
    new-instance p2, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    goto/16 :goto_1b2

    .line 381
    :pswitch_1f  #0x12
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3

    .line 382
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v5, v2, 0x3

    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v4

    .line 383
    invoke-direct {p0, v4, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p2

    check-cast p2, Lcom/s1243808733/android/dx/rop/cst/CstNat;

    .line 384
    invoke-static {v3, p2}, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->make(ILcom/s1243808733/android/dx/rop/cst/CstNat;)Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;

    move-result-object p2

    goto/16 :goto_1ac

    .line 375
    :pswitch_3b  #0x10
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3

    .line 376
    invoke-direct {p0, v3, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p2

    check-cast p2, Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 377
    invoke-static {p2}, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->make(Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    move-result-object p2

    goto/16 :goto_1ac

    .line 339
    :pswitch_4f  #0xf
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v3

    .line 340
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v5, v2, 0x2

    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v4

    packed-switch v3, :pswitch_data_234

    .line 367
    new-instance p2, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    goto :goto_a8

    .line 364
    :pswitch_65  #0x9
    invoke-direct {p0, v4, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p2

    check-cast p2, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;

    goto :goto_9e

    .line 355
    :pswitch_6c  #0x6, 0x7
    invoke-direct {p0, v4, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p2

    .line 356
    instance-of v4, p2, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    if-nez v4, :cond_9e

    instance-of v4, p2, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;

    if-eqz v4, :cond_79

    goto :goto_9e

    .line 358
    :cond_79
    new-instance v3, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unsupported ref constant type for MethodHandle "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 351
    :pswitch_91  #0x5, 0x8
    invoke-direct {p0, v4, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p2

    check-cast p2, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    goto :goto_9e

    .line 347
    :pswitch_98  #0x1, 0x2, 0x3, 0x4
    invoke-direct {p0, v4, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p2

    check-cast p2, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    .line 370
    :cond_9e
    :goto_9e
    invoke-static {v3}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->getMethodHandleTypeForKind(I)I

    move-result v3

    .line 371
    invoke-static {v3, p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->make(ILcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    move-result-object p2

    goto/16 :goto_1ac

    .line 367
    :goto_a8
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unsupported MethodHandle kind: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 331
    :pswitch_ba  #0xc
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3

    .line 332
    invoke-direct {p0, v3, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 333
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v5, v2, 0x3

    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v4

    .line 334
    invoke-direct {p0, v4, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p2

    check-cast p2, Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 335
    new-instance v4, Lcom/s1243808733/android/dx/rop/cst/CstNat;

    invoke-direct {v4, v3, p2}, Lcom/s1243808733/android/dx/rop/cst/CstNat;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    move-object p2, v4

    goto :goto_145

    .line 323
    :pswitch_dd  #0xb
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3

    .line 324
    invoke-direct {p0, v3, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 325
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v5, v2, 0x3

    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v4

    .line 326
    invoke-direct {p0, v4, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p2

    check-cast p2, Lcom/s1243808733/android/dx/rop/cst/CstNat;

    .line 327
    new-instance v4, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;

    invoke-direct {v4, v3, p2}, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    move-object p2, v4

    goto :goto_145

    .line 315
    :pswitch_100  #0xa
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3

    .line 316
    invoke-direct {p0, v3, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 317
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v5, v2, 0x3

    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v4

    .line 318
    invoke-direct {p0, v4, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p2

    check-cast p2, Lcom/s1243808733/android/dx/rop/cst/CstNat;

    .line 319
    new-instance v4, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-direct {v4, v3, p2}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    move-object p2, v4

    goto :goto_145

    .line 307
    :pswitch_123  #0x9
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3

    .line 308
    invoke-direct {p0, v3, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 309
    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v5, v2, 0x3

    invoke-virtual {v4, v5}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v4

    .line 310
    invoke-direct {p0, v4, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p2

    check-cast p2, Lcom/s1243808733/android/dx/rop/cst/CstNat;

    .line 311
    new-instance v4, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-direct {v4, v3, p2}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    move-object p2, v4

    :goto_145
    goto :goto_1ac

    .line 302
    :pswitch_146  #0x8
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3

    .line 303
    invoke-direct {p0, v3, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p2

    goto :goto_1ac

    .line 296
    :pswitch_153  #0x7
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3

    .line 297
    invoke-direct {p0, v3, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object p2

    check-cast p2, Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 298
    new-instance v3, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/s1243808733/android/dx/rop/type/Type;->internClassName(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object p2

    invoke-direct {v3, p2}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    move-object p2, v3

    goto :goto_1ac

    .line 291
    :pswitch_170  #0x6
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getLong(I)J

    move-result-wide v3

    .line 292
    invoke-static {v3, v4}, Lcom/s1243808733/android/dx/rop/cst/CstDouble;->make(J)Lcom/s1243808733/android/dx/rop/cst/CstDouble;

    move-result-object p2

    goto :goto_1ac

    .line 286
    :pswitch_17d  #0x5
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getLong(I)J

    move-result-wide v3

    .line 287
    invoke-static {v3, v4}, Lcom/s1243808733/android/dx/rop/cst/CstLong;->make(J)Lcom/s1243808733/android/dx/rop/cst/CstLong;

    move-result-object p2

    goto :goto_1ac

    .line 281
    :pswitch_18a  #0x4
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result p2

    .line 282
    invoke-static {p2}, Lcom/s1243808733/android/dx/rop/cst/CstFloat;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    move-result-object p2

    goto :goto_1ac

    .line 276
    :pswitch_197  #0x3
    iget-object p2, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result p2

    .line 277
    invoke-static {p2}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object p2

    goto :goto_1ac

    .line 271
    :pswitch_1a4  #0x1
    invoke-direct {p0, v2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parseUtf8(I)Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v3

    .line 272
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V
    :try_end_1ab
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_12 .. :try_end_1ab} :catch_1ec
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_1ab} :catch_1c8

    move-object p2, v3

    .line 402
    :goto_1ac
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    invoke-virtual {v0, p1, p2}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    return-object p2

    .line 388
    :goto_1b2
    :try_start_1b2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unknown tag byte: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1c8
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_1b2 .. :try_end_1c8} :catch_1ec
    .catch Ljava/lang/RuntimeException; {:try_start_1b2 .. :try_end_1c8} :catch_1c8

    :catch_1c8
    move-exception p2

    .line 396
    new-instance v3, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    invoke-direct {v3, p2}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/Throwable;)V

    .line 397
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 397
    invoke-virtual {v3, p1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->addContext(Ljava/lang/String;)V

    .line 399
    throw v3

    :catch_1ec
    move-exception p2

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 392
    invoke-virtual {p2, p1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->addContext(Ljava/lang/String;)V

    .line 394
    throw p2

    nop

    :pswitch_data_20c
    .packed-switch 0x1
        :pswitch_1a4  #00000001
        :pswitch_1b  #00000002
        :pswitch_197  #00000003
        :pswitch_18a  #00000004
        :pswitch_17d  #00000005
        :pswitch_170  #00000006
        :pswitch_153  #00000007
        :pswitch_146  #00000008
        :pswitch_123  #00000009
        :pswitch_100  #0000000a
        :pswitch_dd  #0000000b
        :pswitch_ba  #0000000c
        :pswitch_1b  #0000000d
        :pswitch_1b  #0000000e
        :pswitch_4f  #0000000f
        :pswitch_3b  #00000010
        :pswitch_1b  #00000011
        :pswitch_1f  #00000012
    .end packed-switch

    :pswitch_data_234
    .packed-switch 0x1
        :pswitch_98  #00000001
        :pswitch_98  #00000002
        :pswitch_98  #00000003
        :pswitch_98  #00000004
        :pswitch_91  #00000005
        :pswitch_6c  #00000006
        :pswitch_6c  #00000007
        :pswitch_91  #00000008
        :pswitch_65  #00000009
    .end packed-switch
.end method

.method private parseIfNecessary()V
    .registers 2

    .line 126
    iget v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    if-gez v0, :cond_7

    .line 127
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse()V

    :cond_7
    return-void
.end method

.method private parseUtf8(I)Lcom/s1243808733/android/dx/rop/cst/CstString;
    .registers 4

    .line 413
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    add-int/lit8 p1, p1, 0x3

    .line 417
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/2addr v0, p1

    invoke-virtual {v1, p1, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->slice(II)Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object p1

    .line 420
    :try_start_11
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Lcom/s1243808733/android/dx/util/ByteArray;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception p1

    .line 423
    new-instance v0, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getEndOffset()I
    .registers 2

    .line 108
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parseIfNecessary()V

    .line 109
    iget v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    return v0
.end method

.method public getPool()Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;
    .registers 2

    .line 118
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parseIfNecessary()V

    .line 119
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    return-object v0
.end method

.method public setObserver(Lcom/s1243808733/android/dx/cf/iface/ParseObserver;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    return-void
.end method
