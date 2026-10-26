.class public final Lcom/s1243808733/android/dx/rop/cst/CstString;
.super Lcom/s1243808733/android/dx/rop/cst/TypedConstant;
.source "CstString.java"


# static fields
.field public static final EMPTY_STRING:Lcom/s1243808733/android/dx/rop/cst/CstString;


# instance fields
.field private final bytes:Lcom/s1243808733/android/dx/util/ByteArray;

.field private final string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstString;->EMPTY_STRING:Lcom/s1243808733/android/dx/rop/cst/CstString;

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/util/ByteArray;)V
    .locals 2

    .line 194
    invoke-direct {p0}, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;-><init>()V

    if-eqz p1, :cond_0

    .line 199
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    .line 200
    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->utf8BytesToString(Lcom/s1243808733/android/dx/util/ByteArray;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    return-void

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 180
    invoke-direct {p0}, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;-><init>()V

    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    .line 186
    new-instance v0, Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->stringToUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/util/ByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    return-void

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static stringToUtf8Bytes(Ljava/lang/String;)[B
    .locals 8

    const/4 v2, 0x0

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 48
    mul-int/lit8 v0, v3, 0x3

    new-array v4, v0, [B

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v3, :cond_2

    .line 52
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eqz v5, :cond_0

    const/16 v6, 0x80

    if-ge v5, v6, :cond_0

    int-to-byte v5, v5

    .line 54
    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    .line 63
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_0
    const/16 v6, 0x800

    if-ge v5, v6, :cond_1

    shr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x1f

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    .line 57
    aput-byte v6, v4, v0

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    .line 58
    add-int/lit8 v6, v0, 0x1

    aput-byte v5, v4, v6

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    shr-int/lit8 v6, v5, 0xc

    and-int/lit8 v6, v6, 0xf

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    .line 61
    aput-byte v6, v4, v0

    shr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    .line 62
    add-int/lit8 v7, v0, 0x1

    aput-byte v6, v4, v7

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    .line 63
    add-int/lit8 v6, v0, 0x2

    aput-byte v5, v4, v6

    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    .line 68
    :cond_2
    new-array v1, v0, [B

    .line 69
    invoke-static {v4, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private static throwBadUtf8(II)Ljava/lang/String;
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bad utf-8 byte "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static utf8BytesToString(Lcom/s1243808733/android/dx/util/ByteArray;)Ljava/lang/String;
    .locals 11

    const/4 v4, 0x0

    const/16 v10, 0x80

    .line 80
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v1

    .line 81
    new-array v5, v1, [C

    move v3, v4

    move v0, v4

    :goto_0
    if-lez v1, :cond_8

    .line 85
    invoke-virtual {p0, v0}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v2

    shr-int/lit8 v6, v2, 0x4

    packed-switch v6, :pswitch_data_0

    .line 151
    :pswitch_0
    invoke-static {v2, v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_1
    return-object v0

    .line 151
    :pswitch_1
    add-int/lit8 v1, v1, -0x3

    if-gez v1, :cond_0

    .line 126
    invoke-static {v2, v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v0, 0x1

    .line 128
    invoke-virtual {p0, v6}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v7

    and-int/lit16 v8, v7, 0xc0

    if-eq v8, v10, :cond_1

    .line 130
    invoke-static {v7, v6}, Lcom/s1243808733/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v0, 0x2

    .line 132
    invoke-virtual {p0, v6}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v9

    if-eq v8, v10, :cond_2

    .line 134
    invoke-static {v9, v6}, Lcom/s1243808733/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v2, v7

    and-int/lit8 v7, v9, 0x3f

    or-int/2addr v2, v7

    const/16 v7, 0x800

    if-ge v2, v7, :cond_3

    .line 143
    invoke-static {v9, v6}, Lcom/s1243808733/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    int-to-char v2, v2

    add-int/lit8 v0, v0, 0x3

    .line 154
    :goto_2
    aput-char v2, v5, v3

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 143
    :pswitch_2
    add-int/lit8 v1, v1, -0x2

    if-gez v1, :cond_4

    .line 104
    invoke-static {v2, v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v0, 0x1

    .line 106
    invoke-virtual {p0, v6}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v7

    and-int/lit16 v8, v7, 0xc0

    if-eq v8, v10, :cond_5

    .line 108
    invoke-static {v7, v6}, Lcom/s1243808733/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    and-int/lit8 v2, v2, 0x1f

    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v8, v7, 0x3f

    or-int/2addr v2, v8

    if-eqz v2, :cond_6

    if-ge v2, v10, :cond_6

    .line 116
    invoke-static {v7, v6}, Lcom/s1243808733/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    int-to-char v2, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :pswitch_3
    add-int/lit8 v1, v1, -0x1

    if-nez v2, :cond_7

    .line 94
    invoke-static {v2, v0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    int-to-char v2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 158
    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v4, v3}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_1

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected compareTo0(Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 206
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 210
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    iget-object v1, p1, Lcom/s1243808733/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBytes()Lcom/s1243808733/android/dx/util/ByteArray;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/s1243808733/android/dx/rop/type/Type;
    .locals 1

    .line 375
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->STRING:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object v0
.end method

.method public getUtf16Size()I
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getUtf8Size()I
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCategory2()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 12

    const/4 v1, 0x1

    const/16 v11, 0x5c

    const/16 v10, 0x30

    const/4 v2, 0x0

    const/16 v9, 0x10

    .line 246
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 247
    new-instance v6, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v5, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v4, v2

    :goto_0
    if-ge v4, v5, :cond_d

    .line 250
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v0, 0x20

    if-lt v7, v0, :cond_3

    const/16 v0, 0x7f

    if-ge v7, v0, :cond_3

    const/16 v0, 0x27

    if-eq v7, v0, :cond_0

    const/16 v0, 0x22

    if-eq v7, v0, :cond_0

    if-ne v7, v11, :cond_1

    .line 253
    :cond_0
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    :cond_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    :cond_2
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 255
    :cond_3
    const/16 v0, 0x7f

    if-gt v7, v0, :cond_c

    const/16 v0, 0x9

    if-eq v7, v0, :cond_b

    const/16 v0, 0xa

    if-eq v7, v0, :cond_a

    const/16 v0, 0xd

    if-eq v7, v0, :cond_9

    add-int/lit8 v0, v5, -0x1

    if-ge v4, v0, :cond_6

    .line 269
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_2
    if-lt v0, v10, :cond_7

    const/16 v3, 0x37

    if-gt v0, v3, :cond_7

    move v0, v1

    .line 272
    :goto_3
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    :goto_4
    if-ltz v3, :cond_8

    shr-int v8, v7, v3

    and-int/lit8 v8, v8, 0x7

    add-int/lit8 v8, v8, 0x30

    int-to-char v8, v8

    if-ne v8, v10, :cond_4

    if-eqz v0, :cond_5

    .line 276
    :cond_4
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_5
    add-int/lit8 v3, v3, -0x3

    goto :goto_4

    :cond_6
    move v0, v2

    .line 269
    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_3

    .line 276
    :cond_8
    if-nez v0, :cond_2

    .line 282
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 259
    :cond_9
    const-string v0, "\\r"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 258
    :cond_a
    const-string v0, "\\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 260
    :cond_b
    const-string v0, "\\t"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 288
    :cond_c
    const-string v0, "\\u"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    shr-int/lit8 v0, v7, 0xc

    invoke-static {v0, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    shr-int/lit8 v0, v7, 0x8

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    shr-int/lit8 v0, v7, 0x4

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    and-int/lit8 v0, v7, 0xf

    invoke-static {v0, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 296
    :cond_d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toQuoted()Ljava/lang/String;
    .locals 2

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toQuoted(I)Ljava/lang/String;
    .locals 4

    .line 318
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, p1, -0x2

    if-gt v0, v2, :cond_0

    .line 323
    const-string v0, ""

    .line 329
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 325
    :cond_0
    const/4 v0, 0x0

    add-int/lit8 v2, p1, -0x5

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 326
    const-string v0, "..."

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "string{\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .locals 1

    .line 234
    const-string v0, "utf8"

    return-object v0
.end method
