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
    .registers 3

    iput p2, p0, Lc/ag;->a:I

    iput-object p1, p0, Lc/ag;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lc/s;
    .registers 7

    iget v0, p0, Lc/ag;->a:I

    if-eqz v0, :cond_12

    .line 6
    new-instance v0, Lc/az;

    iget-object v1, p0, Lc/ag;->b:Ljava/lang/Object;

    check-cast v1, Lc/bn;

    invoke-virtual {v1}, Lc/bn;->e()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lc/az;-><init>([B)V

    return-object v0

    .line 1
    :cond_12
    invoke-virtual {p0}, Lc/ag;->h()Ljava/io/InputStream;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x1000

    new-array v3, v2, [B

    .line 3
    :goto_1f
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ltz v5, :cond_2a

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1f

    .line 4
    :cond_2a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 5
    new-instance v1, Lc/ae;

    invoke-direct {v1, v0}, Lc/ae;-><init>([B)V

    return-object v1
.end method

.method public final h()Ljava/io/InputStream;
    .registers 3

    iget v0, p0, Lc/ag;->a:I

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, p0, Lc/ag;->b:Ljava/lang/Object;

    check-cast v0, Lc/bn;

    return-object v0

    .line 1
    :cond_9
    new-instance v0, Lc/an;

    iget-object v1, p0, Lc/ag;->b:Ljava/lang/Object;

    check-cast v1, Lc/x;

    invoke-direct {v0, v1}, Lc/an;-><init>(Lc/x;)V

    return-object v0
.end method

.method public final l()Lc/s;
    .registers 5

    iget v0, p0, Lc/ag;->a:I

    const/4 v1, 0x0

    const-string v2, "IOException converting stream to byte array: "

    if-eqz v0, :cond_22

    .line 4
    :try_start_7
    invoke-virtual {p0}, Lc/ag;->c()Lc/s;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    .line 5
    invoke-static {v2}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lc/r;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0, v1}, Lc/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v3

    .line 1
    :cond_22
    :try_start_22
    invoke-virtual {p0}, Lc/ag;->c()Lc/s;

    move-result-object v0
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_26} :catch_27

    return-object v0

    :catch_27
    move-exception v0

    .line 2
    invoke-static {v2}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lc/r;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0, v1}, Lc/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v3
.end method
