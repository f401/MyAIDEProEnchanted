.class public final Labcd/XP;
.super Ljava/lang/Object;


# static fields
.field private static j6:I = 0x200


# direct methods
.method public static j6(Ljava/io/InputStream;[B)I
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Labcd/XP;->j6(Ljava/io/InputStream;[BII)I

    move-result p0

    return p0
.end method

.method public static j6(Ljava/io/InputStream;[BII)I
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-lt v0, p3, :cond_4

    goto :goto_e

    :cond_4
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_f

    :goto_e
    return v0

    :cond_f
    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public static j6(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6

    sget v0, Labcd/XP;->j6:I

    new-array v1, v0, [B

    :goto_4
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-gez v3, :cond_c

    return-void

    :cond_c
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4
.end method

.method public static j6(Ljava/io/InputStream;)[B
    .registers 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0}, Labcd/XP;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
