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
    .registers 7

    invoke-direct {p0}, Labcd/FE;-><init>()V

    iput p1, p0, Labcd/sH$a;->j6:I

    iput-wide p2, p0, Labcd/sH$a;->DW:J

    iput-object p4, p0, Labcd/sH$a;->FH:Ljava/io/File;

    invoke-virtual {p5}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object p1

    iput-object p1, p0, Labcd/sH$a;->Hw:Labcd/yE;

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

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Labcd/sH$a;->FH:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Labcd/sH;->j6(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_b} :catch_72

    const/16 v1, 0x40

    const/4 v2, 0x0

    :try_start_e
    new-array v1, v1, [B

    const/16 v3, 0x14

    invoke-virtual {v0, v3}, Ljava/io/BufferedInputStream;->mark(I)V

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Labcd/BK;->j6(Ljava/io/InputStream;[BII)V

    invoke-static {v1}, Labcd/sH;->j6([B)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_36

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    iget-wide v3, p0, Labcd/sH$a;->DW:J

    iget-object v1, p0, Labcd/sH$a;->Hw:Labcd/yE;

    invoke-static {v0, v3, v4, v1}, Labcd/sH;->j6(Ljava/io/InputStream;JLabcd/yE;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Labcd/sH;->j6(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;

    move-result-object v0

    :cond_2f
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    if-gtz v1, :cond_2f

    goto :goto_57

    :cond_36
    const/16 v4, 0x12

    invoke-static {v0, v1, v3, v4}, Labcd/sH;->j6(Ljava/io/InputStream;[BII)I
    :try_end_3b
    .catchall {:try_start_e .. :try_end_3b} :catchall_6b

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x1

    :goto_40
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_64

    :try_start_44
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    int-to-long v3, v4

    invoke-static {v0, v3, v4}, Labcd/BK;->j6(Ljava/io/InputStream;J)V

    iget-wide v3, p0, Labcd/sH$a;->DW:J

    iget-object v1, p0, Labcd/sH$a;->Hw:Labcd/yE;

    invoke-static {v0, v3, v4, v1}, Labcd/sH;->j6(Ljava/io/InputStream;JLabcd/yE;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Labcd/sH;->j6(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;

    move-result-object v0
    :try_end_57
    .catchall {:try_start_44 .. :try_end_57} :catchall_6b

    :goto_57
    :try_start_57
    new-instance v1, Labcd/JE$a;

    iget v2, p0, Labcd/sH$a;->j6:I

    iget-wide v3, p0, Labcd/sH$a;->DW:J

    invoke-direct {v1, v2, v3, v4, v0}, Labcd/JE$a;-><init>(IJLjava/io/InputStream;)V
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_61

    return-object v1

    :catchall_61
    move-exception v1

    const/4 v2, 0x1

    goto :goto_6c

    :cond_64
    aget-byte v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit16 v3, v3, 0xff

    goto :goto_40

    :catchall_6b
    move-exception v1

    :goto_6c
    if-nez v2, :cond_71

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    :cond_71
    throw v1

    :catch_72
    move-exception v0

    iget-object v0, p0, Labcd/sH$a;->v5:Labcd/GG;

    iget-object v1, p0, Labcd/sH$a;->Hw:Labcd/yE;

    iget v2, p0, Labcd/sH$a;->j6:I

    invoke-virtual {v0, v1, v2}, Labcd/xE;->j6(Labcd/YD;I)Labcd/FE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/FE;->v5()Labcd/JE;

    move-result-object v0

    return-object v0
.end method
