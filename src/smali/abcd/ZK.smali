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

    if-nez v0, :cond_0

    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Labcd/ZK;->j6:[B

    :cond_0
    iget-object v0, p0, Labcd/ZK;->j6:[B

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 5

    invoke-direct {p0}, Labcd/ZK;->j6()[B

    move-result-object v0

    :goto_0
    iget-object v1, p0, Labcd/ZK;->DW:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v0, p0, Labcd/ZK;->FH:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Labcd/ZK;->DW:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :cond_0
    iget-object v2, p0, Labcd/ZK;->FH:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public read()I
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Labcd/ZK;->j6()[B

    move-result-object v0

    invoke-virtual {p0, v0, v2, v3}, Labcd/ZK;->read([BII)I

    move-result v1

    if-ne v1, v3, :cond_0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public read([BII)I
    .registers 6

    if-nez p3, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Labcd/ZK;->DW:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Labcd/ZK;->FH:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public skip(J)J
    .registers 12

    const-wide/16 v2, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Labcd/ZK;->j6()[B

    move-result-object v4

    move-wide v0, v2

    :goto_0
    cmp-long v5, v2, p1

    if-ltz v5, :cond_1

    :cond_0
    return-wide v0

    :cond_1
    iget-object v5, p0, Labcd/ZK;->DW:Ljava/io/InputStream;

    array-length v6, v4

    int-to-long v6, v6

    invoke-static {v6, v7, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v5, v4, v8, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_0

    iget-object v6, p0, Labcd/ZK;->FH:Ljava/io/OutputStream;

    invoke-virtual {v6, v4, v8, v5}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v6, v5

    add-long/2addr v0, v6

    sub-long/2addr p1, v6

    goto :goto_0
.end method
