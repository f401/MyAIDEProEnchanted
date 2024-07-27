.class Labcd/IH;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/IH$a;
    }
.end annotation


# instance fields
.field private final DW:Labcd/CH;

.field private EQ:Labcd/RK$c;

.field private final FH:Labcd/IE;

.field private final Hw:[Labcd/JH;

.field private J0:Ljava/util/zip/Deflater;

.field private VH:J

.field private final Zo:I

.field private gn:I

.field private final j6:Labcd/NH;

.field private tp:Labcd/JH;

.field private u7:I

.field private final v5:J

.field private we:I


# direct methods
.method constructor <init>(Labcd/NH;Labcd/CH;Labcd/IE;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/IH;->j6:Labcd/NH;

    iput-object p2, p0, Labcd/IH;->DW:Labcd/CH;

    iput-object p3, p0, Labcd/IH;->FH:Labcd/IE;

    iget-object v0, p0, Labcd/IH;->j6:Labcd/NH;

    invoke-virtual {v0}, Labcd/NH;->Zo()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Labcd/JH;

    iput-object v0, p0, Labcd/IH;->Hw:[Labcd/JH;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Labcd/IH;->Hw:[Labcd/JH;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Labcd/IH;->j6:Labcd/NH;

    invoke-virtual {v0}, Labcd/NH;->v5()J

    move-result-wide v0

    iput-wide v0, p0, Labcd/IH;->v5:J

    iget-object v0, p0, Labcd/IH;->j6:Labcd/NH;

    invoke-virtual {v0}, Labcd/NH;->u7()I

    move-result v0

    iput v0, p0, Labcd/IH;->Zo:I

    return-void

    :cond_0
    new-instance v2, Labcd/JH;

    invoke-direct {v2}, Labcd/JH;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private DW()V
    .registers 2

    iget v0, p0, Labcd/IH;->gn:I

    invoke-direct {p0, v0}, Labcd/IH;->FH(I)I

    move-result v0

    iput v0, p0, Labcd/IH;->gn:I

    return-void
.end method

.method private DW(I)V
    .registers 2

    return-void
.end method

.method private DW(Labcd/JH;)V
    .registers 6

    iget-object v0, p1, Labcd/JH;->FH:Labcd/EH;

    if-eqz v0, :cond_1

    iget-wide v2, p0, Labcd/IH;->VH:J

    invoke-virtual {v0}, Labcd/EH;->j6()J

    move-result-wide v0

    sub-long v0, v2, v0

    iput-wide v0, p0, Labcd/IH;->VH:J

    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Labcd/JH;->j6(Labcd/MH;)V

    return-void

    :cond_1
    iget-object v0, p0, Labcd/IH;->tp:Labcd/JH;

    iget-object v0, v0, Labcd/JH;->DW:[B

    if-eqz v0, :cond_0

    iget-wide v0, p0, Labcd/IH;->VH:J

    iget-object v2, p1, Labcd/JH;->DW:[B

    array-length v2, v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Labcd/IH;->VH:J

    goto :goto_0
.end method

.method private FH(I)I
    .registers 4

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Labcd/IH;->Hw:[Labcd/JH;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private FH(Labcd/JH;)Labcd/EH;
    .registers 10

    iget-object v0, p1, Labcd/JH;->FH:Labcd/EH;

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Labcd/EH;

    invoke-direct {p0, p1}, Labcd/IH;->j6(Labcd/JH;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/EH;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Labcd/IH;->v5:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    iget-wide v2, p0, Labcd/IH;->VH:J

    invoke-virtual {v0}, Labcd/EH;->j6()J

    move-result-wide v4

    invoke-virtual {v0}, Labcd/EH;->DW()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Labcd/IH;->VH:J

    :cond_0
    iput-object v0, p1, Labcd/JH;->FH:Labcd/EH;

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/cD$c;

    invoke-direct {v1, v0}, Labcd/cD$c;-><init>(Ljava/lang/OutOfMemoryError;)V

    iget-object v0, p1, Labcd/JH;->j6:Labcd/MH;

    invoke-virtual {v1, v0}, Labcd/cD;->j6(Labcd/YD;)V

    throw v1
.end method

.method private FH()V
    .registers 5

    const/4 v3, 0x0

    iget v0, p0, Labcd/IH;->Zo:I

    iput v0, p0, Labcd/IH;->u7:I

    iget v0, p0, Labcd/IH;->gn:I

    :cond_0
    invoke-direct {p0, v0}, Labcd/IH;->Hw(I)I

    move-result v0

    iget v1, p0, Labcd/IH;->gn:I

    if-ne v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Labcd/IH;->EQ:Labcd/RK$c;

    if-nez v0, :cond_4

    invoke-direct {p0}, Labcd/IH;->DW()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Labcd/IH;->Hw:[Labcd/JH;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Labcd/JH;->DW()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1, v0}, Labcd/IH;->j6(Labcd/JH;I)I

    move-result v1

    if-nez v1, :cond_0

    iput-object v3, p0, Labcd/IH;->EQ:Labcd/RK$c;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Labcd/IH;->Hw:[Labcd/JH;

    iget v1, p0, Labcd/IH;->we:I

    aget-object v0, v0, v1

    iget-object v0, v0, Labcd/JH;->j6:Labcd/MH;

    iget-object v1, p0, Labcd/IH;->tp:Labcd/JH;

    iget-object v1, v1, Labcd/JH;->j6:Labcd/MH;

    invoke-virtual {v0}, Labcd/MH;->P8()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/MH;->DW(Labcd/yE;)V

    :goto_1
    invoke-virtual {v0}, Labcd/MH;->rN()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Labcd/MH;->Hw(I)V

    invoke-virtual {v1}, Labcd/MH;->Mr()V

    invoke-direct {p0, v0, v1}, Labcd/IH;->j6(Labcd/MH;Labcd/MH;)V

    iput-object v3, p0, Labcd/IH;->EQ:Labcd/RK$c;

    invoke-virtual {v1}, Labcd/MH;->rN()I

    move-result v0

    iget v1, p0, Labcd/IH;->Zo:I

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Labcd/IH;->Hw()V

    invoke-direct {p0}, Labcd/IH;->DW()V

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v0}, Labcd/MH;->DW(Labcd/yE;)V

    goto :goto_1
.end method

.method private Hw(I)I
    .registers 3

    if-nez p1, :cond_0

    iget-object v0, p0, Labcd/IH;->Hw:[Labcd/JH;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    goto :goto_0
.end method

.method private Hw()V
    .registers 5

    iget-object v0, p0, Labcd/IH;->Hw:[Labcd/JH;

    iget v1, p0, Labcd/IH;->gn:I

    iget v2, p0, Labcd/IH;->we:I

    aget-object v2, v0, v2

    aput-object v2, v0, v1

    iget-object v0, p0, Labcd/IH;->tp:Labcd/JH;

    invoke-direct {p0, v1}, Labcd/IH;->Hw(I)I

    move-result v1

    move v2, v1

    :goto_0
    iget v1, p0, Labcd/IH;->we:I

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Labcd/IH;->Hw:[Labcd/JH;

    aput-object v0, v1, v2

    return-void

    :cond_0
    iget-object v3, p0, Labcd/IH;->Hw:[Labcd/JH;

    aget-object v1, v3, v2

    aput-object v0, v3, v2

    invoke-direct {p0, v2}, Labcd/IH;->Hw(I)I

    move-result v2

    move-object v0, v1

    goto :goto_0
.end method

.method private static j6(I)I
    .registers 3

    add-int/lit8 v0, p0, 0x7

    shr-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p0

    add-int/lit8 v1, p0, 0x3f

    shr-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xb

    return v0
.end method

.method private j6(Labcd/JH;I)I
    .registers 11

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Labcd/JH;->Hw()I

    move-result v0

    iget-object v3, p0, Labcd/IH;->tp:Labcd/JH;

    invoke-virtual {v3}, Labcd/JH;->Hw()I

    move-result v3

    if-eq v0, v3, :cond_0

    invoke-direct {p0}, Labcd/IH;->DW()V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Labcd/JH;->j6()I

    move-result v0

    iget v3, p0, Labcd/IH;->u7:I

    if-le v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labcd/IH;->tp:Labcd/JH;

    invoke-static {v0, v3, p1}, Labcd/IH;->j6(Labcd/JH;ILabcd/JH;)I

    move-result v0

    const/16 v3, 0x8

    if-gt v0, v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Labcd/IH;->tp:Labcd/JH;

    invoke-virtual {v3}, Labcd/JH;->FH()I

    move-result v3

    invoke-virtual {p1}, Labcd/JH;->FH()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v3, v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Labcd/IH;->tp:Labcd/JH;

    invoke-virtual {v3}, Labcd/JH;->FH()I

    move-result v3

    invoke-virtual {p1}, Labcd/JH;->FH()I

    move-result v4

    div-int/lit8 v4, v4, 0x10

    if-ge v3, v4, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    :try_start_0
    invoke-direct {p0, p1}, Labcd/IH;->FH(Labcd/JH;)Labcd/EH;
    :try_end_0
    .catch Labcd/cD; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :try_start_1
    iget-object v4, p0, Labcd/IH;->tp:Labcd/JH;

    invoke-direct {p0, v4}, Labcd/IH;->j6(Labcd/JH;)[B
    :try_end_1
    .catch Labcd/cD; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    iget-object v4, p0, Labcd/IH;->EQ:Labcd/RK$c;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Labcd/RK;->DW()J

    move-result-wide v4

    int-to-long v6, v0

    cmp-long v4, v4, v6

    if-gez v4, :cond_5

    iget-object v0, p0, Labcd/IH;->EQ:Labcd/RK$c;

    invoke-virtual {v0}, Labcd/RK;->DW()J

    move-result-wide v4

    long-to-int v0, v4

    :cond_5
    new-instance v4, Labcd/RK$c;

    invoke-direct {v4, v0}, Labcd/RK$c;-><init>(I)V

    :try_start_2
    invoke-virtual {v3, v4, v1, v0}, Labcd/EH;->j6(Ljava/io/OutputStream;[BI)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, v4}, Labcd/IH;->j6(Labcd/JH;Labcd/RK$c;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-object v4, p0, Labcd/IH;->EQ:Labcd/RK$c;

    iput p2, p0, Labcd/IH;->we:I

    :cond_7
    :goto_1
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p1, Labcd/JH;->j6:Labcd/MH;

    invoke-virtual {v1}, Labcd/MH;->P8()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0, p2}, Labcd/IH;->DW(I)V

    move v0, v2

    goto :goto_0

    :cond_8
    throw v0

    :catch_2
    move-exception v0

    invoke-direct {p0, p2}, Labcd/IH;->DW(I)V

    move v0, v2

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private static j6(Labcd/JH;ILabcd/JH;)I
    .registers 5

    invoke-virtual {p0}, Labcd/JH;->FH()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x14

    invoke-virtual {p2}, Labcd/JH;->j6()I

    move-result v1

    sub-int v1, p1, v1

    mul-int/2addr v0, v1

    div-int/2addr v0, p1

    return v0
.end method

.method private static j6(Labcd/MH;)J
    .registers 3

    invoke-virtual {p0}, Labcd/MH;->gW()I

    move-result v0

    invoke-static {v0}, Labcd/EH;->j6(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private j6()Ljava/util/zip/Deflater;
    .registers 3

    iget-object v0, p0, Labcd/IH;->J0:Ljava/util/zip/Deflater;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/zip/Deflater;

    iget-object v1, p0, Labcd/IH;->j6:Labcd/NH;

    invoke-virtual {v1}, Labcd/NH;->DW()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/zip/Deflater;-><init>(I)V

    iput-object v0, p0, Labcd/IH;->J0:Ljava/util/zip/Deflater;

    :goto_0
    iget-object v0, p0, Labcd/IH;->J0:Ljava/util/zip/Deflater;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    goto :goto_0
.end method

.method private j6(Labcd/MH;Labcd/MH;)V
    .registers 8

    const-wide/32 v0, 0x7fffffff

    iget-object v2, p0, Labcd/IH;->EQ:Labcd/RK$c;

    invoke-virtual {v2}, Labcd/RK;->DW()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Labcd/IH;->EQ:Labcd/RK$c;

    invoke-virtual {v0}, Labcd/RK;->DW()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Labcd/IH;->DW:Labcd/CH;

    invoke-virtual {v1, v0, p1, p2}, Labcd/CH;->j6(ILabcd/MH;Labcd/MH;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v0}, Labcd/IH;->j6(I)I

    move-result v1

    new-array v1, v1, [B

    new-instance v2, Labcd/IH$a;

    invoke-direct {p0}, Labcd/IH;->j6()Ljava/util/zip/Deflater;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Labcd/IH$a;-><init>(Ljava/util/zip/Deflater;[B)V

    iget-object v3, p0, Labcd/IH;->EQ:Labcd/RK$c;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Labcd/RK;->j6(Ljava/io/OutputStream;Labcd/LE;)V

    const/4 v3, 0x0

    iput-object v3, p0, Labcd/IH;->EQ:Labcd/RK$c;

    invoke-virtual {v2}, Labcd/IH$a;->j6()I

    move-result v2

    iget-object v3, p0, Labcd/IH;->DW:Labcd/CH;

    invoke-virtual {v3, v1, v2, v0}, Labcd/CH;->j6([BII)Labcd/CH$a;

    move-result-object v1

    invoke-virtual {p2, v1}, Labcd/MH;->j6(Labcd/CH$a;)V

    invoke-virtual {p2, v0}, Labcd/MH;->FH(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Labcd/IH;->DW:Labcd/CH;

    invoke-virtual {v1, v0}, Labcd/CH;->j6(I)V

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v1, p0, Labcd/IH;->DW:Labcd/CH;

    invoke-virtual {v1, v0}, Labcd/CH;->j6(I)V

    goto :goto_0
.end method

.method private j6(Labcd/JH;Labcd/RK$c;)Z
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Labcd/IH;->EQ:Labcd/RK$c;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Labcd/RK;->DW()J

    move-result-wide v2

    iget-object v4, p0, Labcd/IH;->EQ:Labcd/RK$c;

    invoke-virtual {v4}, Labcd/RK;->DW()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    invoke-virtual {p1}, Labcd/JH;->j6()I

    move-result v2

    iget-object v3, p0, Labcd/IH;->Hw:[Labcd/JH;

    iget v4, p0, Labcd/IH;->we:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Labcd/JH;->j6()I

    move-result v3

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Labcd/RK;->DW()J

    move-result-wide v2

    iget-object v4, p0, Labcd/IH;->EQ:Labcd/RK$c;

    invoke-virtual {v4}, Labcd/RK;->DW()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private j6(Labcd/JH;)[B
    .registers 8

    iget-object v0, p1, Labcd/JH;->DW:[B

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/IH;->j6:Labcd/NH;

    iget-object v1, p0, Labcd/IH;->FH:Labcd/IE;

    iget-object v2, p1, Labcd/JH;->j6:Labcd/MH;

    invoke-static {v0, v1, v2}, Labcd/TH;->j6(Labcd/NH;Labcd/IE;Labcd/YD;)[B

    move-result-object v0

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Labcd/IH;->v5:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    iget-wide v2, p0, Labcd/IH;->VH:J

    array-length v1, v0

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Labcd/IH;->VH:J

    :cond_0
    iput-object v0, p1, Labcd/JH;->DW:[B

    :cond_1
    return-object v0
.end method


# virtual methods
.method j6(Labcd/LE;[Labcd/MH;II)V
    .registers 13

    move v1, p3

    :goto_0
    add-int v0, p4, p3

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Labcd/IH;->J0:Ljava/util/zip/Deflater;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    :cond_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Labcd/IH;->Hw:[Labcd/JH;

    iget v2, p0, Labcd/IH;->gn:I

    aget-object v0, v0, v2

    iput-object v0, p0, Labcd/IH;->tp:Labcd/JH;

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Labcd/IH;->v5:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    iget-object v0, p0, Labcd/IH;->tp:Labcd/JH;

    invoke-direct {p0, v0}, Labcd/IH;->DW(Labcd/JH;)V

    iget v0, p0, Labcd/IH;->gn:I

    invoke-direct {p0, v0}, Labcd/IH;->FH(I)I

    move-result v0

    aget-object v2, p2, v1

    invoke-static {v2}, Labcd/IH;->j6(Labcd/MH;)J

    move-result-wide v2

    :goto_1
    iget-wide v4, p0, Labcd/IH;->v5:J

    iget-wide v6, p0, Labcd/IH;->VH:J

    add-long/2addr v6, v2

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    iget v4, p0, Labcd/IH;->gn:I

    if-ne v0, v4, :cond_3

    :cond_2
    iget-object v0, p0, Labcd/IH;->tp:Labcd/JH;

    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Labcd/JH;->j6(Labcd/MH;)V

    iget-object v0, p0, Labcd/IH;->tp:Labcd/JH;

    iget-object v0, v0, Labcd/JH;->j6:Labcd/MH;

    invoke-virtual {v0}, Labcd/MH;->P8()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Labcd/IH;->DW()V

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v4, p0, Labcd/IH;->Hw:[Labcd/JH;

    aget-object v4, v4, v0

    invoke-direct {p0, v4}, Labcd/IH;->DW(Labcd/JH;)V

    invoke-direct {p0, v0}, Labcd/IH;->FH(I)I

    move-result v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Labcd/LE;->update(I)V

    invoke-direct {p0}, Labcd/IH;->FH()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Labcd/IH;->J0:Ljava/util/zip/Deflater;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    :cond_5
    throw v0
.end method
