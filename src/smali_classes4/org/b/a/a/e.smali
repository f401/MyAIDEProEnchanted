.class public Lorg/b/a/a/e;
.super Ljava/lang/Object;


# static fields
.field static final a:Lorg/b/a/b/e;

.field static final b:Lorg/b/a/b/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/b/a/b/f;->a(Ljava/lang/String;)Lorg/b/a/b/e;

    move-result-object v0

    sput-object v0, Lorg/b/a/a/e;->a:Lorg/b/a/b/e;

    new-instance v0, Lorg/b/a/a/f;

    invoke-direct {v0}, Lorg/b/a/a/f;-><init>()V

    sput-object v0, Lorg/b/a/a/e;->b:Lorg/b/a/b/e;

    return-void
.end method

.method public static a([BII)J
    .registers 11

    const/16 v5, 0x20

    const-wide/16 v0, 0x0

    add-int v4, p1, p2

    const/4 v2, 0x2

    if-ge p2, v2, :cond_24

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be at least 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    aget-byte v2, p0, p1

    if-nez v2, :cond_61

    :cond_28
    return-wide v0

    :cond_29
    aget-byte v3, p0, v2

    if-ne v3, v5, :cond_31

    add-int/lit8 v2, v2, 0x1

    :goto_2f
    if-lt v2, v4, :cond_29

    :cond_31
    add-int/lit8 v3, v4, -0x1

    aget-byte v3, p0, v3

    :goto_35
    if-ge v2, v4, :cond_3b

    if-eqz v3, :cond_51

    if-eq v3, v5, :cond_51

    :cond_3b
    :goto_3b
    if-ge v2, v4, :cond_28

    aget-byte v3, p0, v2

    const/16 v5, 0x30

    if-lt v3, v5, :cond_47

    const/16 v5, 0x37

    if-le v3, v5, :cond_58

    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, p1, p2, v2, v3}, Lorg/b/a/a/e;->a([BIIIB)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v3, v4, -0x1

    aget-byte v3, p0, v3

    goto :goto_35

    :cond_58
    add-int/lit8 v3, v3, -0x30

    int-to-long v6, v3

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x3

    shl-long/2addr v0, v3

    add-long/2addr v0, v6

    goto :goto_3b

    :cond_61
    move v2, p1

    goto :goto_2f
.end method

.method private static a([BIIZ)J
    .registers 14

    const-wide/16 v8, 0x1

    const/16 v0, 0x9

    if-lt p2, v0, :cond_37

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "At offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " byte binary number"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exceeds maximum signed long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    :goto_3a
    if-lt v2, p2, :cond_52

    if-eqz p3, :cond_4e

    sub-long/2addr v0, v8

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    add-int/lit8 v4, p2, -0x1

    int-to-double v4, v4

    const-wide/high16 v6, 0x4020000000000000L  # 8.0

    mul-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    sub-long/2addr v2, v8

    xor-long/2addr v0, v2

    :cond_4e
    if-eqz p3, :cond_51

    neg-long v0, v0

    :cond_51
    return-wide v0

    :cond_52
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v4, v3

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    add-long/2addr v0, v4

    goto :goto_3a
.end method

.method private static a([BIIIB)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    const-string v1, "\u0000"

    const-string v2, "{NUL}"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid byte "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v2, p3, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BIILorg/b/a/b/e;)Ljava/lang/String;
    .registers 6

    :goto_0
    if-gtz p2, :cond_f

    :cond_2
    if-lez p2, :cond_1a

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p3, v0}, Lorg/b/a/b/e;->a([B)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1a
    const-string v0, ""

    goto :goto_e
.end method

.method public static a([BI)Z
    .registers 4

    const/4 v0, 0x1

    aget-byte v1, p0, p1

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static b([BII)J
    .registers 5

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_b

    invoke-static {p0, p1, p2}, Lorg/b/a/a/e;->a([BII)J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    aget-byte v0, p0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    :goto_11
    const/16 v1, 0x9

    if-ge p2, v1, :cond_1c

    invoke-static {p0, p1, p2, v0}, Lorg/b/a/a/e;->a([BIIZ)J

    move-result-wide v0

    goto :goto_a

    :cond_1a
    const/4 v0, 0x0

    goto :goto_11

    :cond_1c
    invoke-static {p0, p1, p2, v0}, Lorg/b/a/a/e;->b([BIIZ)J

    move-result-wide v0

    goto :goto_a
.end method

.method private static b([BIIZ)J
    .registers 8

    add-int/lit8 v0, p2, -0x1

    new-array v1, v0, [B

    add-int/lit8 v0, p1, 0x1

    const/4 v2, 0x0

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    if-eqz p3, :cond_21

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object v0

    :cond_21
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x3f

    if-le v1, v2, :cond_5a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "At offset "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " byte binary number"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exceeds maximum signed long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    if-eqz p3, :cond_62

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    neg-long v0, v0

    :goto_61
    return-wide v0

    :cond_62
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    goto :goto_61
.end method

.method public static c([BII)Ljava/lang/String;
    .registers 5

    :try_start_0
    sget-object v0, Lorg/b/a/a/e;->a:Lorg/b/a/b/e;

    invoke-static {p0, p1, p2, v0}, Lorg/b/a/a/e;->a([BIILorg/b/a/b/e;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    :try_start_8
    sget-object v0, Lorg/b/a/a/e;->b:Lorg/b/a/b/e;

    invoke-static {p0, p1, p2, v0}, Lorg/b/a/a/e;->a([BIILorg/b/a/b/e;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_f

    move-result-object v0

    goto :goto_6

    :catch_f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
