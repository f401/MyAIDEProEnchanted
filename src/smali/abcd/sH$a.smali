.class final Labcd/sH$a;
.super Labcd/FE;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/sH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final DW:J

.field private final FH:Ljava/io/File;

.field private final Hw:Labcd/yE;

.field private final j6:I

.field private final v5:Labcd/GG;


# direct methods
.method private constructor <init>(IJLjava/io/File;Labcd/YD;Labcd/GG;)V
    .registers 9

    invoke-direct {p0}, Labcd/FE;-><init>()V

    iput p1, p0, Labcd/sH$a;->j6:I

    iput-wide p2, p0, Labcd/sH$a;->DW:J

    iput-object p4, p0, Labcd/sH$a;->FH:Ljava/io/File;

    invoke-virtual {p5}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object v0

    iput-object v0, p0, Labcd/sH$a;->Hw:Labcd/yE;

    iput-object p6, p0, Labcd/sH$a;->v5:Labcd/GG;

    return-void
.end method

.method synthetic constructor <init>(IJLjava/io/File;Labcd/YD;Labcd/GG;Labcd/sH$a;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Labcd/sH$a;-><init>(IJLjava/io/File;Labcd/YD;Labcd/GG;)V

    return-void
.end method


# virtual methods
.method public DW()J
    .registers 3

    iget-wide v0, p0, Labcd/sH$a;->DW:J

    return-wide v0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Labcd/sH$a;->j6:I

    return v0
.end method

.method public Hw()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public j6()[B
    .registers 3

    new-instance v0, Labcd/cD;

    iget-object v1, p0, Labcd/sH$a;->Hw:Labcd/yE;

    invoke-direct {v0, v1}, Labcd/cD;-><init>(Labcd/YD;)V

    throw v0
.end method

.method public v5()Labcd/JE;
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Labcd/sH$a;->FH:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Labcd/sH;->j6(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/16 v0, 0x40

    :try_start_1
    new-array v5, v0, [B

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    const/4 v0, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v5, v0, v4}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    invoke-static {v5}, Labcd/sH;->j6([B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->reset()V

    iget-wide v4, p0, Labcd/sH$a;->DW:J

    iget-object v0, p0, Labcd/sH$a;->Hw:Labcd/yE;

    invoke-static {v1, v4, v5, v0}, Labcd/sH;->j6(Ljava/io/InputStream;JLabcd/yE;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Labcd/sH;->j6(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-gtz v0, :cond_0

    :goto_0
    :try_start_2
    new-instance v0, Labcd/JE$a;

    iget v3, p0, Labcd/sH$a;->j6:I

    iget-wide v4, p0, Labcd/sH$a;->DW:J

    invoke-direct {v0, v3, v4, v5, v1}, Labcd/JE$a;-><init>(IJLjava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x2

    const/16 v4, 0x12

    :try_start_3
    invoke-static {v1, v5, v0, v4}, Labcd/sH;->j6(Ljava/io/InputStream;[BII)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    aget-byte v0, v5, v3

    and-int/lit16 v0, v0, 0xff

    move v4, v2

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->reset()V

    int-to-long v4, v4

    invoke-static {v1, v4, v5}, Labcd/BK;->j6(Ljava/io/InputStream;J)V

    iget-wide v4, p0, Labcd/sH$a;->DW:J

    iget-object v0, p0, Labcd/sH$a;->Hw:Labcd/yE;

    invoke-static {v1, v4, v5, v0}, Labcd/sH;->j6(Ljava/io/InputStream;JLabcd/yE;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Labcd/sH;->j6(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    goto :goto_0

    :cond_2
    aget-byte v0, v5, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit16 v0, v0, 0xff

    goto :goto_2

    :catchall_0
    move-exception v0

    move v2, v3

    :goto_3
    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_3
    throw v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Labcd/sH$a;->v5:Labcd/GG;

    iget-object v1, p0, Labcd/sH$a;->Hw:Labcd/yE;

    iget v2, p0, Labcd/sH$a;->j6:I

    invoke-virtual {v0, v1, v2}, Labcd/xE;->j6(Labcd/YD;I)Labcd/FE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/FE;->v5()Labcd/JE;

    move-result-object v0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3
.end method
