.class public Labcd/mF;
.super Ljava/lang/Object;


# instance fields
.field private DW:I

.field private FH:Labcd/RK$c;

.field private j6:[B


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Labcd/mF;->j6:[B

    return-void
.end method

.method private DW([BIILabcd/rE;)V
    .registers 9

    iget-object v0, p0, Labcd/mF;->j6:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    new-instance v0, Labcd/RK$c;

    const v2, 0x7fffffff

    invoke-direct {v0, v2}, Labcd/RK$c;-><init>(I)V

    iput-object v0, p0, Labcd/mF;->FH:Labcd/RK$c;

    iget-object v2, p0, Labcd/mF;->j6:[B

    iget v3, p0, Labcd/mF;->DW:I

    invoke-virtual {v0, v2, v1, v3}, Labcd/RK;->write([BII)V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/mF;->j6:[B

    :cond_19
    iget-object v0, p0, Labcd/mF;->FH:Labcd/RK$c;

    invoke-virtual {p4, v0}, Labcd/rE;->j6(Ljava/io/OutputStream;)V

    iget-object p4, p0, Labcd/mF;->FH:Labcd/RK$c;

    const/16 v0, 0x20

    invoke-virtual {p4, v0}, Labcd/RK;->write(I)V

    iget-object p4, p0, Labcd/mF;->FH:Labcd/RK$c;

    invoke-virtual {p4, p1, p2, p3}, Labcd/RK;->write([BII)V

    iget-object p1, p0, Labcd/mF;->FH:Labcd/RK$c;

    invoke-virtual {p1, v1}, Labcd/RK;->write(I)V

    return-void
.end method

.method public static j6(Labcd/rE;I)I
    .registers 2

    invoke-virtual {p0}, Labcd/rE;->j6()I

    move-result p0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x14

    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private j6([BIILabcd/rE;)Z
    .registers 9

    iget-object v0, p0, Labcd/mF;->j6:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    array-length v0, v0

    iget v2, p0, Labcd/mF;->DW:I

    invoke-static {p4, p3}, Labcd/mF;->j6(Labcd/rE;I)I

    move-result v3

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_10

    goto :goto_3c

    :cond_10
    iget-object v0, p0, Labcd/mF;->j6:[B

    iget v2, p0, Labcd/mF;->DW:I

    invoke-virtual {p4, v0, v2}, Labcd/rE;->j6([BI)V

    iget v0, p0, Labcd/mF;->DW:I

    invoke-virtual {p4}, Labcd/rE;->j6()I

    move-result p4

    add-int/2addr v0, p4

    iput v0, p0, Labcd/mF;->DW:I

    iget-object p4, p0, Labcd/mF;->j6:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Labcd/mF;->DW:I

    const/16 v3, 0x20

    aput-byte v3, p4, v0

    invoke-static {p1, p2, p4, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Labcd/mF;->DW:I

    add-int/2addr p1, p3

    iput p1, p0, Labcd/mF;->DW:I

    iget-object p2, p0, Labcd/mF;->j6:[B

    add-int/lit8 p3, p1, 0x1

    iput p3, p0, Labcd/mF;->DW:I

    aput-byte v1, p2, p1

    const/4 p1, 0x1

    return p1

    :cond_3c
    :goto_3c
    return v1
.end method


# virtual methods
.method public j6(Labcd/EE;)Labcd/yE;
    .registers 6

    iget-object v0, p0, Labcd/mF;->j6:[B

    const/4 v1, 0x2

    if-eqz v0, :cond_d

    const/4 v2, 0x0

    iget v3, p0, Labcd/mF;->DW:I

    invoke-virtual {p1, v1, v0, v2, v3}, Labcd/EE;->DW(I[BII)Labcd/yE;

    move-result-object p1

    return-object p1

    :cond_d
    iget-object v0, p0, Labcd/mF;->FH:Labcd/RK$c;

    invoke-virtual {v0}, Labcd/RK;->DW()J

    move-result-wide v2

    iget-object v0, p0, Labcd/mF;->FH:Labcd/RK$c;

    invoke-virtual {v0}, Labcd/RK;->FH()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v3, v0}, Labcd/EE;->j6(IJLjava/io/InputStream;)Labcd/yE;

    move-result-object p1

    return-object p1
.end method

.method public j6([BIILabcd/rE;Labcd/YD;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Labcd/mF;->j6([BIILabcd/rE;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p1, p0, Labcd/mF;->j6:[B

    iget p2, p0, Labcd/mF;->DW:I

    invoke-virtual {p5, p1, p2}, Labcd/YD;->DW([BI)V

    iget p1, p0, Labcd/mF;->DW:I

    add-int/lit8 p1, p1, 0x14

    iput p1, p0, Labcd/mF;->DW:I

    goto :goto_1c

    :cond_14
    :try_start_14
    invoke-direct {p0, p1, p2, p3, p4}, Labcd/mF;->DW([BIILabcd/rE;)V

    iget-object p1, p0, Labcd/mF;->FH:Labcd/RK$c;

    invoke-virtual {p5, p1}, Labcd/YD;->j6(Ljava/io/OutputStream;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public j6([BIILabcd/rE;[BI)V
    .registers 9

    invoke-direct {p0, p1, p2, p3, p4}, Labcd/mF;->j6([BIILabcd/rE;)Z

    move-result v0

    const/16 v1, 0x14

    if-eqz v0, :cond_15

    iget-object p1, p0, Labcd/mF;->j6:[B

    iget p2, p0, Labcd/mF;->DW:I

    invoke-static {p5, p6, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Labcd/mF;->DW:I

    add-int/2addr p1, v1

    iput p1, p0, Labcd/mF;->DW:I

    goto :goto_1d

    :cond_15
    :try_start_15
    invoke-direct {p0, p1, p2, p3, p4}, Labcd/mF;->DW([BIILabcd/rE;)V

    iget-object p1, p0, Labcd/mF;->FH:Labcd/RK$c;

    invoke-virtual {p1, p5, p6, v1}, Labcd/RK;->write([BII)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1d} :catch_1e

    :goto_1d
    return-void

    :catch_1e
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public j6([BLabcd/rE;Labcd/YD;)V
    .registers 10

    const/4 v2, 0x0

    array-length v3, p1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Labcd/mF;->j6([BIILabcd/rE;Labcd/YD;)V

    return-void
.end method

.method public j6()[B
    .registers 5

    iget-object v0, p0, Labcd/mF;->j6:[B

    if-eqz v0, :cond_d

    iget v1, p0, Labcd/mF;->DW:I

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_d
    :try_start_d
    iget-object v0, p0, Labcd/mF;->FH:Labcd/RK$c;

    invoke-virtual {v0}, Labcd/RK;->Zo()[B

    move-result-object v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Labcd/mF;->j6()[B

    move-result-object v0

    new-instance v1, Labcd/UJ;

    invoke-direct {v1}, Labcd/UJ;-><init>()V

    invoke-virtual {v1, v0}, Labcd/UJ;->j6([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tree={"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Labcd/UJ;->DW()Z

    move-result v3

    const/16 v4, 0xa

    if-nez v3, :cond_3f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :try_start_21
    new-instance v3, Labcd/wE;

    invoke-direct {v3}, Labcd/wE;-><init>()V

    invoke-virtual {v3, v0}, Labcd/wE;->Hw([B)V
    :try_end_29
    .catch Labcd/YC; {:try_start_21 .. :try_end_29} :catch_2a

    goto :goto_3f

    :catch_2a
    move-exception v0

    const-string v3, "*** ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3f
    :goto_3f
    invoke-virtual {v1}, Labcd/UJ;->DW()Z

    move-result v0

    if-eqz v0, :cond_4f

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4f
    invoke-virtual {v1}, Labcd/TJ;->Hw()Labcd/rE;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Labcd/rE;->FH()I

    move-result v0

    invoke-static {v0}, Labcd/hE;->DW(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Labcd/TJ;->v5()Labcd/yE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Labcd/TJ;->Zo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Labcd/UJ;->J8()Labcd/UJ;

    goto :goto_3f
.end method
