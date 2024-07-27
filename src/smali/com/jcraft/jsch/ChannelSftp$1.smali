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
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->tp:Lcom/jcraft/jsch/ChannelSftp;

    iput-object p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->EQ:[B

    iput-object p3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->we:[J

    iput-object p4, p0, Lcom/jcraft/jsch/ChannelSftp$1;->J0:Lcom/jcraft/jsch/SftpProgressMonitor;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-boolean v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->j6:Z

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->DW:Z

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->FH:[I

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Hw:I

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->v5:I

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Zo:I

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->VH:I

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->gn:Lcom/jcraft/jsch/ChannelSftp$Header;

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->u7:[B

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->DW:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$1;->flush()V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->J0:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/jcraft/jsch/SftpProgressMonitor;->end()V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->tp:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->EQ:[B

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->gn:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;[BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->DW:Z

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    throw v0
.end method

.method public flush()V
    .registers 4

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->DW:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->j6:Z

    if-nez v0, :cond_0

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->VH:I

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Zo:I

    if-gt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->tp:Lcom/jcraft/jsch/ChannelSftp;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->gn:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;[ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Zo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Zo:I
    :try_end_0
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->u7:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp$1;->write([BII)V

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
    .registers 14

    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->j6:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->tp:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Hw:I

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->tp:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->v5:I

    iput-boolean v7, p0, Lcom/jcraft/jsch/ChannelSftp$1;->j6:Z

    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->DW:Z

    if-nez v0, :cond_7

    move v5, p2

    move v6, p3

    :cond_1
    if-gtz v6, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->J0:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->J0:Lcom/jcraft/jsch/SftpProgressMonitor;

    int-to-long v2, p3

    invoke-interface {v0, v2, v3}, Lcom/jcraft/jsch/SftpProgressMonitor;->j6(J)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$1;->close()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    throw v0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->tp:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->EQ:[B

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->we:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;[BJ[BII)I

    move-result v0

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->VH:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->VH:I

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->we:[J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    aget-wide v2, v1, v7

    int-to-long v8, v0

    add-long/2addr v2, v8

    aput-wide v2, v1, v7

    add-int/2addr v5, v0

    sub-int/2addr v6, v0

    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->tp:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Hw:I

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->tp:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    const/16 v1, 0x400

    if-lt v0, v1, :cond_1

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->tp:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->tp:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->FH:[I

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->gn:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;[ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->FH:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->v5:I

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Hw:I

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->v5:I

    if-gt v0, v1, :cond_6

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->v5:I

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->tp:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v1}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_6

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Zo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->Zo:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    :try_start_3
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
