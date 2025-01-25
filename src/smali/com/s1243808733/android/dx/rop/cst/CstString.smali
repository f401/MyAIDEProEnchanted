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
    .registers 2

    .line 31
    new-instance v0, Lcom/s1243808733/android/dx/rop/cst/CstString;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/rop/cst/CstString;->EMPTY_STRING:Lcom/s1243808733/android/dx/rop/cst/CstString;

    return-void
.end method

.method public constructor <init>(Lcom/s1243808733/android/dx/util/ByteArray;)V
    .registers 3

    .line 194
    invoke-direct {p0}, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;-><init>()V

    if-eqz p1, :cond_12

    .line 199
    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    .line 200
    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->utf8BytesToString(Lcom/s1243808733/android/dx/util/ByteArray;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    return-void

    .line 196
    :cond_12
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "bytes == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 180
    invoke-direct {p0}, Lcom/s1243808733/android/dx/rop/cst/TypedConstant;-><init>()V

    if-eqz p1, :cond_17

    .line 185
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    .line 186
    new-instance v0, Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-static {p1}, Lcom/s1243808733/android/dx/rop/cst/CstString;->stringToUtf8Bytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/s1243808733/android/dx/util/ByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    return-void

    .line 182
    :cond_17
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "string == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static stringToUtf8Bytes(Ljava/lang/String;)[B
    .registers 10

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 48
    mul-int/lit8 v1, v0, 0x3

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_b
    if-ge v3, v0, :cond_55

    .line 52
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x80

    if-eqz v5, :cond_1d

    if-ge v5, v6, :cond_1d

    int-to-byte v5, v5

    .line 54
    aput-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    :cond_1d
    const/16 v7, 0x800

    if-ge v5, v7, :cond_35

    shr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x1f

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    .line 57
    aput-byte v7, v1, v4

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    .line 58
    add-int/lit8 v6, v4, 0x1

    aput-byte v5, v1, v6

    add-int/lit8 v4, v4, 0x2

    goto :goto_52

    :cond_35
    shr-int/lit8 v7, v5, 0xc

    and-int/lit8 v7, v7, 0xf

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    .line 61
    aput-byte v7, v1, v4

    shr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v6

    int-to-byte v7, v7

    .line 62
    add-int/lit8 v8, v4, 0x1

    aput-byte v7, v1, v8

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    .line 63
    add-int/lit8 v6, v4, 0x2

    aput-byte v5, v1, v6

    add-int/lit8 v4, v4, 0x3

    :goto_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 68
    :cond_55
    new-array p0, v4, [B

    .line 69
    invoke-static {v1, v2, p0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method private static throwBadUtf8(II)Ljava/lang/String;
    .registers 4

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bad utf-8 byte "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/s1243808733/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " at offset "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-static {p1}, Lcom/s1243808733/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static utf8BytesToString(Lcom/s1243808733/android/dx/util/ByteArray;)Ljava/lang/String;
    .registers 12

    .line 80
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v0

    .line 81
    new-array v1, v0, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    if-lez v0, :cond_97

    .line 85
    invoke-virtual {p0, v4}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v5

    shr-int/lit8 v6, v5, 0x4

    const/16 v7, 0x80

    packed-switch v6, :pswitch_data_9e

    .line 151
    :pswitch_16  #0x8, 0x9, 0xa, 0xb
    invoke-static {v5, v4}, Lcom/s1243808733/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1b  #0xe
    add-int/lit8 v0, v0, -0x3

    if-gez v0, :cond_24

    .line 126
    invoke-static {v5, v4}, Lcom/s1243808733/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_24
    add-int/lit8 v6, v4, 0x1

    .line 128
    invoke-virtual {p0, v6}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v8

    and-int/lit16 v9, v8, 0xc0

    if-eq v9, v7, :cond_33

    .line 130
    invoke-static {v8, v6}, Lcom/s1243808733/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_33
    add-int/lit8 v6, v4, 0x2

    .line 132
    invoke-virtual {p0, v6}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v10

    if-eq v9, v7, :cond_40

    .line 134
    invoke-static {v10, v6}, Lcom/s1243808733/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_40
    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0xc

    and-int/lit8 v7, v8, 0x3f

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v5, v7

    and-int/lit8 v7, v10, 0x3f

    or-int/2addr v5, v7

    const/16 v7, 0x800

    if-ge v5, v7, :cond_55

    .line 143
    invoke-static {v10, v6}, Lcom/s1243808733/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_55
    int-to-char v5, v5

    add-int/lit8 v4, v4, 0x3

    goto :goto_91

    :pswitch_59  #0xc, 0xd
    add-int/lit8 v0, v0, -0x2

    if-gez v0, :cond_62

    .line 104
    invoke-static {v5, v4}, Lcom/s1243808733/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_62
    add-int/lit8 v6, v4, 0x1

    .line 106
    invoke-virtual {p0, v6}, Lcom/s1243808733/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v8

    and-int/lit16 v9, v8, 0xc0

    if-eq v9, v7, :cond_71

    .line 108
    invoke-static {v8, v6}, Lcom/s1243808733/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_71
    and-int/lit8 v5, v5, 0x1f

    shl-int/lit8 v5, v5, 0x6

    and-int/lit8 v9, v8, 0x3f

    or-int/2addr v5, v9

    if-eqz v5, :cond_81

    if-ge v5, v7, :cond_81

    .line 116
    invoke-static {v8, v6}, Lcom/s1243808733/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_81
    int-to-char v5, v5

    add-int/lit8 v4, v4, 0x2

    goto :goto_91

    :pswitch_85  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7
    add-int/lit8 v0, v0, -0x1

    if-nez v5, :cond_8e

    .line 94
    invoke-static {v5, v4}, Lcom/s1243808733/android/dx/rop/cst/CstString;->throwBadUtf8(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8e
    int-to-char v5, v5

    add-int/lit8 v4, v4, 0x1

    .line 154
    :goto_91
    aput-char v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    .line 158
    :cond_97
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    nop

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_85  #00000000
        :pswitch_85  #00000001
        :pswitch_85  #00000002
        :pswitch_85  #00000003
        :pswitch_85  #00000004
        :pswitch_85  #00000005
        :pswitch_85  #00000006
        :pswitch_85  #00000007
        :pswitch_16  #00000008
        :pswitch_16  #00000009
        :pswitch_16  #0000000a
        :pswitch_16  #0000000b
        :pswitch_59  #0000000c
        :pswitch_59  #0000000d
        :pswitch_1b  #0000000e
    .end packed-switch
.end method


# virtual methods
.method protected compareTo0(Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 3

    .line 222
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    iget-object p1, p1, Lcom/s1243808733/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 206
    instance-of v0, p1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 210
    :cond_6
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    check-cast p1, Lcom/s1243808733/android/dx/rop/cst/CstString;

    iget-object p1, p1, Lcom/s1243808733/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBytes()Lcom/s1243808733/android/dx/util/ByteArray;
    .registers 2

    .line 348
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .line 339
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/s1243808733/android/dx/rop/type/Type;
    .registers 2

    .line 375
    sget-object v0, Lcom/s1243808733/android/dx/rop/type/Type;->STRING:Lcom/s1243808733/android/dx/rop/type/Type;

    return-object v0
.end method

.method public getUtf16Size()I
    .registers 2

    .line 370
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getUtf8Size()I
    .registers 2

    .line 358
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->bytes:Lcom/s1243808733/android/dx/util/ByteArray;

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/util/ByteArray;->size()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCategory2()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 11

    .line 246
    iget-object v0, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v0, :cond_bf

    .line 250
    iget-object v4, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    const/16 v6, 0x7f

    const/16 v7, 0x5c

    if-lt v4, v5, :cond_35

    if-ge v4, v6, :cond_35

    const/16 v5, 0x27

    if-eq v4, v5, :cond_2d

    const/16 v5, 0x22

    if-eq v4, v5, :cond_2d

    if-ne v4, v7, :cond_30

    .line 253
    :cond_2d
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    :cond_30
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_bb

    :cond_35
    if-gt v4, v6, :cond_8c

    const/16 v5, 0x9

    if-eq v4, v5, :cond_86

    const/16 v5, 0xa

    if-eq v4, v5, :cond_80

    const/16 v5, 0xd

    if-eq v4, v5, :cond_7a

    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_50

    .line 269
    iget-object v5, p0, Lcom/s1243808733/android/dx/rop/cst/CstString;->string:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_51

    :cond_50
    const/4 v5, 0x0

    :goto_51
    const/16 v6, 0x30

    const/4 v8, 0x1

    if-lt v5, v6, :cond_5c

    const/16 v9, 0x37

    if-gt v5, v9, :cond_5c

    const/4 v5, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v5, 0x0

    .line 272
    :goto_5d
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x6

    :goto_61
    if-ltz v7, :cond_74

    shr-int v9, v4, v7

    and-int/lit8 v9, v9, 0x7

    add-int/2addr v9, v6

    int-to-char v9, v9

    if-ne v9, v6, :cond_6d

    if-eqz v5, :cond_71

    .line 276
    :cond_6d
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    :cond_71
    add-int/lit8 v7, v7, -0x3

    goto :goto_61

    :cond_74
    if-nez v5, :cond_bb

    .line 282
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_bb

    .line 259
    :cond_7a
    const-string v4, "\\r"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bb

    .line 258
    :cond_80
    const-string v4, "\\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bb

    .line 260
    :cond_86
    const-string v4, "\\t"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bb

    .line 288
    :cond_8c
    const-string v5, "\\u"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    shr-int/lit8 v5, v4, 0xc

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    shr-int/lit8 v5, v4, 0x8

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    and-int/lit8 v4, v4, 0xf

    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_bb
    :goto_bb
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_11

    .line 296
    :cond_bf
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toQuoted()Ljava/lang/String;
    .registers 3

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
    .registers 5

    .line 318
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p1, -0x2

    if-gt v1, v2, :cond_f

    .line 323
    const-string p1, ""

    goto :goto_18

    .line 325
    :cond_f
    add-int/lit8 p1, p1, -0x5

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 326
    const-string p1, "..."

    .line 329
    :goto_18
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

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
    .registers 2

    .line 234
    const-string v0, "utf8"

    return-object v0
.end method
