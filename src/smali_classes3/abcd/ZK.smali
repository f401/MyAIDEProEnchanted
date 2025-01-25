.class public Labcd/ZK;
.super Ljava/io/InputStream;


# instance fields
.field private DW:Ljava/io/InputStream;

.field private FH:Ljava/io/OutputStream;

.field private j6:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Labcd/ZK;->DW:Ljava/io/InputStream;

    iput-object p2, p0, Labcd/ZK;->FH:Ljava/io/OutputStream;

    return-void
.end method

.method private j6()[B
    .registers 2

    iget-object v0, p0, Labcd/ZK;->j6:[B

    if-nez v0, :cond_a

    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/ZK;->j6:[B

    :cond_a
    iget-object v0, p0, Labcd/ZK;->j6:[B

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 5

    invoke-direct {p0}, Labcd/ZK;->j6()[B

    move-result-object v0

    :goto_4
    iget-object v1, p0, Labcd/ZK;->DW:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_17

    iget-object v0, p0, Labcd/ZK;->FH:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Labcd/ZK;->DW:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :cond_17
    iget-object v2, p0, Labcd/ZK;->FH:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4
.end method

.method public read()I
    .registers 5

    invoke-direct {p0}, Labcd/ZK;->j6()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Labcd/ZK;->read([BII)I

    move-result v3

    if-ne v3, v2, :cond_11

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_12

    :cond_11
    const/4 v0, -0x1

    :goto_12
    return v0
.end method

.method public read([BII)I
    .registers 5

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    iget-object v0, p0, Labcd/ZK;->DW:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-lez p3, :cond_11

    iget-object v0, p0, Labcd/ZK;->FH:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_11
    return p3
.end method

.method public skip(J)J
    .registers 11

    invoke-direct {p0}, Labcd/ZK;->j6()[B

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_7
    cmp-long v5, v1, p1

    if-ltz v5, :cond_c

    goto :goto_1c

    :cond_c
    iget-object v5, p0, Labcd/ZK;->DW:Ljava/io/InputStream;

    array-length v6, v0

    int-to-long v6, v6

    invoke-static {v6, v7, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-gtz v5, :cond_1d

    :goto_1c
    return-wide v3

    :cond_1d
    iget-object v7, p0, Labcd/ZK;->FH:Ljava/io/OutputStream;

    invoke-virtual {v7, v0, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v5, v5

    add-long/2addr v3, v5

    sub-long/2addr p1, v5

    goto :goto_7
.end method
