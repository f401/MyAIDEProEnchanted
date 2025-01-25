.class Labcd/OG;
.super Labcd/FE;


# instance fields
.field private DW:J

.field private final FH:J

.field private final Hw:J

.field private final VH:Labcd/GG;

.field private final Zo:Labcd/aH;

.field private j6:I

.field private final v5:I


# direct methods
.method constructor <init>(JJILabcd/aH;Labcd/GG;)V
    .registers 10

    invoke-direct {p0}, Labcd/FE;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Labcd/OG;->j6:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Labcd/OG;->DW:J

    iput-wide p1, p0, Labcd/OG;->FH:J

    iput-wide p3, p0, Labcd/OG;->Hw:J

    iput p5, p0, Labcd/OG;->v5:I

    iput-object p6, p0, Labcd/OG;->Zo:Labcd/aH;

    iput-object p7, p0, Labcd/OG;->VH:Labcd/GG;

    return-void
.end method

.method private Zo()Labcd/yE;
    .registers 4

    iget-object v0, p0, Labcd/OG;->Zo:Labcd/aH;

    iget-wide v1, p0, Labcd/OG;->FH:J

    invoke-virtual {v0, v1, v2}, Labcd/aH;->j6(J)Labcd/yE;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j6(Labcd/OG;)Labcd/GG;
    .registers 1

    iget-object p0, p0, Labcd/OG;->VH:Labcd/GG;

    return-object p0
.end method

.method static synthetic j6(Labcd/OG;Labcd/wH;)Ljava/io/InputStream;
    .registers 2

    invoke-direct {p0, p1}, Labcd/OG;->j6(Labcd/wH;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private j6(Labcd/wH;)Ljava/io/InputStream;
    .registers 8

    :try_start_0
    new-instance v0, Labcd/jH;

    iget-object v1, p0, Labcd/OG;->Zo:Labcd/aH;

    iget-wide v2, p0, Labcd/OG;->FH:J

    iget v4, p0, Labcd/OG;->v5:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-direct {v0, v1, v2, v3, p1}, Labcd/jH;-><init>(Labcd/aH;JLabcd/wH;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_3d

    new-instance v1, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v0, p0, Labcd/OG;->Zo:Labcd/aH;

    iget-wide v2, p0, Labcd/OG;->Hw:J

    invoke-virtual {v0, p1, v2, v3}, Labcd/aH;->Hw(Labcd/wH;J)Labcd/FE;

    move-result-object v0

    new-instance v2, Labcd/NG;

    invoke-direct {v2, p0, v1, v0, p1}, Labcd/NG;-><init>(Labcd/OG;Ljava/io/InputStream;Labcd/FE;Labcd/wH;)V

    iget p1, p0, Labcd/OG;->j6:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2e

    instance-of p1, v0, Labcd/OG;

    if-nez p1, :cond_2e

    invoke-virtual {v0}, Labcd/FE;->FH()I

    move-result p1

    iput p1, p0, Labcd/OG;->j6:I

    :cond_2e
    iget-wide v0, p0, Labcd/OG;->DW:J

    const-wide/16 v3, -0x1

    cmp-long p1, v0, v3

    if-nez p1, :cond_3c

    invoke-virtual {v2}, Labcd/GH;->DW()J

    move-result-wide v0

    iput-wide v0, p0, Labcd/OG;->DW:J

    :cond_3c
    return-object v2

    :catch_3d
    move-exception v0

    invoke-direct {p0}, Labcd/OG;->Zo()Labcd/yE;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/IE;->FH(Labcd/YD;)Labcd/FE;

    move-result-object p1

    invoke-virtual {p1}, Labcd/FE;->v5()Labcd/JE;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public DW()J
    .registers 7

    iget-wide v0, p0, Labcd/OG;->DW:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_3e

    new-instance v0, Labcd/wH;

    iget-object v1, p0, Labcd/OG;->VH:Labcd/GG;

    invoke-direct {v0, v1}, Labcd/wH;-><init>(Labcd/GG;)V

    :try_start_f
    iget-object v1, p0, Labcd/OG;->Zo:Labcd/aH;

    iget-wide v2, p0, Labcd/OG;->FH:J

    iget v4, p0, Labcd/OG;->v5:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Labcd/aH;->j6(Labcd/wH;J)[B

    move-result-object v1

    invoke-static {v1}, Labcd/AH;->j6([B)J

    move-result-wide v1

    iput-wide v1, p0, Labcd/OG;->DW:J
    :try_end_21
    .catch Ljava/util/zip/DataFormatException; {:try_start_f .. :try_end_21} :catch_3a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_21} :catch_24
    .catchall {:try_start_f .. :try_end_21} :catchall_22

    goto :goto_3b

    :catchall_22
    move-exception v1

    goto :goto_34

    :catch_24
    move-exception v1

    :try_start_25
    invoke-direct {p0}, Labcd/OG;->Zo()Labcd/yE;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/IE;->FH(Labcd/YD;)Labcd/FE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/FE;->DW()J

    move-result-wide v1

    iput-wide v1, p0, Labcd/OG;->DW:J
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_33} :catch_38
    .catchall {:try_start_25 .. :try_end_33} :catchall_22

    goto :goto_3b

    :goto_34
    invoke-virtual {v0}, Labcd/wH;->FH()V

    throw v1

    :catch_38
    move-exception v1

    goto :goto_3b

    :catch_3a
    move-exception v1

    :goto_3b
    invoke-virtual {v0}, Labcd/wH;->FH()V

    :cond_3e
    iget-wide v0, p0, Labcd/OG;->DW:J

    return-wide v0
.end method

.method public FH()I
    .registers 5

    iget v0, p0, Labcd/OG;->j6:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_31

    new-instance v0, Labcd/wH;

    iget-object v1, p0, Labcd/OG;->VH:Labcd/GG;

    invoke-direct {v0, v1}, Labcd/wH;-><init>(Labcd/GG;)V

    :try_start_c
    iget-object v1, p0, Labcd/OG;->Zo:Labcd/aH;

    iget-wide v2, p0, Labcd/OG;->FH:J

    invoke-virtual {v1, v0, v2, v3}, Labcd/aH;->FH(Labcd/wH;J)I

    move-result v1

    iput v1, p0, Labcd/OG;->j6:I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_19
    .catchall {:try_start_c .. :try_end_16} :catchall_17

    goto :goto_2e

    :catchall_17
    move-exception v1

    goto :goto_29

    :catch_19
    move-exception v1

    :try_start_1a
    invoke-direct {p0}, Labcd/OG;->Zo()Labcd/yE;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/IE;->FH(Labcd/YD;)Labcd/FE;

    move-result-object v1

    invoke-virtual {v1}, Labcd/FE;->FH()I

    move-result v1

    iput v1, p0, Labcd/OG;->j6:I
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_28} :catch_2d
    .catchall {:try_start_1a .. :try_end_28} :catchall_17

    goto :goto_2e

    :goto_29
    invoke-virtual {v0}, Labcd/wH;->FH()V

    throw v1

    :catch_2d
    move-exception v1

    :goto_2e
    invoke-virtual {v0}, Labcd/wH;->FH()V

    :cond_31
    iget v0, p0, Labcd/OG;->j6:I

    return v0
.end method

.method public Hw()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public j6()[B
    .registers 3

    :try_start_0
    new-instance v0, Labcd/cD;

    invoke-direct {p0}, Labcd/OG;->Zo()Labcd/yE;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/cD;-><init>(Labcd/YD;)V

    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_a

    :catch_a
    move-exception v0

    new-instance v1, Labcd/cD;

    invoke-direct {v1}, Labcd/cD;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public v5()Labcd/JE;
    .registers 12

    invoke-direct {p0}, Labcd/OG;->Zo()Labcd/yE;

    move-result-object v9

    new-instance v7, Labcd/wH;

    iget-object v0, p0, Labcd/OG;->VH:Labcd/GG;

    invoke-direct {v7, v0}, Labcd/wH;-><init>(Labcd/GG;)V

    iget-object v0, p0, Labcd/OG;->VH:Labcd/GG;

    invoke-virtual {v9}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1, v9}, Labcd/GG;->FH(Labcd/wH;Ljava/lang/String;Labcd/YD;)Labcd/FE;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Labcd/FE;->v5()Labcd/JE;

    move-result-object v0

    return-object v0

    :cond_1c
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, v7}, Labcd/OG;->j6(Labcd/wH;)Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {p0}, Labcd/OG;->FH()I

    move-result v2

    invoke-virtual {p0}, Labcd/OG;->DW()J

    move-result-wide v3

    iget-object v1, p0, Labcd/OG;->VH:Labcd/GG;

    invoke-virtual {v1}, Labcd/GG;->Hw()Labcd/YG;

    move-result-object v6

    invoke-virtual {v6}, Labcd/YG;->Zo()Ljava/io/File;

    move-result-object v8

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v6, v1}, Labcd/YG;->j6(Ljava/io/OutputStream;)Ljava/util/zip/DeflaterOutputStream;

    move-result-object v1

    invoke-virtual {v6, v1, v2, v3, v4}, Labcd/YG;->j6(Ljava/io/OutputStream;IJ)V

    new-instance v10, Labcd/MG;

    new-instance v5, Labcd/ZK;

    invoke-direct {v5, v0, v1}, Labcd/ZK;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Labcd/MG;-><init>(Labcd/OG;IJLjava/io/InputStream;Labcd/YG;Labcd/wH;Ljava/io/File;Labcd/yE;)V

    return-object v10
.end method
