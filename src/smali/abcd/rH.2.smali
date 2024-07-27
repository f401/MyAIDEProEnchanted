.class Labcd/rH;
.super Ljava/util/zip/InflaterInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/sH;->DW(Ljava/io/InputStream;JLabcd/yE;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final DW:Labcd/yE;

.field private j6:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;JLabcd/yE;)V
    .registers 7

    iput-object p5, p0, Labcd/rH;->DW:Labcd/yE;

    invoke-direct {p0, p1, p2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    iput-wide p3, p0, Labcd/rH;->j6:J

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    :try_start_0
    iget-wide v0, p0, Labcd/rH;->j6:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v2, p0, Labcd/rH;->DW:Labcd/yE;

    const/16 v3, 0x40

    new-array v3, v3, [B

    invoke-static {v0, v1, v2, v3}, Labcd/sH;->j6(Ljava/io/InputStream;Ljava/util/zip/Inflater;Labcd/YD;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-static {v0}, Labcd/tE;->j6(Ljava/util/zip/Inflater;)V

    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-static {v1}, Labcd/tE;->j6(Ljava/util/zip/Inflater;)V

    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    throw v0
.end method

.method public read([BII)I
    .registers 10

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v2, p0, Labcd/rH;->j6:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Labcd/rH;->j6:J
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v0

    :catch_0
    move-exception v0

    new-instance v0, Labcd/YC;

    iget-object v1, p0, Labcd/rH;->DW:Labcd/yE;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->corruptObjectBadStream:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Labcd/YC;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw v0
.end method
