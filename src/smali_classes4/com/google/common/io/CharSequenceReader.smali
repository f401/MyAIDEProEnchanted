.class final Lcom/google/common/io/CharSequenceReader;
.super Ljava/io/Reader;
.source "CharSequenceReader.java"


# instance fields
.field private mark:I

.field private pos:I

.field private seq:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    .line 43
    return-void
.end method

.method private checkOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    .line 49
    return-void

    .line 47
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "reader closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hasRemaining()Z
    .registers 2

    .line 52
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->remaining()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private remaining()I
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 128
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 129
    monitor-exit p0

    return-void

    .line 127
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public mark(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 115
    if-ltz p1, :cond_12

    const/4 v0, 0x1

    :goto_4
    :try_start_4
    const-string v1, "readAheadLimit (%s) may not be negative"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 116
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V

    .line 117
    iget v0, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    iput v0, p0, Lcom/google/common/io/CharSequenceReader;->mark:I
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 118
    monitor-exit p0

    return-void

    .line 115
    :cond_12
    const/4 v0, 0x0

    goto :goto_4

    .line 114
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 75
    :try_start_1
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V

    .line 76
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1a

    move-result v0

    :goto_16
    monitor-exit p0

    return v0

    :cond_18
    const/4 v0, -0x1

    goto :goto_16

    .line 74
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 61
    :try_start_1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V

    .line 63
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->hasRemaining()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_33

    move-result v0

    if-nez v0, :cond_10

    .line 64
    monitor-exit p0

    const/4 v0, -0x1

    .line 70
    :goto_f
    return v0

    .line 66
    :cond_10
    :try_start_10
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 67
    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_31

    .line 68
    iget-object v2, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_33

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 70
    :cond_31
    monitor-exit p0

    goto :goto_f

    .line 60
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read([CII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 81
    add-int v0, p2, p3

    :try_start_3
    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 82
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V

    .line 83
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->hasRemaining()Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_33

    move-result v0

    if-nez v0, :cond_13

    .line 84
    monitor-exit p0

    const/4 v0, -0x1

    .line 90
    :goto_12
    return v0

    .line 86
    :cond_13
    :try_start_13
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 87
    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v0, :cond_31

    .line 88
    iget-object v2, p0, Lcom/google/common/io/CharSequenceReader;->seq:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    add-int v4, p2, v1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    aput-char v2, p1, v4
    :try_end_2e
    .catchall {:try_start_13 .. :try_end_2e} :catchall_33

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 90
    :cond_31
    monitor-exit p0

    goto :goto_12

    .line 80
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ready()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 104
    :try_start_1
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    .line 105
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 103
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 122
    :try_start_1
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V

    .line 123
    iget v0, p0, Lcom/google/common/io/CharSequenceReader;->mark:I

    iput v0, p0, Lcom/google/common/io/CharSequenceReader;->pos:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 124
    monitor-exit p0

    return-void

    .line 121
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 95
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_22

    const/4 v0, 0x1

    :goto_8
    :try_start_8
    const-string v1, "n (%s) may not be negative"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 96
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->checkOpen()V

    .line 97
    invoke-direct {p0}, Lcom/google/common/io/CharSequenceReader;->remaining()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 98
    iget v1, p0, Lcom/google/common/io/CharSequenceReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/common/io/CharSequenceReader;->pos:I
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_24

    .line 99
    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    .line 95
    :cond_22
    const/4 v0, 0x0

    goto :goto_8

    .line 94
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method
