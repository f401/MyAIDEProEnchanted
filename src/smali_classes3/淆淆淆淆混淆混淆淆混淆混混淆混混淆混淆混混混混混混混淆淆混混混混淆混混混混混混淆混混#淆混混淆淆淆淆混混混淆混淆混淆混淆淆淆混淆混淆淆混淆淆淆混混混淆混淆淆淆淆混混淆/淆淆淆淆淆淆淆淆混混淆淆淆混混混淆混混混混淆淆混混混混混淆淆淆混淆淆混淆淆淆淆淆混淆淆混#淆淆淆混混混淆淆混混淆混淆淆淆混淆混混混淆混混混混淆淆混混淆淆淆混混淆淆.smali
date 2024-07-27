.class public final L淆淆淆淆混淆混淆淆混淆混混淆混混淆混淆混混混混混混混淆淆混混混混淆混混混混混混淆混混混淆淆淆淆淆淆混淆混混淆混淆混混混混淆混混淆淆淆淆混混混淆混淆混淆混淆淆淆混淆混淆淆混淆淆淆混混混淆混淆淆淆淆混混淆/淆淆淆淆淆淆淆淆混混淆淆淆混混混淆混混混混淆淆混混混混混淆淆淆混淆淆混淆淆淆淆淆混淆淆混混混淆混淆混淆混混淆混淆淆混淆混混混混淆淆淆淆混混混淆淆混混淆混淆淆淆混淆混混混淆混混混混淆淆混混淆淆淆混混淆淆;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final 淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    :try_start_0
    new-instance v0, L淆淆淆淆混淆混淆淆混淆混混淆混混淆混淆混混混混混混混淆淆混混混混淆混混混混混混淆混混混淆淆淆淆淆淆混淆混混淆混淆混混混混淆混混淆淆淆淆混混混淆混淆混淆混淆淆淆混淆混淆淆混淆淆淆混混混淆混淆淆淆淆混混淆/淆淆淆淆淆淆淆淆混混淆淆淆混混混淆混混混混淆淆混混混混混淆淆淆混淆淆混淆淆淆淆淆混淆淆混混混淆混淆混淆混混淆混淆淆混淆混混混混淆淆淆淆混混混淆淆混混淆混淆淆淆混淆混混混淆混混混混淆淆混混淆淆淆混混淆淆$淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混;

    invoke-direct {v0}, L淆淆淆淆混淆混淆淆混淆混混淆混混淆混淆混混混混混混混淆淆混混混混淆混混混混混混淆混混混淆淆淆淆淆淆混淆混混淆混淆混混混混淆混混淆淆淆淆混混混淆混淆混淆混淆淆淆混淆混淆淆混淆淆淆混混混淆混淆淆淆淆混混淆/淆淆淆淆淆淆淆淆混混淆淆淆混混混淆混混混混淆淆混混混混混淆淆淆混淆淆混淆淆淆淆淆混淆淆混混混淆混淆混淆混混淆混淆淆混淆混混混混淆淆淆淆混混混淆淆混混淆混淆淆淆混淆混混混淆混混混混淆淆混混淆淆淆混混淆淆$淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "%n"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static 淆淆淆淆淆淆淆淆混淆淆混混混混混淆混混混混淆混混混混淆淆淆淆淆淆淆混混混淆混淆淆淆淆混混混混淆淆混淆混淆混淆混混混混混淆混淆淆混混混淆淆混淆淆混淆混混淆淆混淆混淆淆混淆混混混混混混混混淆混混淆淆淆混混([B)Ljava/lang/String;
    .registers 5

    .line 1
    array-length v1, p0

    new-array v2, v1, [C

    const/4 v0, 0x0

    :goto_0
    if-eq v0, v1, :cond_0

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static 淆淆淆淆淆淆淆淆混混淆淆淆混混混淆混混混混淆淆混混混混混淆淆淆混淆淆混淆淆淆淆淆混淆淆混混混淆混淆混淆混混淆混淆淆混淆混混混混淆淆淆淆混混混淆淆混混淆混淆淆淆混淆混混混淆混混混混淆淆混混淆淆淆混混淆淆(Ljava/lang/String;)[B
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v2, v1, [B

    const/4 v0, 0x0

    :goto_0
    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static 淆淆淆淆淆淆混淆淆混淆混混淆淆淆淆混混混混混淆淆淆淆淆混淆淆淆淆混混混混混混混淆淆淆淆混淆混混淆淆淆淆混混混淆混混淆淆淆淆混淆混混淆混淆淆淆淆混淆混淆淆混淆混淆淆淆混淆淆混淆混混淆淆混淆淆淆混混混混淆(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    move v0, v1

    move v2, v1

    :goto_0
    array-length v1, v3

    if-eq v0, v1, :cond_0

    aget-char v1, v3, v0

    const/16 v4, 0x41

    if-gt v4, v1, :cond_2

    const/16 v4, 0x5a

    if-lt v4, v1, :cond_2

    add-int/lit8 v1, v1, -0x41

    add-int/lit8 v1, v1, 0x61

    int-to-char v1, v1

    aput-char v1, v3, v0

    const/4 v2, 0x1

    move v1, v2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    :cond_1
    return-object p0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public static 淆淆淆淆淆淆混淆混混混淆淆淆淆混淆淆混淆淆混混淆淆混混混淆淆淆淆淆淆混淆混淆混混混混混混混混混淆混混混淆混混混混混淆混淆混混淆淆混淆淆淆混淆混淆淆淆混混淆混混淆淆混混淆淆混淆淆淆淆淆混淆淆混混淆混混混([CLjava/io/OutputStream;)V
    .registers 6

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_5

    aget-char v2, p0, v0

    const/16 v1, 0x80

    if-ge v2, v1, :cond_0

    :goto_1
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x800

    if-ge v2, v1, :cond_1

    shr-int/lit8 v1, v2, 0x6

    or-int/lit16 v1, v1, 0xc0

    move v3, v0

    :goto_2
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    and-int/lit8 v0, v2, 0x3f

    or-int/lit16 v2, v0, 0x80

    move v0, v3

    goto :goto_1

    :cond_1
    const v1, 0xd800

    if-lt v2, v1, :cond_4

    const v1, 0xdfff

    if-gt v2, v1, :cond_4

    add-int/lit8 v3, v0, 0x1

    array-length v0, p0

    if-ge v3, v0, :cond_3

    aget-char v0, p0, v3

    const v1, 0xdbff

    if-gt v2, v1, :cond_2

    and-int/lit16 v1, v2, 0x3ff

    shl-int/lit8 v1, v1, 0xa

    and-int/lit16 v0, v0, 0x3ff

    or-int/2addr v0, v1

    const/high16 v1, 0x10000

    add-int v2, v0, v1

    shr-int/lit8 v0, v2, 0x12

    or-int/lit16 v0, v0, 0xf0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, v2, 0xc

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    move v1, v0

    :goto_3
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, v2, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    move v1, v0

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid UTF-16 codepoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid UTF-16 codepoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    shr-int/lit8 v1, v2, 0xc

    or-int/lit16 v1, v1, 0xe0

    move v3, v0

    goto :goto_3

    :cond_5
    return-void
.end method

.method public static 淆淆淆淆淆淆混淆混混混混混混淆混淆淆淆混淆淆淆淆淆淆混混混混淆淆混淆淆混混混淆混混淆淆混淆混淆淆混淆淆混混混淆淆混淆混混淆混混淆混淆淆淆混混淆混混淆混混混淆淆淆淆淆淆淆混淆淆淆混淆混淆淆淆淆淆淆混混混(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    move v0, v1

    move v2, v1

    :goto_0
    array-length v1, v3

    if-eq v2, v1, :cond_1

    aget-char v1, v3, v2

    const/16 v4, 0x61

    if-gt v4, v1, :cond_0

    const/16 v4, 0x7a

    if-lt v4, v1, :cond_0

    add-int/lit8 v0, v1, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    aput-char v0, v3, v2

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    :cond_2
    return-object p0
.end method
