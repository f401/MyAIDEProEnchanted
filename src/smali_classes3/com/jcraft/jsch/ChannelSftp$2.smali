.class Lcom/jcraft/jsch/ChannelSftp$2;
.super Ljava/io/InputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jcraft/jsch/ChannelSftp;->j6(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field DW:Z

.field private final EQ:[B

.field FH:I

.field Hw:[B

.field VH:I

.field Zo:Lcom/jcraft/jsch/ChannelSftp$Header;

.field gn:J

.field j6:J

.field private final tp:Lcom/jcraft/jsch/SftpProgressMonitor;

.field final u7:Lcom/jcraft/jsch/ChannelSftp;

.field v5:[B


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/ChannelSftp;JLcom/jcraft/jsch/SftpProgressMonitor;[B)V
    .registers 6

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    iput-object p4, p0, Lcom/jcraft/jsch/ChannelSftp$2;->tp:Lcom/jcraft/jsch/SftpProgressMonitor;

    iput-object p5, p0, Lcom/jcraft/jsch/ChannelSftp$2;->EQ:[B

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-wide p2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->j6:J

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->DW:Z

    iput p2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->FH:I

    const/4 p2, 0x1

    new-array p3, p2, [B

    iput-object p3, p0, Lcom/jcraft/jsch/ChannelSftp$2;->Hw:[B

    const/16 p3, 0x400

    new-array p3, p3, [B

    iput-object p3, p0, Lcom/jcraft/jsch/ChannelSftp$2;->v5:[B

    new-instance p3, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p3, p1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iput-object p3, p0, Lcom/jcraft/jsch/ChannelSftp$2;->Zo:Lcom/jcraft/jsch/ChannelSftp$Header;

    iput p2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->VH:I

    iget-wide p1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->j6:J

    iput-wide p1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->gn:J

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->DW:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->DW:Z

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->tp:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/jcraft/jsch/SftpProgressMonitor;->end()V

    :cond_f
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->v5(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->Zo:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v2}, Lcom/jcraft/jsch/ChannelSftp;->FH(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->j6(Lcom/jcraft/jsch/ChannelSftp$Header;Lcom/jcraft/jsch/Buffer;)V

    :try_start_20
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->EQ:[B

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->Zo:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;[BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()I
    .registers 5

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->DW:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->Hw:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Lcom/jcraft/jsch/ChannelSftp$2;->read([BII)I

    move-result v0

    if-ne v0, v1, :cond_11

    return v1

    :cond_11
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->Hw:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .registers 4

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->DW:Z

    if-eqz v0, :cond_6

    const/4 p1, -0x1

    return p1

    :cond_6
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/ChannelSftp$2;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-boolean v4, v1, Lcom/jcraft/jsch/ChannelSftp$2;->DW:Z

    const/4 v5, -0x1

    if-eqz v4, :cond_e

    return v5

    :cond_e
    if-eqz v0, :cond_223

    if-ltz v2, :cond_21d

    if-ltz v3, :cond_21d

    add-int v4, v2, v3

    array-length v6, v0

    if-gt v4, v6, :cond_21d

    const/4 v4, 0x0

    if-nez v3, :cond_1d

    return v4

    :cond_1d
    iget v6, v1, Lcom/jcraft/jsch/ChannelSftp$2;->FH:I

    if-lez v6, :cond_49

    if-le v6, v3, :cond_24

    goto :goto_25

    :cond_24
    move v3, v6

    :goto_25
    iget-object v6, v1, Lcom/jcraft/jsch/ChannelSftp$2;->v5:[B

    invoke-static {v6, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v1, Lcom/jcraft/jsch/ChannelSftp$2;->FH:I

    if-eq v3, v0, :cond_34

    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->v5:[B

    sub-int/2addr v0, v3

    invoke-static {v2, v3, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_34
    iget-object v0, v1, Lcom/jcraft/jsch/ChannelSftp$2;->tp:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v0, :cond_43

    int-to-long v6, v3

    invoke-interface {v0, v6, v7}, Lcom/jcraft/jsch/SftpProgressMonitor;->j6(J)Z

    move-result v0

    if-nez v0, :cond_43

    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/ChannelSftp$2;->close()V

    return v5

    :cond_43
    iget v0, v1, Lcom/jcraft/jsch/ChannelSftp$2;->FH:I

    sub-int/2addr v0, v3

    iput v0, v1, Lcom/jcraft/jsch/ChannelSftp$2;->FH:I

    return v3

    :cond_49
    iget-object v6, v1, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v6}, Lcom/jcraft/jsch/ChannelSftp;->FH(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v6

    iget-object v6, v6, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v6, v6

    add-int/lit8 v6, v6, -0xd

    if-ge v6, v3, :cond_61

    iget-object v3, v1, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v3}, Lcom/jcraft/jsch/ChannelSftp;->FH(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v3

    iget-object v3, v3, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0xd

    :cond_61
    iget-object v6, v1, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v6}, Lcom/jcraft/jsch/ChannelSftp;->Hw(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v6

    const/16 v7, 0x400

    if-nez v6, :cond_6f

    if-le v3, v7, :cond_6f

    const/16 v3, 0x400

    :cond_6f
    iget-object v6, v1, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v6}, Lcom/jcraft/jsch/ChannelSftp;->v5(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->j6()I

    move-result v6

    const-string v8, "error"

    if-nez v6, :cond_bd

    iget-object v6, v1, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v6}, Lcom/jcraft/jsch/ChannelSftp;->FH(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v6

    iget-object v6, v6, Lcom/jcraft/jsch/Buffer;->DW:[B

    array-length v6, v6

    add-int/lit8 v6, v6, -0xd

    iget-object v9, v1, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v9}, Lcom/jcraft/jsch/ChannelSftp;->Hw(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v9

    if-nez v9, :cond_91

    goto :goto_92

    :cond_91
    move v7, v6

    :goto_92
    iget-object v6, v1, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v6}, Lcom/jcraft/jsch/ChannelSftp;->v5(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->j6()I

    move-result v6

    iget v9, v1, Lcom/jcraft/jsch/ChannelSftp$2;->VH:I

    if-lt v6, v9, :cond_a1

    goto :goto_bd

    :cond_a1
    :try_start_a1
    iget-object v10, v1, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v11, v1, Lcom/jcraft/jsch/ChannelSftp$2;->EQ:[B

    iget-wide v12, v1, Lcom/jcraft/jsch/ChannelSftp$2;->gn:J

    invoke-static {v10}, Lcom/jcraft/jsch/ChannelSftp;->v5(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v15

    move v14, v7

    invoke-static/range {v10 .. v15}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;[BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_af} :catch_b6

    iget-wide v9, v1, Lcom/jcraft/jsch/ChannelSftp$2;->gn:J

    int-to-long v11, v7

    add-long/2addr v9, v11

    iput-wide v9, v1, Lcom/jcraft/jsch/ChannelSftp$2;->gn:J

    goto :goto_92

    :catch_b6
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bd
    :goto_bd
    iget-object v6, v1, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v6}, Lcom/jcraft/jsch/ChannelSftp;->FH(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v7

    iget-object v9, v1, Lcom/jcraft/jsch/ChannelSftp$2;->Zo:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v6, v7, v9}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    iput-object v9, v1, Lcom/jcraft/jsch/ChannelSftp$2;->Zo:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v6, v9, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    iput v6, v1, Lcom/jcraft/jsch/ChannelSftp$2;->FH:I

    iget v6, v9, Lcom/jcraft/jsch/ChannelSftp$Header;->DW:I

    iget v7, v9, Lcom/jcraft/jsch/ChannelSftp$Header;->FH:I

    :try_start_d2
    iget-object v7, v1, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v7}, Lcom/jcraft/jsch/ChannelSftp;->v5(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v7

    iget-object v9, v1, Lcom/jcraft/jsch/ChannelSftp$2;->Zo:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v9, v9, Lcom/jcraft/jsch/ChannelSftp$Header;->FH:I

    invoke-virtual {v7, v9}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->j6(I)Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    move-result-object v7
    :try_end_e0
    .catch Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException; {:try_start_d2 .. :try_end_e0} :catch_1fe
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_d2 .. :try_end_e0} :catch_1e5

    const/16 v9, 0x65

    if-eq v6, v9, :cond_ef

    const/16 v10, 0x67

    if-ne v6, v10, :cond_e9

    goto :goto_ef

    :cond_e9
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ef
    :goto_ef
    const/4 v10, 0x1

    if-ne v6, v9, :cond_115

    iget-object v0, v1, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->FH(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v2

    iget v3, v1, Lcom/jcraft/jsch/ChannelSftp$2;->FH:I

    invoke-static {v0, v2, v3}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;I)V

    iget-object v0, v1, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->FH(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v0

    iput v4, v1, Lcom/jcraft/jsch/ChannelSftp$2;->FH:I

    if-ne v0, v10, :cond_10f

    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/ChannelSftp$2;->close()V

    return v5

    :cond_10f
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_115
    iget-object v6, v1, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v6}, Lcom/jcraft/jsch/ChannelSftp;->FH(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->J0()V

    iget-object v6, v1, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v6}, Lcom/jcraft/jsch/ChannelSftp;->FH(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v9

    iget-object v9, v9, Lcom/jcraft/jsch/Buffer;->DW:[B

    const/4 v11, 0x4

    invoke-static {v6, v9, v4, v11}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;[BII)I

    iget-object v6, v1, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v6}, Lcom/jcraft/jsch/ChannelSftp;->FH(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->FH()I

    move-result v6

    iget v9, v1, Lcom/jcraft/jsch/ChannelSftp$2;->FH:I

    sub-int/2addr v9, v11

    iput v9, v1, Lcom/jcraft/jsch/ChannelSftp$2;->FH:I

    sub-int/2addr v9, v6

    iget-wide v11, v1, Lcom/jcraft/jsch/ChannelSftp$2;->j6:J

    int-to-long v13, v6

    add-long/2addr v11, v13

    iput-wide v11, v1, Lcom/jcraft/jsch/ChannelSftp$2;->j6:J

    if-lez v6, :cond_1e4

    if-le v6, v3, :cond_145

    goto :goto_146

    :cond_145
    move v3, v6

    :goto_146
    iget-object v11, v1, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v11}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {v11, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_153

    return v5

    :cond_153
    sub-int/2addr v6, v0

    iput v6, v1, Lcom/jcraft/jsch/ChannelSftp$2;->FH:I

    if-lez v6, :cond_176

    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->v5:[B

    array-length v2, v2

    if-ge v2, v6, :cond_161

    new-array v2, v6, [B

    iput-object v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->v5:[B

    :cond_161
    :goto_161
    if-gtz v6, :cond_164

    goto :goto_176

    :cond_164
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v2}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, v1, Lcom/jcraft/jsch/ChannelSftp$2;->v5:[B

    invoke-virtual {v2, v3, v4, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gtz v2, :cond_173

    goto :goto_176

    :cond_173
    add-int/2addr v4, v2

    sub-int/2addr v6, v2

    goto :goto_161

    :cond_176
    :goto_176
    if-lez v9, :cond_182

    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v2}, Lcom/jcraft/jsch/ChannelSftp;->DW(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v2

    int-to-long v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    :cond_182
    iget-wide v2, v7, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->FH:J

    cmp-long v4, v13, v2

    if-gez v4, :cond_1c1

    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v2}, Lcom/jcraft/jsch/ChannelSftp;->v5(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v2

    iget-object v3, v1, Lcom/jcraft/jsch/ChannelSftp$2;->Zo:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget-object v4, v1, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v4}, Lcom/jcraft/jsch/ChannelSftp;->FH(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->j6(Lcom/jcraft/jsch/ChannelSftp$Header;Lcom/jcraft/jsch/Buffer;)V

    :try_start_199
    iget-object v15, v1, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->EQ:[B

    iget-wide v3, v7, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->DW:J

    add-long v17, v3, v13

    iget-wide v3, v7, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->FH:J

    sub-long/2addr v3, v13

    long-to-int v4, v3

    iget-object v3, v1, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v3}, Lcom/jcraft/jsch/ChannelSftp;->v5(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v20

    move-object/from16 v16, v2

    move/from16 v19, v4

    invoke-static/range {v15 .. v20}, Lcom/jcraft/jsch/ChannelSftp;->j6(Lcom/jcraft/jsch/ChannelSftp;[BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V
    :try_end_1b2
    .catch Ljava/lang/Exception; {:try_start_199 .. :try_end_1b2} :catch_1ba

    iget-wide v2, v7, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->DW:J

    iget-wide v6, v7, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->FH:J

    add-long/2addr v2, v6

    iput-wide v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->gn:J

    goto :goto_1c1

    :catch_1ba
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c1
    :goto_1c1
    iget v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->VH:I

    iget-object v3, v1, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v3}, Lcom/jcraft/jsch/ChannelSftp;->v5(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->Hw()I

    move-result v3

    if-ge v2, v3, :cond_1d4

    iget v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->VH:I

    add-int/2addr v2, v10

    iput v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->VH:I

    :cond_1d4
    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->tp:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v2, :cond_1e3

    int-to-long v3, v0

    invoke-interface {v2, v3, v4}, Lcom/jcraft/jsch/SftpProgressMonitor;->j6(J)Z

    move-result v2

    if-nez v2, :cond_1e3

    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/ChannelSftp$2;->close()V

    return v5

    :cond_1e3
    return v0

    :cond_1e4
    return v4

    :catch_1e5
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1fe
    move-exception v0

    iget-wide v2, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;->j6:J

    iput-wide v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->gn:J

    iget-object v0, v1, Lcom/jcraft/jsch/ChannelSftp$2;->Zo:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->j6:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    iget-object v0, v1, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->v5(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v0

    iget-object v2, v1, Lcom/jcraft/jsch/ChannelSftp$2;->Zo:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget-object v3, v1, Lcom/jcraft/jsch/ChannelSftp$2;->u7:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v3}, Lcom/jcraft/jsch/ChannelSftp;->FH(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->j6(Lcom/jcraft/jsch/ChannelSftp$Header;Lcom/jcraft/jsch/Buffer;)V

    return v4

    :cond_21d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_223
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_22a

    :goto_229
    throw v0

    :goto_22a
    goto :goto_229
.end method
