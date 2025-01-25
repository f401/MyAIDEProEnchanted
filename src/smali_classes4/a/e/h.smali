.class public La/e/h;
.super Ljava/lang/Object;

# interfaces
.implements La/e/m;


# instance fields
.field private final a:La/e/o;

.field private final b:[B


# direct methods
.method public constructor <init>(La/e/o;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, La/e/h;->b:[B

    iput-object p1, p0, La/e/h;->a:La/e/o;

    return-void
.end method


# virtual methods
.method public a(La/e/g;)V
    .registers 6

    :try_start_0
    invoke-interface {p1}, La/e/g;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, La/e/h;->a:La/e/o;

    invoke-interface {v0, p1}, La/e/o;->a(La/e/g;)Z

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, La/e/h;->a:La/e/o;

    invoke-interface {v0, p1}, La/e/o;->b(La/e/g;)Ljava/io/OutputStream;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_5f

    move-result-object v1

    if-eqz v1, :cond_b

    :try_start_14
    invoke-interface {p1}, La/e/g;->c()Ljava/io/InputStream;
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_5a

    move-result-object v0

    :try_start_18
    invoke-virtual {p0, v0, v1}, La/e/h;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_55

    :try_start_1e
    invoke-interface {p1}, La/e/g;->d()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_5a

    :try_start_21
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_5f

    goto :goto_b

    :catch_25
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: can\'t write resource ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, La/e/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/j/l;->a(Ljava/lang/String;)V

    goto :goto_b

    :catchall_55
    move-exception v0

    :try_start_56
    invoke-interface {p1}, La/e/g;->d()V

    throw v0
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception v0

    :try_start_5b
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5f} :catch_25
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5f} :catch_5f

    :catch_5f
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t write resource ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, La/e/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0
.end method

.method protected a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6

    :goto_0
    iget-object v0, p0, La/e/h;->b:[B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-gez v0, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, La/e/h;->b:[B

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method
