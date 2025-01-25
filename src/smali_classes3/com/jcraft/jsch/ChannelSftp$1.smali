.class Lcom/jcraft/jsch/ChannelSftp$1;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jcraft/jsch/ChannelSftp;->j6(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private DW:Z

.field private final EQ:[B

.field private FH:[I

.field private Hw:I

.field private final J0:Lcom/jcraft/jsch/SftpProgressMonitor;

.field private VH:I

.field private Zo:I

.field private gn:Lcom/jcraft/jsch/ChannelSftp$Header;

.field private j6:Z

.field final tp:Lcom/jcraft/jsch/ChannelSftp;

.field u7:[B

.field private v5:I

.field private final we:[J


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/ChannelSftp;[B[JLcom/jcraft/jsch/SftpProgressMonitor;)V
    .registers 5

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->tp:Lcom/jcraft/jsch/ChannelSftp;

    iput-object p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->EQ:[B

    iput-object p3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->we:[J

    iput-object p4, p0, Lcom/jcraft/jsch/ChannelSftp$1;->J0:Lcom/jcraft/jsch/SftpProgressMonitor;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->j6:Z

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->DW:Z

    new-array p4, p2, [I

    iput-object p4, p0, Lcom/jcraft/jsch/ChannelSftp$1;->FH:[I

    iput p3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Hw:I

    iput p3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->v5:I

    iput p3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Zo:I

    iput p3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->VH:I

    new-instance p3, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p3, p1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iput-object p3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->gn:Lcom/jcraft/jsch/ChannelSftp$Header;

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->u7:[B

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->DW:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$1;->flush()V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->J0:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/jcraft/jsch/SftpProgressMonitor;->end()V

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->tp:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->EQ:[B

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->gn:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;[BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_27
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_18} :catch_1c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->DW:Z

    return-void

    :catch_1c
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_27
    move-exception v0

    throw v0
.end method

.method public flush()V
    .registers 4

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->DW:Z

    if-nez v0, :cond_2e

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->j6:Z

    if-nez v0, :cond_2d

    :goto_8
    :try_start_8
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->VH:I

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Zo:I

    if-gt v0, v1, :cond_f

    goto :goto_2d

    :cond_f
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->tp:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->gn:Lcom/jcraft/jsch/ChannelSftp$Header;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;[ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_2d

    :cond_1b
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Zo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Zo:I
    :try_end_21
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_8 .. :try_end_21} :catch_22

    goto :goto_8

    :catch_22
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_37

    :goto_36
    throw v0

    :goto_37
    goto :goto_36
.end method

.method public write(I)V
    .registers 4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->u7:[B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/jcraft/jsch/ChannelSftp$1;->write([BII)V

    return-void
.end method

.method public write([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/ChannelSftp$1;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 13

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->j6:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->tp:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Hw:I

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->tp:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->v5:I

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->j6:Z

    :cond_17
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->DW:Z

    if-nez v0, :cond_ba

    move v0, p3

    :cond_1c
    :goto_1c
    if-gtz v0, :cond_36

    :try_start_1e
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->J0:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz p1, :cond_35

    int-to-long p2, p3

    invoke-interface {p1, p2, p3}, Lcom/jcraft/jsch/SftpProgressMonitor;->j6(J)Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_35

    :cond_2a
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$1;->close()V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "canceled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    :goto_35
    return-void

    :cond_36
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->tp:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->EQ:[B

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp$1;->we:[J

    aget-wide v5, v4, v1

    move-wide v4, v5

    move-object v6, p1

    move v7, p2

    move v8, v0

    invoke-static/range {v2 .. v8}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;[BJ[BII)I

    move-result v2

    iget v3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->VH:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->VH:I

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->we:[J
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_4e} :catch_b8
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_4e} :catch_ad

    aget-wide v4, v3, v1

    int-to-long v6, v2

    add-long/2addr v4, v6

    aput-wide v4, v3, v1

    add-int/2addr p2, v2

    sub-int/2addr v0, v2

    :try_start_56
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->tp:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v2}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Hw:I

    if-eq v2, v3, :cond_70

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->tp:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v2}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    const/16 v3, 0x400

    if-lt v2, v3, :cond_1c

    :cond_70
    :goto_70
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->tp:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v2}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-gtz v2, :cond_7d

    goto :goto_1c

    :cond_7d
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->tp:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->FH:[I

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp$1;->gn:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v2, v3, v4}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;[ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->FH:[I

    aget v2, v2, v1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->v5:I

    iget v3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Hw:I

    if-gt v3, v2, :cond_a4

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->tp:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v3}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v2, v3, :cond_a4

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Zo:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Zo:I

    goto :goto_70

    :cond_a4
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const-string p2, ""

    const/4 p3, 0x4

    invoke-direct {p1, p3, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_ad} :catch_b8
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_ad} :catch_ad

    :catch_ad
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_b8
    move-exception p1

    throw p1

    :cond_ba
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream already closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_c3

    :goto_c2
    throw p1

    :goto_c3
    goto :goto_c2
.end method
