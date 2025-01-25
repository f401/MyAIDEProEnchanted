.class public final Lcom/blankj/utilcode/util/ConvertUtils;
.super Ljava/lang/Object;


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final HEX_DIGITS_LOWER:[C

.field private static final HEX_DIGITS_UPPER:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x10

    new-array v0, v1, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/blankj/utilcode/util/ConvertUtils;->HEX_DIGITS_UPPER:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_26

    sput-object v0, Lcom/blankj/utilcode/util/ConvertUtils;->HEX_DIGITS_LOWER:[C

    return-void

    nop

    :array_12
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_26
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method

.method public static bitmap2Bytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/UtilsBridge;->bitmap2Bytes(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static bits2Bytes(Ljava/lang/String;)[B
    .registers 9

    const/16 v7, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v1, v0, 0x8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    if-eqz v1, :cond_29

    :goto_11
    if-ge v1, v7, :cond_27

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_27
    add-int/lit8 v0, v0, 0x1

    :cond_29
    new-array v4, v0, [B

    move v3, v2

    :goto_2c
    if-ge v3, v0, :cond_4e

    move v1, v2

    :goto_2f
    if-ge v1, v7, :cond_4a

    aget-byte v5, v4, v3

    shl-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    aget-byte v5, v4, v3

    mul-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_4a
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2c

    :cond_4e
    return-object v4
.end method

.method public static byte2FitMemorySize(J)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ConvertUtils;->byte2FitMemorySize(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static byte2FitMemorySize(JI)Ljava/lang/String;
    .registers 11

    const/4 v4, 0x1

    const/4 v6, 0x0

    if-ltz p2, :cond_c9

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_c1

    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-gez v0, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "fB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    long-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_33
    return-object v0

    :cond_34
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-gez v0, :cond_65

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "fKB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    long-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    new-array v1, v4, [Ljava/lang/Object;

    const-wide/high16 v4, 0x4090000000000000L  # 1024.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    :cond_65
    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_96

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "fMB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    long-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    new-array v1, v4, [Ljava/lang/Object;

    const-wide/high16 v4, 0x4130000000000000L  # 1048576.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    :cond_96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "fGB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    long-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    new-array v1, v4, [Ljava/lang/Object;

    const-wide/high16 v4, 0x41d0000000000000L  # 1.073741824E9

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    :cond_c1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteSize shouldn\'t be less than zero!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "precision shouldn\'t be less than zero!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static byte2MemorySize(JI)D
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    :goto_8
    return-wide v0

    :cond_9
    long-to-double v0, p0

    int-to-double v2, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    goto :goto_8
.end method

.method public static bytes2Bitmap([B)Landroid/graphics/Bitmap;
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2Bitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static bytes2Bits([B)Ljava/lang/String;
    .registers 7

    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_8

    :cond_5
    const-string v0, ""

    :goto_7
    return-object v0

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, p0

    const/4 v0, 0x0

    move v2, v0

    :goto_10
    if-ge v2, v4, :cond_2e

    aget-byte v5, p0, v2

    const/4 v0, 0x7

    move v1, v0

    :goto_16
    if-ltz v1, :cond_2a

    shr-int v0, v5, v1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_27

    const/16 v0, 0x30

    :goto_20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_16

    :cond_27
    const/16 v0, 0x31

    goto :goto_20

    :cond_2a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_10

    :cond_2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static bytes2Chars([B)[C
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    return-object v0

    :cond_4
    array-length v2, p0

    if-lez v2, :cond_3

    new-array v0, v2, [C

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v2, :cond_3

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public static bytes2Drawable([B)Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->bytes2Drawable([B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static bytes2HexString([B)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ConvertUtils;->bytes2HexString([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytes2HexString([BZ)Ljava/lang/String;
    .registers 9

    const/4 v2, 0x0

    if-nez p0, :cond_6

    const-string v0, ""

    :goto_5
    return-object v0

    :cond_6
    if-eqz p1, :cond_10

    sget-object v0, Lcom/blankj/utilcode/util/ConvertUtils;->HEX_DIGITS_UPPER:[C

    :goto_a
    array-length v4, p0

    if-gtz v4, :cond_13

    const-string v0, ""

    goto :goto_5

    :cond_10
    sget-object v0, Lcom/blankj/utilcode/util/ConvertUtils;->HEX_DIGITS_LOWER:[C

    goto :goto_a

    :cond_13
    shl-int/lit8 v1, v4, 0x1

    new-array v5, v1, [C

    move v1, v2

    move v3, v2

    :goto_19
    if-ge v3, v4, :cond_35

    add-int/lit8 v2, v1, 0x1

    aget-byte v6, p0, v3

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v0, v6

    aput-char v6, v5, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v6, p0, v3

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v0, v6

    aput-char v6, v5, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_19

    :cond_35
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    goto :goto_5
.end method

.method public static bytes2InputStream([B)Ljava/io/InputStream;
    .registers 2

    if-eqz p0, :cond_5

    array-length v0, p0

    if-gtz v0, :cond_7

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_6
.end method

.method public static bytes2JSONArray([B)Lorg/json/JSONArray;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_10

    move-object v0, v1

    goto :goto_3

    :catch_10
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static bytes2JSONObject([B)Lorg/json/JSONObject;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_10

    move-object v0, v1

    goto :goto_3

    :catch_10
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static bytes2Object([B)Ljava/lang/Object;
    .registers 4

    const/4 v2, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v2

    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_1b
    .catchall {:try_start_4 .. :try_end_e} :catchall_3a

    :try_start_e
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_38
    .catchall {:try_start_e .. :try_end_11} :catchall_2b

    move-result-object v2

    :try_start_12
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_3

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_1b
    move-exception v0

    move-object v1, v2

    :goto_1d
    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_2b

    if-eqz v1, :cond_3

    :try_start_22
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_3

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_2b
    move-exception v0

    move-object v2, v1

    :goto_2d
    if-eqz v2, :cond_32

    :try_start_2f
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    :cond_32
    :goto_32
    throw v0

    :catch_33
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32

    :catch_38
    move-exception v0

    goto :goto_1d

    :catchall_3a
    move-exception v0

    goto :goto_2d
.end method

.method public static bytes2OutputStream([B)Ljava/io/OutputStream;
    .registers 4

    const/4 v2, 0x0

    if-eqz p0, :cond_6

    array-length v0, p0

    if-gtz v0, :cond_7

    :cond_6
    :goto_6
    return-object v2

    :cond_7
    :try_start_7
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_19
    .catchall {:try_start_7 .. :try_end_c} :catchall_38

    :try_start_c
    invoke-virtual {v1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_36
    .catchall {:try_start_c .. :try_end_f} :catchall_29

    :try_start_f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_14

    :goto_12
    move-object v2, v1

    goto :goto_6

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    :catch_19
    move-exception v0

    move-object v1, v2

    :goto_1b
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_29

    if-eqz v1, :cond_6

    :try_start_20
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_6

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_29
    move-exception v0

    move-object v2, v1

    :goto_2b
    if-eqz v2, :cond_30

    :try_start_2d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    :cond_30
    :goto_30
    throw v0

    :catch_31
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_30

    :catch_36
    move-exception v0

    goto :goto_1b

    :catchall_38
    move-exception v0

    goto :goto_2b
.end method

.method public static bytes2Parcelable([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    array-length v0, p0

    invoke-virtual {v1, p0, v2, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_4
.end method

.method public static bytes2String([B)Ljava/lang/String;
    .registers 2

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ConvertUtils;->bytes2String([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bytes2String([BLjava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcom/blankj/utilcode/util/ConvertUtils;->getSafeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_d} :catch_e

    goto :goto_3

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_3
.end method

.method public static chars2Bytes([C)[B
    .registers 5

    if-eqz p0, :cond_5

    array-length v0, p0

    if-gtz v0, :cond_7

    :cond_5
    const/4 v0, 0x0

    :cond_6
    return-object v0

    :cond_7
    array-length v2, p0

    new-array v0, v2, [B

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_6

    aget-char v3, p0, v1

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public static dp2px(F)I
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->dp2px(F)I

    move-result v0

    return v0
.end method

.method public static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static drawable2Bytes(Landroid/graphics/drawable/Drawable;)[B
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->drawable2Bytes(Landroid/graphics/drawable/Drawable;)[B

    move-result-object v0

    return-object v0
.end method

.method public static drawable2Bytes(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$CompressFormat;I)[B
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/UtilsBridge;->drawable2Bytes(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$CompressFormat;I)[B

    move-result-object v0

    return-object v0
.end method

.method private static getSafeCharset(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const-string p0, "UTF-8"

    :cond_e
    return-object p0
.end method

.method private static hex2Dec(C)I
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    add-int/lit8 v0, p0, -0x30

    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x41

    if-lt p0, v0, :cond_18

    const/16 v0, 0x46

    if-gt p0, v0, :cond_18

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static hexString2Bytes(Ljava/lang/String;)[B
    .registers 8

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-array v0, v2, [B

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    :cond_25
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    shr-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    :goto_31
    if-ge v2, v0, :cond_4c

    shr-int/lit8 v4, v2, 0x1

    aget-char v5, v3, v2

    invoke-static {v5}, Lcom/blankj/utilcode/util/ConvertUtils;->hex2Dec(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v2, 0x1

    aget-char v6, v3, v6

    invoke-static {v6}, Lcom/blankj/utilcode/util/ConvertUtils;->hex2Dec(C)I

    move-result v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v2, v2, 0x2

    goto :goto_31

    :cond_4c
    move-object v0, v1

    goto :goto_9
.end method

.method public static hexString2Int(Ljava/lang/String;)I
    .registers 2

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static input2OutputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x2000

    new-array v2, v2, [B

    :goto_d
    const/4 v3, 0x0

    const/16 v4, 0x2000

    invoke-virtual {p0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_29

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1b} :catch_1c
    .catchall {:try_start_4 .. :try_end_1b} :catchall_33

    goto :goto_d

    :catch_1c
    move-exception v1

    :try_start_1d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_33

    :try_start_20
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_3

    :catch_24
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_29
    :try_start_29
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2e

    :goto_2c
    move-object v0, v1

    goto :goto_3

    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c

    :catchall_33
    move-exception v0

    :try_start_34
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    :goto_37
    throw v0

    :catch_38
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37
.end method

.method public static inputStream2Bytes(Ljava/io/InputStream;)[B
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Lcom/blankj/utilcode/util/ConvertUtils;->input2OutputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_3
.end method

.method public static inputStream2Lines(Ljava/io/InputStream;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ConvertUtils;->inputStream2Lines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static inputStream2Lines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-static {p1}, Lcom/blankj/utilcode/util/ConvertUtils;->getSafeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_32
    .catchall {:try_start_1 .. :try_end_14} :catchall_47

    :goto_14
    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_28

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1d} :catch_1e
    .catchall {:try_start_14 .. :try_end_1d} :catchall_3a

    goto :goto_14

    :catch_1e
    move-exception v0

    :goto_1f
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_3a

    if-eqz v1, :cond_27

    :try_start_24
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_35

    :cond_27
    :goto_27
    return-object v2

    :cond_28
    :try_start_28
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2d

    :goto_2b
    move-object v2, v0

    goto :goto_27

    :catch_2d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2b

    :catch_32
    move-exception v0

    move-object v1, v2

    goto :goto_1f

    :catch_35
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_27

    :catchall_3a
    move-exception v0

    move-object v2, v1

    :goto_3c
    if-eqz v2, :cond_41

    :try_start_3e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    :cond_41
    :goto_41
    throw v0

    :catch_42
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_41

    :catchall_47
    move-exception v0

    goto :goto_3c
.end method

.method public static inputStream2String(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    :try_start_5
    invoke-static {p0}, Lcom/blankj/utilcode/util/ConvertUtils;->input2OutputStream(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_8} :catch_17

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, ""

    goto :goto_4

    :cond_e
    :try_start_e
    invoke-static {p1}, Lcom/blankj/utilcode/util/ConvertUtils;->getSafeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_15} :catch_17

    move-result-object v0

    goto :goto_4

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v0, ""

    goto :goto_4
.end method

.method public static int2HexString(I)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static jsonArray2Bytes(Lorg/json/JSONArray;)[B
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_3
.end method

.method public static jsonObject2Bytes(Lorg/json/JSONObject;)[B
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_3
.end method

.method public static memorySize2Byte(JI)J
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    const-wide/16 v0, -0x1

    :goto_8
    return-wide v0

    :cond_9
    int-to-long v0, p2

    mul-long/2addr v0, p0

    goto :goto_8
.end method

.method public static millis2FitTimeSpan(JI)Ljava/lang/String;
    .registers 5

    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/UtilsBridge;->millis2FitTimeSpan(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static millis2TimeSpan(JI)J
    .registers 5

    int-to-long v0, p2

    div-long v0, p0, v0

    return-wide v0
.end method

.method public static output2InputStream(Ljava/io/OutputStream;)Ljava/io/ByteArrayInputStream;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    check-cast p0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_3
.end method

.method public static outputStream2Bytes(Ljava/io/OutputStream;)[B
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    check-cast p0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_3
.end method

.method public static outputStream2String(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    :try_start_5
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/blankj/utilcode/util/ConvertUtils;->outputStream2Bytes(Ljava/io/OutputStream;)[B

    move-result-object v1

    invoke-static {p1}, Lcom/blankj/utilcode/util/ConvertUtils;->getSafeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_12} :catch_13

    goto :goto_4

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v0, ""

    goto :goto_4
.end method

.method public static parcelable2Bytes(Landroid/os/Parcelable;)[B
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p0, v1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_3
.end method

.method public static px2dp(F)I
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->px2dp(F)I

    move-result v0

    return v0
.end method

.method public static px2sp(F)I
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->px2sp(F)I

    move-result v0

    return v0
.end method

.method public static serializable2Bytes(Ljava/io/Serializable;)[B
    .registers 4

    const/4 v2, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v2

    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_1e
    .catchall {:try_start_4 .. :try_end_e} :catchall_3b

    :try_start_e
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_3d
    .catchall {:try_start_e .. :try_end_14} :catchall_2e

    move-result-object v2

    :try_start_15
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_3

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_1e
    move-exception v0

    move-object v1, v2

    :goto_20
    :try_start_20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_2e

    if-eqz v1, :cond_3

    :try_start_25
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_3

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_2e
    move-exception v0

    move-object v2, v1

    :goto_30
    if-eqz v2, :cond_35

    :try_start_32
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36

    :cond_35
    :goto_35
    throw v0

    :catch_36
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_35

    :catchall_3b
    move-exception v0

    goto :goto_30

    :catch_3d
    move-exception v0

    goto :goto_20
.end method

.method public static sp2px(F)I
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->sp2px(F)I

    move-result v0

    return v0
.end method

.method public static string2Bytes(Ljava/lang/String;)[B
    .registers 2

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ConvertUtils;->string2Bytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static string2Bytes(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    invoke-static {p1}, Lcom/blankj/utilcode/util/ConvertUtils;->getSafeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v0

    goto :goto_3

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_3
.end method

.method public static string2InputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lcom/blankj/utilcode/util/ConvertUtils;->getSafeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_11} :catch_13

    move-object v0, v1

    goto :goto_3

    :catch_13
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3
.end method

.method public static string2OutputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    invoke-static {p1}, Lcom/blankj/utilcode/util/ConvertUtils;->getSafeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/ConvertUtils;->bytes2OutputStream([B)Ljava/io/OutputStream;
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_f} :catch_11

    move-result-object v0

    goto :goto_3

    :catch_11
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3
.end method

.method public static timeSpan2Millis(JI)J
    .registers 5

    int-to-long v0, p2

    mul-long/2addr v0, p0

    return-wide v0
.end method

.method public static view2Bitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 2

    invoke-static {p0}, Lcom/blankj/utilcode/util/UtilsBridge;->view2Bitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
