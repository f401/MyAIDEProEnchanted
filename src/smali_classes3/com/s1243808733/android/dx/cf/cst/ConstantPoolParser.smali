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
    .registers 4

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
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v1, 0x1

    .line 187
    const/16 v2, 0xa

    move v0, v1

    .line 190
    :goto_0
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 247
    iput v2, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    return-void

    .line 191
    :cond_0
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    aput v2, v3, v0

    .line 192
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v3, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v3

    .line 194
    packed-switch v3, :pswitch_data_0

    .line 238
    :pswitch_0
    :try_start_0
    new-instance v1, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "unknown tag byte: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 242
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "...while preparsing cst "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, " at offset "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v2}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->addContext(Ljava/lang/String;)V

    .line 243
    throw v1

    .line 202
    :pswitch_1
    add-int/lit8 v2, v2, 0x5

    move v3, v1

    .line 190
    :goto_1
    add-int/2addr v0, v3

    goto :goto_0

    .line 207
    :pswitch_2
    const/4 v3, 0x2

    .line 208
    add-int/lit8 v2, v2, 0x9

    .line 209
    goto :goto_1

    .line 214
    :pswitch_3
    add-int/lit8 v2, v2, 0x3

    move v3, v1

    .line 215
    goto :goto_1

    .line 219
    :pswitch_4
    :try_start_1
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I
    :try_end_1
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    add-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    move v3, v1

    .line 220
    goto :goto_1

    .line 224
    :pswitch_5
    add-int/lit8 v2, v2, 0x4

    move v3, v1

    .line 225
    goto :goto_1

    .line 229
    :pswitch_6
    add-int/lit8 v2, v2, 0x3

    move v3, v1

    .line 230
    goto :goto_1

    .line 234
    :pswitch_7
    add-int/lit8 v2, v2, 0x5

    move v3, v1

    .line 235
    goto :goto_1

    .line 194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private static getMethodHandleTypeForKind(I)I
    .registers 4

    .line 428
    packed-switch p0, :pswitch_data_0

    .line 448
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "invalid kind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :pswitch_0
    const/4 v0, 0x3

    .line 446
    :goto_0
    return v0

    .line 432
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 434
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 436
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 438
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 440
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 442
    :pswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 444
    :pswitch_7
    const/4 v0, 0x6

    goto :goto_0

    .line 446
    :pswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private parse()V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v1, 0x1

    .line 135
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->determineOffsets()V

    .line 137
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    const/16 v3, 0x8

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "constant_pool_count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v6, v6

    invoke-static {v6}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    const/16 v3, 0xa

    const-string v4, "\nconstant_pool:"

    invoke-interface {v0, v2, v3, v9, v4}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

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

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 157
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    if-eqz v0, :cond_1

    .line 158
    :goto_1
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v0, v0

    if-lt v1, v0, :cond_4

    .line 178
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    .line 179
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    iget v2, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    const-string v3, "end constant_pool"

    invoke-interface {v0, v1, v2, v9, v3}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    :cond_1
    return-void

    .line 151
    :cond_2
    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    aget v2, v2, v0

    .line 152
    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    invoke-virtual {v2, v0}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->getOrNull(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v2

    if-nez v2, :cond_3

    .line 153
    invoke-direct {p0, v0, v4}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    .line 150
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_4
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->getOrNull(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v5

    .line 160
    if-nez v5, :cond_5

    .line 158
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 163
    :cond_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    aget v6, v0, v1

    .line 164
    iget v2, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    .line 165
    add-int/lit8 v0, v1, 0x1

    :goto_3
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    array-length v3, v3

    if-lt v0, v3, :cond_6

    move v0, v2

    .line 172
    :goto_4
    invoke-virtual {v4, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ": utf8{\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    :goto_5
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    iget-object v5, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    sub-int/2addr v0, v6

    invoke-interface {v3, v5, v6, v0, v2}, Lcom/s1243808733/android/dx/cf/iface/ParseObserver;->parsed(Lcom/s1243808733/android/dx/util/ByteArray;IILjava/lang/String;)V

    goto :goto_2

    .line 166
    :cond_6
    iget-object v3, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->offsets:[I

    aget v3, v3, v0

    .line 167
    if-eqz v3, :cond_7

    move v0, v3

    .line 169
    goto :goto_4

    .line 165
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 172
    :cond_8
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v7, ": "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v5}, Lcom/s1243808733/android/dx/rop/cst/Constant;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5
.end method

.method private parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;
    .registers 9

    .line 260
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->getOrNull(I)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_0

    .line 403
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

    .line 269
    packed-switch v0, :pswitch_data_0

    .line 388
    :pswitch_0
    new-instance v1, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "unknown tag byte: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    .line 392
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "...while parsing cst "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " at offset "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->addContext(Ljava/lang/String;)V

    .line 394
    throw v0

    .line 271
    :pswitch_1
    :try_start_1
    invoke-direct {p0, v3}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parseUtf8(I)Lcom/s1243808733/android/dx/rop/cst/CstString;

    move-result-object v0

    .line 272
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V
    :try_end_1
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 402
    :goto_1
    iget-object v1, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->pool:Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;

    invoke-virtual {v1, p1, v0}, Lcom/s1243808733/android/dx/rop/cst/StdConstantPool;->set(ILcom/s1243808733/android/dx/rop/cst/Constant;)V

    goto :goto_0

    .line 276
    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v0

    .line 277
    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstInteger;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstInteger;

    move-result-object v0

    goto :goto_1

    .line 281
    :pswitch_3
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getInt(I)I

    move-result v0

    .line 282
    invoke-static {v0}, Lcom/s1243808733/android/dx/rop/cst/CstFloat;->make(I)Lcom/s1243808733/android/dx/rop/cst/CstFloat;

    move-result-object v0

    goto :goto_1

    .line 286
    :pswitch_4
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getLong(I)J

    move-result-wide v0

    .line 287
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstLong;->make(J)Lcom/s1243808733/android/dx/rop/cst/CstLong;

    move-result-object v0

    goto :goto_1

    .line 291
    :pswitch_5
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getLong(I)J

    move-result-wide v0

    .line 292
    invoke-static {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstDouble;->make(J)Lcom/s1243808733/android/dx/rop/cst/CstDouble;

    move-result-object v0

    goto :goto_1

    .line 296
    :pswitch_6
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

    .line 299
    goto :goto_1

    .line 302
    :pswitch_7
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    .line 303
    invoke-direct {p0, v0, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    goto :goto_1

    .line 307
    :pswitch_8
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

    .line 312
    goto/16 :goto_1

    .line 315
    :pswitch_9
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

    .line 320
    goto/16 :goto_1

    .line 323
    :pswitch_a
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

    .line 328
    goto/16 :goto_1

    .line 331
    :pswitch_b
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

    .line 336
    goto/16 :goto_1

    .line 339
    :pswitch_c
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v1

    .line 340
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v2, v3, 0x2

    invoke-virtual {v0, v2}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    .line 341
    packed-switch v1, :pswitch_data_1

    .line 367
    new-instance v0, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unsupported MethodHandle kind: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 394
    :catch_1
    move-exception v0

    .line 396
    new-instance v1, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/Throwable;)V

    .line 397
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "...while parsing cst "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " at offset "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v3}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseException;->addContext(Ljava/lang/String;)V

    .line 399
    throw v1

    .line 347
    :pswitch_d
    :try_start_3
    invoke-direct {p0, v0, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstFieldRef;

    .line 370
    :cond_1
    :goto_2
    invoke-static {v1}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->getMethodHandleTypeForKind(I)I

    move-result v1

    .line 371
    invoke-static {v1, v0}, Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;->make(ILcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/rop/cst/CstMethodHandle;

    move-result-object v0

    goto/16 :goto_1

    .line 351
    :pswitch_e
    invoke-direct {p0, v0, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    goto :goto_2

    .line 355
    :pswitch_f
    invoke-direct {p0, v0, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    .line 356
    instance-of v2, v0, Lcom/s1243808733/android/dx/rop/cst/CstMethodRef;

    if-nez v2, :cond_1

    instance-of v2, v0, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;

    if-nez v2, :cond_1

    .line 358
    new-instance v1, Lcom/s1243808733/android/dx/cf/iface/ParseException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unsupported ref constant type for MethodHandle "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/rop/cst/Constant;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/s1243808733/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 364
    :pswitch_10
    invoke-direct {p0, v0, p2}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse0(ILjava/util/BitSet;)Lcom/s1243808733/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/android/dx/rop/cst/CstInterfaceMethodRef;

    goto :goto_2

    .line 375
    :pswitch_11
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

    goto/16 :goto_1

    .line 381
    :pswitch_12
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
    :try_end_3
    .catch Lcom/s1243808733/android/dx/cf/iface/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto/16 :goto_1

    .line 269
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_11
        :pswitch_0
        :pswitch_12
    .end packed-switch

    .line 341
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_10
    .end packed-switch
.end method

.method private parseIfNecessary()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 126
    iget v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->endOffset:I

    if-gez v0, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->parse()V

    :cond_0
    return-void
.end method

.method private parseUtf8(I)Lcom/s1243808733/android/dx/rop/cst/CstString;
    .registers 5

    .line 413
    iget-object v0, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    .line 415
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/cf/iface/ParseObserver;",
            ")V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/s1243808733/android/dx/cf/cst/ConstantPoolParser;->observer:Lcom/s1243808733/android/dx/cf/iface/ParseObserver;

    return-void
.end method
