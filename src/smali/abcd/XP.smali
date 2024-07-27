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

    move-result v0

    return v0
.end method

.method public static j6(Ljava/io/InputStream;[BII)I
    .registers 7

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p3, :cond_1

    :cond_0
    return v0

    :cond_1
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static j6(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5

    const/4 v2, 0x0

    sget v0, Labcd/XP;->j6:I

    new-array v0, v0, [B

    :goto_0
    array-length v1, v0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static j6(Ljava/io/InputStream;)[B
    .registers 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0}, Labcd/XP;->j6(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
