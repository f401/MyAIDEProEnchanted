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
    .registers 6

    iput-object p5, p0, Labcd/rH;->DW:Labcd/yE;

    invoke-direct {p0, p1, p2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    iput-wide p3, p0, Labcd/rH;->j6:J

    return-void
.end method


# virtual methods
.method public close()V
    .registers 6

    :try_start_0
    iget-wide v0, p0, Labcd/rH;->j6:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_15

    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v2, p0, Labcd/rH;->DW:Labcd/yE;

    const/16 v3, 0x40

    new-array v3, v3, [B

    invoke-static {v0, v1, v2, v3}, Labcd/sH;->j6(Ljava/io/InputStream;Ljava/util/zip/Inflater;Labcd/YD;[B)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_1e

    :cond_15
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-static {v0}, Labcd/tE;->j6(Ljava/util/zip/Inflater;)V

    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    return-void

    :catchall_1e
    move-exception v0

    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-static {v1}, Labcd/tE;->j6(Ljava/util/zip/Inflater;)V

    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    throw v0
.end method

.method public read([BII)I
    .registers 6

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_c

    iget-wide p2, p0, Labcd/rH;->j6:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Labcd/rH;->j6:J
    :try_end_c
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_c} :catch_d

    :cond_c
    return p1

    :catch_d
    move-exception p1

    new-instance p1, Labcd/YC;

    iget-object p2, p0, Labcd/rH;->DW:Labcd/yE;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p3

    iget-object p3, p3, Lorg/eclipse/jgit/JGitText;->corruptObjectBadStream:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Labcd/YC;-><init>(Labcd/yE;Ljava/lang/String;)V

    throw p1
.end method
