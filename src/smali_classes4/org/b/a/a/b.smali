.class public Lorg/b/a/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Ljava/io/OutputStream;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:[B

.field private g:I

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;II)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/b/a/a/b;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;II)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;II)V
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/b/a/a/b;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lorg/b/a/a/b;->b:Ljava/io/OutputStream;

    iput-boolean v2, p0, Lorg/b/a/a/b;->i:Z

    iput p3, p0, Lorg/b/a/a/b;->c:I

    iput p4, p0, Lorg/b/a/a/b;->d:I

    iget v0, p0, Lorg/b/a/a/b;->c:I

    iget v1, p0, Lorg/b/a/a/b;->d:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/b/a/a/b;->e:I

    iget v0, p0, Lorg/b/a/a/b;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/b/a/a/b;->f:[B

    iget-object v0, p0, Lorg/b/a/a/b;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_27

    const/4 v0, -0x1

    iput v0, p0, Lorg/b/a/a/b;->g:I

    iget v0, p0, Lorg/b/a/a/b;->e:I

    iput v0, p0, Lorg/b/a/a/b;->h:I

    :goto_26
    return-void

    :cond_27
    iput v2, p0, Lorg/b/a/a/b;->g:I

    iput v2, p0, Lorg/b/a/a/b;->h:I

    goto :goto_26
.end method

.method private e()Z
    .registers 9

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/b/a/a/b;->i:Z

    if-eqz v1, :cond_1b

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ReadBlock: blkIdx = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/b/a/a/b;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1b
    iget-object v1, p0, Lorg/b/a/a/b;->a:Ljava/io/InputStream;

    if-nez v1, :cond_27

    new-instance v0, Ljava/io/IOException;

    const-string v1, "reading from an output buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    iput v0, p0, Lorg/b/a/a/b;->h:I

    iget v1, p0, Lorg/b/a/a/b;->c:I

    move v2, v0

    :cond_2c
    :goto_2c
    if-gtz v1, :cond_36

    :goto_2e
    iget v0, p0, Lorg/b/a/a/b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/b/a/a/b;->g:I

    const/4 v0, 0x1

    :cond_35
    return v0

    :cond_36
    iget-object v3, p0, Lorg/b/a/a/b;->a:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/b/a/a/b;->f:[B

    invoke-virtual {v3, v4, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    int-to-long v4, v3

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_4e

    if-eqz v2, :cond_35

    iget-object v3, p0, Lorg/b/a/a/b;->f:[B

    add-int/2addr v1, v2

    invoke-static {v3, v2, v1, v0}, Ljava/util/Arrays;->fill([BIIB)V

    goto :goto_2e

    :cond_4e
    int-to-long v2, v2

    add-long/2addr v2, v4

    long-to-int v2, v2

    int-to-long v6, v1

    sub-long/2addr v6, v4

    long-to-int v1, v6

    iget v3, p0, Lorg/b/a/a/b;->c:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2c

    iget-boolean v3, p0, Lorg/b/a/a/b;->i:Z

    if-eqz v3, :cond_2c

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ReadBlock: INCOMPLETE READ "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/b/a/a/b;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes read."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2c
.end method

.method private f()V
    .registers 5

    const/4 v3, 0x0

    iget-boolean v0, p0, Lorg/b/a/a/b;->i:Z

    if-eqz v0, :cond_1b

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WriteBlock: blkIdx = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/b/a/a/b;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1b
    iget-object v0, p0, Lorg/b/a/a/b;->b:Ljava/io/OutputStream;

    if-nez v0, :cond_27

    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    iget-object v0, p0, Lorg/b/a/a/b;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/b/a/a/b;->f:[B

    iget v2, p0, Lorg/b/a/a/b;->c:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lorg/b/a/a/b;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iput v3, p0, Lorg/b/a/a/b;->h:I

    iget v0, p0, Lorg/b/a/a/b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/b/a/a/b;->g:I

    iget-object v0, p0, Lorg/b/a/a/b;->f:[B

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lorg/b/a/a/b;->d:I

    return v0
.end method

.method public a([B)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/b/a/a/b;->a()I

    move-result v2

    move v1, v0

    :goto_6
    if-lt v1, v2, :cond_a

    const/4 v0, 0x1

    :cond_9
    return v0

    :cond_a
    aget-byte v3, p1, v1

    if-nez v3, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public b()[B
    .registers 6

    iget-boolean v0, p0, Lorg/b/a/a/b;->i:Z

    if-eqz v0, :cond_26

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ReadRecord: recIdx = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/b/a/a/b;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " blkIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/b/a/a/b;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_26
    iget-object v0, p0, Lorg/b/a/a/b;->a:Ljava/io/InputStream;

    if-nez v0, :cond_3e

    iget-object v0, p0, Lorg/b/a/a/b;->b:Ljava/io/OutputStream;

    if-nez v0, :cond_36

    new-instance v0, Ljava/io/IOException;

    const-string v1, "input buffer is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    new-instance v0, Ljava/io/IOException;

    const-string v1, "reading from an output buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    iget v0, p0, Lorg/b/a/a/b;->h:I

    iget v1, p0, Lorg/b/a/a/b;->e:I

    if-lt v0, v1, :cond_4c

    invoke-direct {p0}, Lorg/b/a/a/b;->e()Z

    move-result v0

    if-nez v0, :cond_4c

    const/4 v0, 0x0

    :goto_4b
    return-object v0

    :cond_4c
    iget v0, p0, Lorg/b/a/a/b;->d:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/b/a/a/b;->f:[B

    iget v2, p0, Lorg/b/a/a/b;->h:I

    iget v3, p0, Lorg/b/a/a/b;->d:I

    mul-int/2addr v2, v3

    const/4 v3, 0x0

    iget v4, p0, Lorg/b/a/a/b;->d:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/b/a/a/b;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/b/a/a/b;->h:I

    goto :goto_4b
.end method

.method c()V
    .registers 3

    iget-boolean v0, p0, Lorg/b/a/a/b;->i:Z

    if-eqz v0, :cond_b

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "TarBuffer.flushBlock() called."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lorg/b/a/a/b;->b:Ljava/io/OutputStream;

    if-nez v0, :cond_17

    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iget v0, p0, Lorg/b/a/a/b;->h:I

    if-lez v0, :cond_1e

    invoke-direct {p0}, Lorg/b/a/a/b;->f()V

    :cond_1e
    return-void
.end method

.method public d()V
    .registers 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/b/a/a/b;->i:Z

    if-eqz v0, :cond_c

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "TarBuffer.closeBuffer()."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lorg/b/a/a/b;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lorg/b/a/a/b;->c()V

    iget-object v0, p0, Lorg/b/a/a/b;->b:Ljava/io/OutputStream;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lorg/b/a/a/b;->b:Ljava/io/OutputStream;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eq v0, v1, :cond_26

    iget-object v0, p0, Lorg/b/a/a/b;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iput-object v2, p0, Lorg/b/a/a/b;->b:Ljava/io/OutputStream;

    :cond_26
    :goto_26
    return-void

    :cond_27
    iget-object v0, p0, Lorg/b/a/a/b;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lorg/b/a/a/b;->a:Ljava/io/InputStream;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v1, :cond_36

    iget-object v0, p0, Lorg/b/a/a/b;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_36
    iput-object v2, p0, Lorg/b/a/a/b;->a:Ljava/io/InputStream;

    goto :goto_26
.end method
