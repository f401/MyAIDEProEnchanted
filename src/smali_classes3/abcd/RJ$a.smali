.class final Labcd/RJ$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/RJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final DW:J

.field final j6:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/RJ$a;->j6:Ljava/io/InputStream;

    iput-wide p2, p0, Labcd/RJ$a;->DW:J

    return-void
.end method


# virtual methods
.method j6()[B
    .registers 7

    :try_start_0
    iget-wide v0, p0, Labcd/RJ$a;->DW:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_12

    long-to-int v1, v0

    new-array v0, v1, [B

    iget-object v2, p0, Labcd/RJ$a;->j6:Ljava/io/InputStream;

    invoke-static {v2, v0, v4, v1}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    goto :goto_27

    :cond_12
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x800

    new-array v1, v1, [B

    :goto_1b
    iget-object v2, p0, Labcd/RJ$a;->j6:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gez v2, :cond_2d

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_31

    :goto_27
    iget-object v1, p0, Labcd/RJ$a;->j6:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v0

    :cond_2d
    :try_start_2d
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_1b

    :catchall_31
    move-exception v0

    iget-object v1, p0, Labcd/RJ$a;->j6:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_39

    :goto_38
    throw v0

    :goto_39
    goto :goto_38
.end method
