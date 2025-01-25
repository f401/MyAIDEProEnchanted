.class final Lcom/google/common/io/MultiInputStream;
.super Ljava/io/InputStream;
.source "MultiInputStream.java"


# instance fields
.field private in:Ljava/io/InputStream;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+",
            "Lcom/google/common/io/ByteSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+",
            "Lcom/google/common/io/ByteSource;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/io/MultiInputStream;->it:Ljava/util/Iterator;

    .line 45
    invoke-direct {p0}, Lcom/google/common/io/MultiInputStream;->advance()V

    .line 46
    return-void
.end method

.method private advance()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/google/common/io/MultiInputStream;->close()V

    .line 62
    iget-object v0, p0, Lcom/google/common/io/MultiInputStream;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 63
    iget-object v0, p0, Lcom/google/common/io/MultiInputStream;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/ByteSource;

    invoke-virtual {v0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/MultiInputStream;->in:Ljava/io/InputStream;

    .line 65
    :cond_19
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/common/io/MultiInputStream;->in:Ljava/io/InputStream;

    if-nez v0, :cond_6

    .line 70
    const/4 v0, 0x0

    .line 72
    :goto_5
    return v0

    :cond_6
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_5
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lcom/google/common/io/MultiInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_a

    .line 52
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_b

    .line 54
    iput-object v1, p0, Lcom/google/common/io/MultiInputStream;->in:Ljava/io/InputStream;

    .line 57
    :cond_a
    return-void

    .line 54
    :catchall_b
    move-exception v0

    iput-object v1, p0, Lcom/google/common/io/MultiInputStream;->in:Ljava/io/InputStream;

    .line 55
    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    .line 82
    :goto_1
    iget-object v0, p0, Lcom/google/common/io/MultiInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_10

    .line 83
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 84
    if-eq v0, v1, :cond_c

    .line 89
    :goto_b
    return v0

    .line 87
    :cond_c
    invoke-direct {p0}, Lcom/google/common/io/MultiInputStream;->advance()V

    goto :goto_1

    :cond_10
    move v0, v1

    .line 89
    goto :goto_b
.end method

.method public read([BII)I
    .registers 6
    .param p1  # [B
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    .line 94
    :goto_1
    iget-object v0, p0, Lcom/google/common/io/MultiInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_10

    .line 95
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 96
    if-eq v0, v1, :cond_c

    .line 101
    :goto_b
    return v0

    .line 99
    :cond_c
    invoke-direct {p0}, Lcom/google/common/io/MultiInputStream;->advance()V

    goto :goto_1

    :cond_10
    move v0, v1

    .line 101
    goto :goto_b
.end method

.method public skip(J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x1

    const-wide/16 v2, 0x0

    .line 106
    iget-object v0, p0, Lcom/google/common/io/MultiInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_c

    cmp-long v1, p1, v2

    if-gtz v1, :cond_e

    :cond_c
    move-wide v0, v2

    .line 116
    :cond_d
    :goto_d
    return-wide v0

    .line 109
    :cond_e
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 110
    cmp-long v4, v0, v2

    if-nez v4, :cond_d

    .line 113
    invoke-virtual {p0}, Lcom/google/common/io/MultiInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1f

    move-wide v0, v2

    .line 114
    goto :goto_d

    .line 116
    :cond_1f
    iget-object v0, p0, Lcom/google/common/io/MultiInputStream;->in:Ljava/io/InputStream;

    sub-long v2, p1, v6

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    add-long/2addr v0, v6

    goto :goto_d
.end method
