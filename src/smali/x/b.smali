.class public final Lx/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    :try_start_0
    new-instance v0, Lx/b$a;

    invoke-direct {v0}, Lx/b$a;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_17

    :catch_c
    move-exception v0

    :try_start_d
    const-string v0, "%n"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v0

    :goto_17
    return-void
.end method

.method public static b([B)Ljava/lang/String;
    .registers 5

    .line 1
    array-length v0, p0

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_4
    if-eq v2, v0, :cond_10

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2
    :cond_10
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static c(Ljava/lang/String;)[B
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_7
    if-eq v2, v0, :cond_13

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_13
    return-object v1
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    array-length v3, v0

    if-eq v1, v3, :cond_1c

    aget-char v3, v0, v1

    const/16 v4, 0x41

    if-gt v4, v3, :cond_19

    const/16 v4, 0x5a

    if-lt v4, v3, :cond_19

    add-int/lit8 v3, v3, 0x20

    int-to-char v2, v3

    aput-char v2, v0, v1

    const/4 v2, 0x1

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    if-eqz v2, :cond_23

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    :cond_23
    return-object p0
.end method

.method public static e([CLjava/io/OutputStream;)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_67

    aget-char v1, p0, v0

    const/16 v2, 0x80

    if-ge v1, v2, :cond_b

    goto :goto_61

    :cond_b
    const/16 v3, 0x800

    if-ge v1, v3, :cond_14

    shr-int/lit8 v3, v1, 0x6

    or-int/lit16 v3, v3, 0xc0

    goto :goto_5b

    :cond_14
    const v3, 0xd800

    if-lt v1, v3, :cond_4f

    const v3, 0xdfff

    if-gt v1, v3, :cond_4f

    add-int/lit8 v0, v0, 0x1

    array-length v3, p0

    const-string v4, "invalid UTF-16 codepoint"

    if-ge v0, v3, :cond_49

    aget-char v3, p0, v0

    const v5, 0xdbff

    if-gt v1, v5, :cond_43

    and-int/lit16 v1, v1, 0x3ff

    shl-int/lit8 v1, v1, 0xa

    and-int/lit16 v3, v3, 0x3ff

    or-int/2addr v1, v3

    const/high16 v3, 0x10000

    add-int/2addr v1, v3

    shr-int/lit8 v3, v1, 0x12

    or-int/lit16 v3, v3, 0xf0

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    goto :goto_53

    :cond_43
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_49
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4f
    shr-int/lit8 v3, v1, 0xc

    or-int/lit16 v3, v3, 0xe0

    :goto_53
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    :goto_5b
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    :goto_61
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_67
    return-void
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    array-length v3, v0

    if-eq v1, v3, :cond_1c

    aget-char v3, v0, v1

    const/16 v4, 0x61

    if-gt v4, v3, :cond_19

    const/16 v4, 0x7a

    if-lt v4, v3, :cond_19

    add-int/lit8 v3, v3, -0x20

    int-to-char v2, v3

    aput-char v2, v0, v1

    const/4 v2, 0x1

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    if-eqz v2, :cond_23

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    :cond_23
    return-object p0
.end method
