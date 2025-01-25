.class Labcd/PG;
.super Labcd/FE;


# instance fields
.field private final DW:J

.field private final FH:J

.field private final Hw:I

.field private final Zo:Labcd/GG;

.field private final j6:I

.field private final v5:Labcd/aH;


# direct methods
.method constructor <init>(IJJILabcd/aH;Labcd/GG;)V
    .registers 9

    invoke-direct {p0}, Labcd/FE;-><init>()V

    iput p1, p0, Labcd/PG;->j6:I

    iput-wide p2, p0, Labcd/PG;->DW:J

    iput-wide p4, p0, Labcd/PG;->FH:J

    iput p6, p0, Labcd/PG;->Hw:I

    iput-object p7, p0, Labcd/PG;->v5:Labcd/aH;

    iput-object p8, p0, Labcd/PG;->Zo:Labcd/GG;

    return-void
.end method

.method private Zo()Labcd/yE;
    .registers 4

    iget-object v0, p0, Labcd/PG;->v5:Labcd/aH;

    iget-wide v1, p0, Labcd/PG;->FH:J

    invoke-virtual {v0, v1, v2}, Labcd/aH;->j6(J)Labcd/yE;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public DW()J
    .registers 3

    iget-wide v0, p0, Labcd/PG;->DW:J

    return-wide v0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Labcd/PG;->j6:I

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

    invoke-direct {p0}, Labcd/PG;->Zo()Labcd/yE;

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
    .registers 8

    new-instance v0, Labcd/wH;

    iget-object v1, p0, Labcd/PG;->Zo:Labcd/GG;

    invoke-direct {v0, v1}, Labcd/wH;-><init>(Labcd/GG;)V

    :try_start_7
    new-instance v1, Labcd/jH;

    iget-object v2, p0, Labcd/PG;->v5:Labcd/aH;

    iget-wide v3, p0, Labcd/PG;->FH:J

    iget v5, p0, Labcd/PG;->Hw:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-direct {v1, v2, v3, v4, v0}, Labcd/jH;-><init>(Labcd/aH;JLabcd/wH;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_14} :catch_2e

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/util/zip/InflaterInputStream;

    invoke-virtual {v0}, Labcd/wH;->VH()Ljava/util/zip/Inflater;

    move-result-object v0

    const/16 v4, 0x2000

    invoke-direct {v3, v1, v0, v4}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v0, Labcd/JE$a;

    iget v1, p0, Labcd/PG;->j6:I

    iget-wide v3, p0, Labcd/PG;->DW:J

    invoke-direct {v0, v1, v3, v4, v2}, Labcd/JE$a;-><init>(IJLjava/io/InputStream;)V

    return-object v0

    :catch_2e
    move-exception v1

    invoke-direct {p0}, Labcd/PG;->Zo()Labcd/yE;

    move-result-object v1

    iget v2, p0, Labcd/PG;->j6:I

    invoke-virtual {v0, v1, v2}, Labcd/wH;->Hw(Labcd/YD;I)Labcd/FE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/FE;->v5()Labcd/JE;

    move-result-object v0

    return-object v0
.end method
