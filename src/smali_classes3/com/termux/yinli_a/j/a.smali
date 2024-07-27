.class public final Lcom/termux/yinli_a/j/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .registers 9

    const-string v0, "$this$copyTo"

    invoke-static {p0, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-static {p1, v0}, Lcom/termux/yinli_a/k/b/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v3, p2, [B

    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const-wide/16 v0, 0x0

    :goto_0
    if-ltz v2, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v4, v2

    add-long/2addr v0, v4

    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static synthetic a(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    .registers 7

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/16 p2, 0x2000

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/termux/yinli_a/j/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide v0

    return-wide v0
.end method
