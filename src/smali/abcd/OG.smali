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
    .registers 11

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
    .registers 5

    iget-object v0, p0, Labcd/OG;->Zo:Labcd/aH;

    iget-wide v2, p0, Labcd/OG;->FH:J

    invoke-virtual {v0, v2, v3}, Labcd/aH;->j6(J)Labcd/yE;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j6(Labcd/OG;)Labcd/GG;
    .registers 2

    iget-object v0, p0, Labcd/OG;->VH:Labcd/GG;

    return-object v0
.end method

.method static synthetic j6(Labcd/OG;Labcd/wH;)Ljava/io/InputStream;
    .registers 3

    invoke-direct {p0, p1}, Labcd/OG;->j6(Labcd/wH;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
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
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v0, p0, Labcd/OG;->Zo:Labcd/aH;

    iget-wide v2, p0, Labcd/OG;->Hw:J

    invoke-virtual {v0, p1, v2, v3}, Labcd/aH;->Hw(Labcd/wH;J)Labcd/FE;

    move-result-object v2

    new-instance v0, Labcd/NG;

    invoke-direct {v0, p0, v1, v2, p1}, Labcd/NG;-><init>(Labcd/OG;Ljava/io/InputStream;Labcd/FE;Labcd/wH;)V

    iget v1, p0, Labcd/OG;->j6:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    instance-of v1, v2, Labcd/OG;

    if-nez v1, :cond_0

    invoke-virtual {v2}, Labcd/FE;->FH()I

    move-result v1

    iput v1, p0, Labcd/OG;->j6:I

    :cond_0
    iget-wide v2, p0, Labcd/OG;->DW:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    invoke-virtual {v0}, Labcd/GH;->DW()J

    move-result-wide v2

    iput-wide v2, p0, Labcd/OG;->DW:J

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Labcd/OG;->Zo()Labcd/yE;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/IE;->FH(Labcd/YD;)Labcd/FE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/FE;->v5()Labcd/JE;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public DW()J
    .registers 7

    iget-wide v0, p0, Labcd/OG;->DW:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v1, Labcd/wH;

    iget-object v0, p0, Labcd/OG;->VH:Labcd/GG;

    invoke-direct {v1, v0}, Labcd/wH;-><init>(Labcd/GG;)V

    :try_start_0
    iget-object v0, p0, Labcd/OG;->Zo:Labcd/aH;

    iget-wide v2, p0, Labcd/OG;->FH:J

    iget v4, p0, Labcd/OG;->v5:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Labcd/aH;->j6(Labcd/wH;J)[B

    move-result-object v0

    invoke-static {v0}, Labcd/AH;->j6([B)J

    move-result-wide v2

    iput-wide v2, p0, Labcd/OG;->DW:J
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v1}, Labcd/wH;->FH()V

    :cond_0
    iget-wide v0, p0, Labcd/OG;->DW:J

    return-wide v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-direct {p0}, Labcd/OG;->Zo()Labcd/yE;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/IE;->FH(Labcd/YD;)Labcd/FE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/FE;->DW()J

    move-result-wide v2

    iput-wide v2, p0, Labcd/OG;->DW:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Labcd/wH;->FH()V

    throw v0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public FH()I
    .registers 5

    iget v0, p0, Labcd/OG;->j6:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Labcd/wH;

    iget-object v0, p0, Labcd/OG;->VH:Labcd/GG;

    invoke-direct {v1, v0}, Labcd/wH;-><init>(Labcd/GG;)V

    :try_start_0
    iget-object v0, p0, Labcd/OG;->Zo:Labcd/aH;

    iget-wide v2, p0, Labcd/OG;->FH:J

    invoke-virtual {v0, v1, v2, v3}, Labcd/aH;->FH(Labcd/wH;J)I

    move-result v0

    iput v0, p0, Labcd/OG;->j6:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v1}, Labcd/wH;->FH()V

    :cond_0
    iget v0, p0, Labcd/OG;->j6:I

    return v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-direct {p0}, Labcd/OG;->Zo()Labcd/yE;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/IE;->FH(Labcd/YD;)Labcd/FE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/FE;->FH()I

    move-result v0

    iput v0, p0, Labcd/OG;->j6:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Labcd/wH;->FH()V

    throw v0
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
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/cD;

    invoke-direct {v1}, Labcd/cD;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public v5()Labcd/JE;
    .registers 12

    invoke-direct {p0}, Labcd/OG;->Zo()Labcd/yE;

    move-result-object v10

    new-instance v8, Labcd/wH;

    iget-object v0, p0, Labcd/OG;->VH:Labcd/GG;

    invoke-direct {v8, v0}, Labcd/wH;-><init>(Labcd/GG;)V

    iget-object v0, p0, Labcd/OG;->VH:Labcd/GG;

    invoke-virtual {v10}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1, v10}, Labcd/GG;->FH(Labcd/wH;Ljava/lang/String;Labcd/YD;)Labcd/FE;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/FE;->v5()Labcd/JE;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, v8}, Labcd/OG;->j6(Labcd/wH;)Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {p0}, Labcd/OG;->FH()I

    move-result v3

    invoke-virtual {p0}, Labcd/OG;->DW()J

    move-result-wide v4

    iget-object v1, p0, Labcd/OG;->VH:Labcd/GG;

    invoke-virtual {v1}, Labcd/GG;->Hw()Labcd/YG;

    move-result-object v7

    invoke-virtual {v7}, Labcd/YG;->Zo()Ljava/io/File;

    move-result-object v9

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v7, v1}, Labcd/YG;->j6(Ljava/io/OutputStream;)Ljava/util/zip/DeflaterOutputStream;

    move-result-object v2

    invoke-virtual {v7, v2, v3, v4, v5}, Labcd/YG;->j6(Ljava/io/OutputStream;IJ)V

    new-instance v1, Labcd/MG;

    new-instance v6, Labcd/ZK;

    invoke-direct {v6, v0, v2}, Labcd/ZK;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Labcd/MG;-><init>(Labcd/OG;IJLjava/io/InputStream;Labcd/YG;Labcd/wH;Ljava/io/File;Labcd/yE;)V

    goto :goto_0
.end method
