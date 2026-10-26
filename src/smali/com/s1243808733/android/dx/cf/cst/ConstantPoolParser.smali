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
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    .line 86
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    .line 87
    new-instance v1, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;-><init>(I)V

    iput-object v1, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    .line 88
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    return-void
.end method

.method private determineOffsets()V
    .locals 6

    const/4 v1, 0x1

    const/16 v2, 0xa

    move v0, v1

    .line 190
    :goto_0
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 191
    aput v2, v3, v0

    .line 192
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 238
    :pswitch_0
    :try_start_0
    new-instance v1, Lcom/s1243808733/android/dx/cf/iface/ParseException;

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
    :try_end_0
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :catch_0
    move-exception v1

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "...while preparsing cst "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at offset "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->addContext(Ljava/lang/String;)V

    .line 243
    throw v1

    .line 238
    :pswitch_1
    add-int/lit8 v2, v2, 0x4

    :goto_1
    move v3, v1

    .line 219
    :goto_2
    add-int/2addr v0, v3

    goto :goto_0

    .line 238
    :pswitch_2
    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    :pswitch_3
    add-int/lit8 v2, v2, 0x9

    const/4 v3, 0x2

    goto :goto_2

    :pswitch_4
    add-int/lit8 v2, v2, 0x5

    goto :goto_1

    .line 219
    :pswitch_5
    :try_start_1
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I
    :try_end_1
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    add-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    goto :goto_1

    .line 247
    :cond_0
    iput v2, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    return-void

    .line 192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static getMethodHandleTypeForKind(I)I
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid kind: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/16 v0, 0x8

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_8
    const/4 v0, 0x3

    goto :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parse()V
    .locals 9

    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 135
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->determineOffsets()V

    .line 137
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v0, :cond_0

    .line 138
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "constant_pool_count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v4, v4

    .line 139
    invoke-static {v4}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    const/16 v4, 0x8

    const/4 v5, 0x2

    invoke-interface {v0, v2, v4, v5, v3}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    const/16 v3, 0xa

    const-string v4, "\nconstant_pool:"

    invoke-interface {v0, v2, v3, v8, v4}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    invoke-interface {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    .line 148
    :cond_0
    new-instance v4, Ljava/util/BitSet;

    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v0, v0

    invoke-direct {v4, v0}, Ljava/util/BitSet;-><init>(I)V

    move v0, v1

    .line 150
    :goto_0
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 151
    aget v2, v2, v0

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->getOrNull(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v2

    if-nez v2, :cond_1

    .line 153
    invoke-direct {p0, v0, v4}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v0, :cond_7

    move v3, v1

    .line 158
    :goto_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v0, v0

    if-ge v3, v0, :cond_6

    .line 159
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->getOrNull(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    if-nez v5, :cond_3

    .line 175
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    aget v6, v0, v3

    .line 164
    iget v2, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    add-int/lit8 v0, v3, 0x1

    .line 165
    :goto_3
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v7, v1

    if-ge v0, v7, :cond_8

    .line 166
    aget v1, v1, v0

    if-eqz v1, :cond_4

    move v0, v1

    .line 172
    :goto_4
    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": utf8{\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    :goto_5
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v5, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    sub-int/2addr v0, v6

    invoke-interface {v2, v5, v6, v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    goto :goto_2

    .line 166
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 174
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 178
    :cond_6
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    .line 179
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    iget v2, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    const-string v3, "end constant_pool"

    invoke-interface {v0, v1, v2, v8, v3}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    move v0, v2

    goto :goto_4
.end method

.method private parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;
    .locals 5

    .line 260
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->getOrNull(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 402
    :goto_0
    return-object v0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    aget v3, v0, p1

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v0, v3}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 388
    :pswitch_0
    new-instance v1, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "unknown tag byte: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 399
    :catch_0
    move-exception v0

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...while parsing cst "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->addContext(Ljava/lang/String;)V

    .line 394
    throw v0

    .line 381
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v1

    .line 382
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v2, v3, 0x3

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    .line 383
    invoke-direct {p0, v0, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstNat;

    .line 384
    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;->make(ILcom/s1243808733/android/dx/rop/cst/CstNat;)Lcom/s1243808733/android/dx/rop/cst/CstInvokeDynamic;
    :try_end_1
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 402
    :goto_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    invoke-virtual {v1, p1, v0}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    goto :goto_0

    .line 375
    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    .line 376
    invoke-direct {p0, v0, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 377
    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;->make(Lcom/s1243808733/android/dx/rop/cst/CstString;)Lcom/s1243808733/android/dx/rop/cst/CstProtoRef;

    move-result-object v0

    goto :goto_1

    .line 339
    :pswitch_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v1

    .line 340
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v2, v3, 0x2

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    packed-switch v1, :pswitch_data_1

    .line 367
    new-instance v0, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported MethodHandle kind: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 388
    :catch_1
    move-exception v0

    .line 396
    new-instance v1, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/Throwable;)V

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "...while parsing cst "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at offset "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->addContext(Ljava/lang/String;)V

    .line 399
    throw v1

    .line 364
    :pswitch_4
    :try_start_3
    invoke-direct {p0, v0, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;

    .line 370
    :cond_1
    :goto_2
    invoke-static {v1}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->getMethodHandleTypeForKind(I)I

    move-result v1

    .line 371
    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->make(ILcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    move-result-object v0

    goto :goto_1

    .line 355
    :pswitch_5
    invoke-direct {p0, v0, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    .line 356
    instance-of v2, v0, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    if-nez v2, :cond_1

    instance-of v2, v0, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;

    if-nez v2, :cond_1

    .line 358
    new-instance v1, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported ref constant type for MethodHandle "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    :pswitch_6
    invoke-direct {p0, v0, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    goto :goto_2

    .line 347
    :pswitch_7
    invoke-direct {p0, v0, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    goto :goto_2

    .line 331
    :pswitch_8
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    .line 332
    invoke-direct {p0, v0, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 333
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v2, v3, 0x3

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v1

    .line 334
    invoke-direct {p0, v1, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 335
    new-instance v2, Lcom/s1243808733/android/dx/rop/cst/CstNat;

    invoke-direct {v2, v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstNat;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstString;Lcom/s1243808733/android/dx/rop/cst/CstString;)V

    move-object v0, v2

    goto/16 :goto_1

    .line 323
    :pswitch_9
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    .line 324
    invoke-direct {p0, v0, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 325
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v2, v3, 0x3

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v1

    .line 326
    invoke-direct {p0, v1, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/CstNat;

    .line 327
    new-instance v2, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;

    invoke-direct {v2, v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    move-object v0, v2

    goto/16 :goto_1

    .line 315
    :pswitch_a
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    .line 316
    invoke-direct {p0, v0, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 317
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v2, v3, 0x3

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v1

    .line 318
    invoke-direct {p0, v1, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/CstNat;

    .line 319
    new-instance v2, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    invoke-direct {v2, v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    move-object v0, v2

    goto/16 :goto_1

    .line 307
    :pswitch_b
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    .line 308
    invoke-direct {p0, v0, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstType;

    .line 309
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v2, v3, 0x3

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v1

    .line 310
    invoke-direct {p0, v1, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/android/dx/rop/cst/CstNat;

    .line 311
    new-instance v2, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    invoke-direct {v2, v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;-><init>(Lcom/s1243808733/android/dx/rop/cst/CstType;Lcom/s1243808733/android/dx/rop/cst/CstNat;)V

    move-object v0, v2

    goto/16 :goto_1

    .line 302
    :pswitch_c
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    .line 303
    invoke-direct {p0, v0, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    goto/16 :goto_1

    .line 296
    :pswitch_d
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    .line 297
    invoke-direct {p0, v0, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    .line 298
    new-instance v1, Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/type/Type;->internClassName(Ljava/lang/String;)Lcom/s1243808733/android/dx/rop/type/Type;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/rop/cst/CstType;-><init>(Lcom/s1243808733/android/dx/rop/type/Type;)V

    move-object v0, v1

    goto/16 :goto_1

    .line 291
    :pswitch_e
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getLong(I)J

    move-result-wide v0

    .line 292
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstDouble;->make(J)Lcom/s1243808733/android/dx/rop/cst/CstDouble;

    move-result-object v0

    goto/16 :goto_1

    .line 286
    :pswitch_f
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getLong(I)J

    move-result-wide v0

    .line 287
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstLong;->make(J)Lcom/s1243808733/android/dx/rop/cst/CstLong;

    move-result-object v0

    goto/16 :goto_1

    .line 281
    :pswitch_10
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v0

    .line 282
    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstFloat;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    move-result-object v0

    goto/16 :goto_1

    .line 276
    :pswitch_11
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v0

    .line 277
    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v0

    goto/16 :goto_1

    .line 271
    :pswitch_12
    invoke-direct {p0, v3}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parseUtf8(I)Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    .line 272
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V
    :try_end_3
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 340
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method private parseIfNecessary()V
    .locals 1

    .line 126
    iget v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    if-gez v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse()V

    :cond_0
    return-void
.end method

.method private parseUtf8(I)Lcom/s1243808733/android/dx/rop/cst/CstString;
    .locals 3

    .line 413
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x3

    .line 417
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/2addr v0, v1

    invoke-virtual {v2, v1, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->slice(II)Lcom/s1243808733/android/dx/util/ByteArray;

    move-result-object v0

    .line 420
    :try_start_0
    new-instance v1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Lcom/s1243808733/android/dx/util/ByteArray;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 423
    new-instance v1, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getEndOffset()I
    .locals 1

    .line 108
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parseIfNecessary()V

    .line 109
    iget v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    return v0
.end method

.method public getPool()Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;
    .locals 1

    .line 118
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parseIfNecessary()V

    .line 119
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    return-object v0
.end method

.method public setObserver(Lcom/s1243808733/android/dx/cf/iface/ParseObserver;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    return-void
.end method
