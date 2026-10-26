.class public final Lc/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/p;


# instance fields
.field public final a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lc/ag;->a:I

    iput-object p1, p0, Lc/ag;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lc/s;
    .locals 6

    const/16 v5, 0x1000

    const/4 v4, 0x0

    iget v0, p0, Lc/ag;->a:I

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Lc/az;

    iget-object v0, p0, Lc/ag;->b:Ljava/lang/Object;

    check-cast v0, Lc/bn;

    invoke-virtual {v0}, Lc/bn;->e()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lc/az;-><init>([B)V

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lc/ag;->h()Ljava/io/InputStream;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v2, v5, [B

    .line 3
    :goto_1
    invoke-virtual {v0, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 5
    new-instance v0, Lc/ae;

    invoke-direct {v0, v1}, Lc/ae;-><init>([B)V

    goto :goto_0
.end method

.method public final h()Ljava/io/InputStream;
    .locals 2

    iget v0, p0, Lc/ag;->a:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/ag;->b:Ljava/lang/Object;

    check-cast v0, Lc/bn;

    :goto_0
    return-object v0

    .line 1
    :cond_0
    new-instance v1, Lc/an;

    iget-object v0, p0, Lc/ag;->b:Ljava/lang/Object;

    check-cast v0, Lc/x;

    invoke-direct {v1, v0}, Lc/an;-><init>(Lc/x;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final l()Lc/s;
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lc/ag;->a:I

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lc/ag;->c()Lc/s;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 5
    const-string v1, "IOException converting stream to byte array: "

    invoke-static {v1}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lc/r;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, v3}, Lc/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 1
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lc/ag;->c()Lc/s;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2
    const-string v1, "IOException converting stream to byte array: "

    invoke-static {v1}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lc/r;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, v3}, Lc/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method
