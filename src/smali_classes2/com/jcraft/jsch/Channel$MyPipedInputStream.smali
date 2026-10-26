.class Lcom/jcraft/jsch/Channel$MyPipedInputStream;
.super Ljava/io/PipedInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPipedInputStream"
.end annotation


# instance fields
.field private DW:I

.field final FH:Lcom/jcraft/jsch/Channel;

.field private j6:I


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/Channel;I)V
    .locals 1

    const/16 v0, 0x400

    iput-object p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->FH:Lcom/jcraft/jsch/Channel;

    invoke-direct {p0}, Ljava/io/PipedInputStream;-><init>()V

    iput v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6:I

    iput v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->DW:I

    new-array v0, p2, [B

    iput-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    iput p2, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6:I

    iput p2, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->DW:I

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/Channel;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Lcom/jcraft/jsch/Channel;I)V

    iput p3, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->DW:I

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedOutputStream;I)V
    .locals 1

    const/16 v0, 0x400

    iput-object p1, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->FH:Lcom/jcraft/jsch/Channel;

    invoke-direct {p0, p2}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    iput v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6:I

    iput v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->DW:I

    new-array v0, p3, [B

    iput-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    iput p3, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6:I

    return-void
.end method

.method private DW()I
    .locals 3

    iget v0, p0, Ljava/io/PipedInputStream;->out:I

    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v0, v0

    :cond_0
    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    if-ge v1, v0, :cond_2

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public j6()V
    .locals 4

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/PipedInputStream;->available()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/io/PipedInputStream;->out:I

    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    aput-byte v3, v0, v1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/PipedInputStream;->read()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method j6(I)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->DW()I

    move-result v1

    if-ge v1, p1, :cond_6

    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v0, v0

    sub-int v2, v0, v1

    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v1, v0

    :goto_0
    sub-int v0, v1, v2

    if-lt v0, p1, :cond_5

    iget v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->DW:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v1, v0, :cond_8

    :goto_1
    sub-int v1, v0, v2

    if-ge v1, p1, :cond_0

    monitor-exit p0

    :goto_2
    return-void

    :cond_0
    :try_start_1
    new-array v1, v0, [B

    iget v2, p0, Ljava/io/PipedInputStream;->out:I

    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    if-ge v2, v3, :cond_3

    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v4, v4

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_3
    iput-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_4
    monitor-exit p0

    goto :goto_2

    :cond_3
    :try_start_2
    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    iget v3, p0, Ljava/io/PipedInputStream;->out:I

    if-ge v2, v3, :cond_4

    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Ljava/io/PipedInputStream;->buffer:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Ljava/io/PipedInputStream;->in:I

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Ljava/io/PipedInputStream;->buffer:[B

    iget v3, p0, Ljava/io/PipedInputStream;->out:I

    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v4, v4

    iget v5, p0, Ljava/io/PipedInputStream;->out:I

    sub-int/2addr v4, v5

    sub-int v4, v0, v4

    iget-object v5, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v5, v5

    iget v6, p0, Ljava/io/PipedInputStream;->out:I

    sub-int/2addr v5, v6

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v2, v2

    iget v3, p0, Ljava/io/PipedInputStream;->out:I

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    iput v0, p0, Ljava/io/PipedInputStream;->out:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_3
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    iget v2, p0, Ljava/io/PipedInputStream;->out:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v4, v4

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v0, v0

    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    goto :goto_3

    :cond_5
    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    array-length v0, v0

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->j6:I

    if-le v1, v0, :cond_2

    div-int/lit8 v1, v1, 0x2

    if-ge v1, v0, :cond_7

    :goto_5
    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    move v0, v1

    goto :goto_1
.end method
