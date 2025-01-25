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
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/IH;->j6:Labcd/NH;

    iput-object p2, p0, Labcd/IH;->DW:Labcd/CH;

    iput-object p3, p0, Labcd/IH;->FH:Labcd/IE;

    invoke-virtual {p1}, Labcd/NH;->Zo()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [Labcd/JH;

    iput-object p1, p0, Labcd/IH;->Hw:[Labcd/JH;

    const/4 p1, 0x0

    :goto_14
    iget-object p2, p0, Labcd/IH;->Hw:[Labcd/JH;

    array-length p3, p2

    if-lt p1, p3, :cond_2a

    iget-object p1, p0, Labcd/IH;->j6:Labcd/NH;

    invoke-virtual {p1}, Labcd/NH;->v5()J

    move-result-wide p1

    iput-wide p1, p0, Labcd/IH;->v5:J

    iget-object p1, p0, Labcd/IH;->j6:Labcd/NH;

    invoke-virtual {p1}, Labcd/NH;->u7()I

    move-result p1

    iput p1, p0, Labcd/IH;->Zo:I

    return-void

    :cond_2a
    new-instance p3, Labcd/JH;

    invoke-direct {p3}, Labcd/JH;-><init>()V

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_14
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
    .registers 7

    iget-object v0, p1, Labcd/JH;->FH:Labcd/EH;

    if-eqz v0, :cond_e

    iget-wide v1, p0, Labcd/IH;->VH:J

    invoke-virtual {v0}, Labcd/EH;->j6()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Labcd/IH;->VH:J

    goto :goto_1d

    :cond_e
    iget-object v0, p0, Labcd/IH;->tp:Labcd/JH;

    iget-object v0, v0, Labcd/JH;->DW:[B

    if-eqz v0, :cond_1d

    iget-wide v0, p0, Labcd/IH;->VH:J

    iget-object v2, p1, Labcd/JH;->DW:[B

    array-length v2, v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Labcd/IH;->VH:J

    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Labcd/JH;->j6(Labcd/MH;)V

    return-void
.end method

.method private FH(I)I
    .registers 3

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Labcd/IH;->Hw:[Labcd/JH;

    array-length v0, v0

    if-ne p1, v0, :cond_8

    const/4 p1, 0x0

    :cond_8
    return p1
.end method

.method private FH(Labcd/JH;)Labcd/EH;
    .registers 9

    iget-object v0, p1, Labcd/JH;->FH:Labcd/EH;

    if-nez v0, :cond_32

    :try_start_4
    new-instance v0, Labcd/EH;

    invoke-direct {p0, p1}, Labcd/IH;->j6(Labcd/JH;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/EH;-><init>([B)V
    :try_end_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_d} :catch_26

    const-wide/16 v1, 0x0

    iget-wide v3, p0, Labcd/IH;->v5:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_23

    iget-wide v1, p0, Labcd/IH;->VH:J

    invoke-virtual {v0}, Labcd/EH;->j6()J

    move-result-wide v3

    invoke-virtual {v0}, Labcd/EH;->DW()J

    move-result-wide v5

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Labcd/IH;->VH:J

    :cond_23
    iput-object v0, p1, Labcd/JH;->FH:Labcd/EH;

    goto :goto_32

    :catch_26
    move-exception v0

    new-instance v1, Labcd/cD$c;

    invoke-direct {v1, v0}, Labcd/cD$c;-><init>(Ljava/lang/OutOfMemoryError;)V

    iget-object p1, p1, Labcd/JH;->j6:Labcd/MH;

    invoke-virtual {v1, p1}, Labcd/cD;->j6(Labcd/YD;)V

    throw v1

    :cond_32
    :goto_32
    return-object v0
.end method

.method private FH()V
    .registers 5

    iget v0, p0, Labcd/IH;->Zo:I

    iput v0, p0, Labcd/IH;->u7:I

    iget v0, p0, Labcd/IH;->gn:I

    :cond_6
    invoke-direct {p0, v0}, Labcd/IH;->Hw(I)I

    move-result v0

    iget v1, p0, Labcd/IH;->gn:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_10

    goto :goto_1a

    :cond_10
    iget-object v1, p0, Labcd/IH;->Hw:[Labcd/JH;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Labcd/JH;->DW()Z

    move-result v3

    if-eqz v3, :cond_60

    :goto_1a
    iget-object v0, p0, Labcd/IH;->EQ:Labcd/RK$c;

    if-nez v0, :cond_22

    invoke-direct {p0}, Labcd/IH;->DW()V

    return-void

    :cond_22
    iget-object v0, p0, Labcd/IH;->Hw:[Labcd/JH;

    iget v1, p0, Labcd/IH;->we:I

    aget-object v0, v0, v1

    iget-object v0, v0, Labcd/JH;->j6:Labcd/MH;

    iget-object v1, p0, Labcd/IH;->tp:Labcd/JH;

    iget-object v1, v1, Labcd/JH;->j6:Labcd/MH;

    invoke-virtual {v0}, Labcd/MH;->P8()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {v0}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object v3

    invoke-virtual {v1, v3}, Labcd/MH;->DW(Labcd/yE;)V

    goto :goto_3f

    :cond_3c
    invoke-virtual {v1, v0}, Labcd/MH;->DW(Labcd/yE;)V

    :goto_3f
    invoke-virtual {v0}, Labcd/MH;->rN()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Labcd/MH;->Hw(I)V

    invoke-virtual {v1}, Labcd/MH;->Mr()V

    invoke-direct {p0, v0, v1}, Labcd/IH;->j6(Labcd/MH;Labcd/MH;)V

    iput-object v2, p0, Labcd/IH;->EQ:Labcd/RK$c;

    invoke-virtual {v1}, Labcd/MH;->rN()I

    move-result v0

    iget v1, p0, Labcd/IH;->Zo:I

    if-ne v0, v1, :cond_59

    return-void

    :cond_59
    invoke-direct {p0}, Labcd/IH;->Hw()V

    invoke-direct {p0}, Labcd/IH;->DW()V

    return-void

    :cond_60
    invoke-direct {p0, v1, v0}, Labcd/IH;->j6(Labcd/JH;I)I

    move-result v1

    if-nez v1, :cond_6

    iput-object v2, p0, Labcd/IH;->EQ:Labcd/RK$c;

    return-void
.end method

.method private Hw(I)I
    .registers 2

    if-nez p1, :cond_8

    iget-object p1, p0, Labcd/IH;->Hw:[Labcd/JH;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_8
    add-int/lit8 p1, p1, -0x1

    return p1
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

    :goto_10
    iget v2, p0, Labcd/IH;->we:I

    if-ne v1, v2, :cond_19

    iget-object v2, p0, Labcd/IH;->Hw:[Labcd/JH;

    aput-object v0, v2, v1

    return-void

    :cond_19
    iget-object v2, p0, Labcd/IH;->Hw:[Labcd/JH;

    aget-object v3, v2, v1

    aput-object v0, v2, v1

    invoke-direct {p0, v1}, Labcd/IH;->Hw(I)I

    move-result v1

    move-object v0, v3

    goto :goto_10
.end method

.method private static j6(I)I
    .registers 2

    add-int/lit8 v0, p0, 0x7

    shr-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p0

    add-int/lit8 p0, p0, 0x3f

    shr-int/lit8 p0, p0, 0x6

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0xb

    return v0
.end method

.method private j6(Labcd/JH;I)I
    .registers 12

    invoke-virtual {p1}, Labcd/JH;->Hw()I

    move-result v0

    iget-object v1, p0, Labcd/IH;->tp:Labcd/JH;

    invoke-virtual {v1}, Labcd/JH;->Hw()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_11

    invoke-direct {p0}, Labcd/IH;->DW()V

    return v2

    :cond_11
    invoke-virtual {p1}, Labcd/JH;->j6()I

    move-result v0

    iget v1, p0, Labcd/IH;->u7:I

    const/4 v3, 0x1

    if-le v0, v1, :cond_1b

    return v3

    :cond_1b
    iget-object v0, p0, Labcd/IH;->tp:Labcd/JH;

    invoke-static {v0, v1, p1}, Labcd/IH;->j6(Labcd/JH;ILabcd/JH;)I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_26

    return v3

    :cond_26
    iget-object v1, p0, Labcd/IH;->tp:Labcd/JH;

    invoke-virtual {v1}, Labcd/JH;->FH()I

    move-result v1

    invoke-virtual {p1}, Labcd/JH;->FH()I

    move-result v4

    sub-int/2addr v1, v4

    if-le v1, v0, :cond_34

    return v3

    :cond_34
    iget-object v1, p0, Labcd/IH;->tp:Labcd/JH;

    invoke-virtual {v1}, Labcd/JH;->FH()I

    move-result v1

    invoke-virtual {p1}, Labcd/JH;->FH()I

    move-result v4

    div-int/lit8 v4, v4, 0x10

    if-ge v1, v4, :cond_43

    return v3

    :cond_43
    :try_start_43
    invoke-direct {p0, p1}, Labcd/IH;->FH(Labcd/JH;)Labcd/EH;

    move-result-object v1
    :try_end_47
    .catch Labcd/cD; {:try_start_43 .. :try_end_47} :catch_8a
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_47} :catch_7c

    :try_start_47
    iget-object v4, p0, Labcd/IH;->tp:Labcd/JH;

    invoke-direct {p0, v4}, Labcd/IH;->j6(Labcd/JH;)[B

    move-result-object v2
    :try_end_4d
    .catch Labcd/cD; {:try_start_47 .. :try_end_4d} :catch_7a

    iget-object v4, p0, Labcd/IH;->EQ:Labcd/RK$c;

    if-eqz v4, :cond_61

    invoke-virtual {v4}, Labcd/RK;->DW()J

    move-result-wide v4

    int-to-long v6, v0

    cmp-long v8, v4, v6

    if-gez v8, :cond_61

    iget-object v0, p0, Labcd/IH;->EQ:Labcd/RK$c;

    invoke-virtual {v0}, Labcd/RK;->DW()J

    move-result-wide v4

    long-to-int v0, v4

    :cond_61
    new-instance v4, Labcd/RK$c;

    invoke-direct {v4, v0}, Labcd/RK$c;-><init>(I)V

    :try_start_66
    invoke-virtual {v1, v4, v2, v0}, Labcd/EH;->j6(Ljava/io/OutputStream;[BI)Z

    move-result v0
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6a} :catch_78

    if-nez v0, :cond_6d

    return v3

    :cond_6d
    invoke-direct {p0, p1, v4}, Labcd/IH;->j6(Labcd/JH;Labcd/RK$c;)Z

    move-result p1

    if-eqz p1, :cond_79

    iput-object v4, p0, Labcd/IH;->EQ:Labcd/RK$c;

    iput p2, p0, Labcd/IH;->we:I

    goto :goto_79

    :catch_78
    move-exception p1

    :cond_79
    :goto_79
    return v3

    :catch_7a
    move-exception p1

    return v2

    :catch_7c
    move-exception v0

    iget-object p1, p1, Labcd/JH;->j6:Labcd/MH;

    invoke-virtual {p1}, Labcd/MH;->P8()Z

    move-result p1

    if-eqz p1, :cond_89

    invoke-direct {p0, p2}, Labcd/IH;->DW(I)V

    return v3

    :cond_89
    throw v0

    :catch_8a
    move-exception p1

    invoke-direct {p0, p2}, Labcd/IH;->DW(I)V

    return v3
.end method

.method private static j6(Labcd/JH;ILabcd/JH;)I
    .registers 3

    invoke-virtual {p0}, Labcd/JH;->FH()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, -0x14

    invoke-virtual {p2}, Labcd/JH;->j6()I

    move-result p2

    sub-int p2, p1, p2

    mul-int p0, p0, p2

    div-int/2addr p0, p1

    return p0
.end method

.method private static j6(Labcd/MH;)J
    .registers 3

    invoke-virtual {p0}, Labcd/MH;->gW()I

    move-result p0

    invoke-static {p0}, Labcd/EH;->j6(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private j6()Ljava/util/zip/Deflater;
    .registers 3

    iget-object v0, p0, Labcd/IH;->J0:Ljava/util/zip/Deflater;

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/zip/Deflater;

    iget-object v1, p0, Labcd/IH;->j6:Labcd/NH;

    invoke-virtual {v1}, Labcd/NH;->DW()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/zip/Deflater;-><init>(I)V

    iput-object v0, p0, Labcd/IH;->J0:Ljava/util/zip/Deflater;

    goto :goto_15

    :cond_12
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    :goto_15
    iget-object v0, p0, Labcd/IH;->J0:Ljava/util/zip/Deflater;

    return-object v0
.end method

.method private j6(Labcd/MH;Labcd/MH;)V
    .registers 8

    iget-object v0, p0, Labcd/IH;->EQ:Labcd/RK$c;

    invoke-virtual {v0}, Labcd/RK;->DW()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v2, v0

    if-gez v4, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Labcd/IH;->EQ:Labcd/RK$c;

    invoke-virtual {v0}, Labcd/RK;->DW()J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Labcd/IH;->DW:Labcd/CH;

    invoke-virtual {v0, v1, p1, p2}, Labcd/CH;->j6(ILabcd/MH;Labcd/MH;)Z

    move-result p1

    if-eqz p1, :cond_4d

    :try_start_1d
    invoke-static {v1}, Labcd/IH;->j6(I)I

    move-result p1

    new-array p1, p1, [B

    new-instance v0, Labcd/IH$a;

    invoke-direct {p0}, Labcd/IH;->j6()Ljava/util/zip/Deflater;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Labcd/IH$a;-><init>(Ljava/util/zip/Deflater;[B)V

    iget-object v2, p0, Labcd/IH;->EQ:Labcd/RK$c;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Labcd/RK;->j6(Ljava/io/OutputStream;Labcd/LE;)V

    iput-object v3, p0, Labcd/IH;->EQ:Labcd/RK$c;

    invoke-virtual {v0}, Labcd/IH$a;->j6()I

    move-result v0

    iget-object v2, p0, Labcd/IH;->DW:Labcd/CH;

    invoke-virtual {v2, p1, v0, v1}, Labcd/CH;->j6([BII)Labcd/CH$a;

    move-result-object p1

    invoke-virtual {p2, p1}, Labcd/MH;->j6(Labcd/CH$a;)V

    invoke-virtual {p2, v1}, Labcd/MH;->FH(I)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_44} :catch_47
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_44} :catch_45

    goto :goto_4d

    :catch_45
    move-exception p1

    goto :goto_48

    :catch_47
    move-exception p1

    :goto_48
    iget-object p1, p0, Labcd/IH;->DW:Labcd/CH;

    invoke-virtual {p1, v1}, Labcd/CH;->j6(I)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method private j6(Labcd/JH;Labcd/RK$c;)Z
    .registers 10

    iget-object v0, p0, Labcd/IH;->EQ:Labcd/RK$c;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p2}, Labcd/RK;->DW()J

    move-result-wide v2

    iget-object v0, p0, Labcd/IH;->EQ:Labcd/RK$c;

    invoke-virtual {v0}, Labcd/RK;->DW()J

    move-result-wide v4

    const/4 v0, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_27

    invoke-virtual {p1}, Labcd/JH;->j6()I

    move-result p1

    iget-object p2, p0, Labcd/IH;->Hw:[Labcd/JH;

    iget v2, p0, Labcd/IH;->we:I

    aget-object p2, p2, v2

    invoke-virtual {p2}, Labcd/JH;->j6()I

    move-result p2

    if-ge p1, p2, :cond_26

    return v1

    :cond_26
    return v0

    :cond_27
    invoke-virtual {p2}, Labcd/RK;->DW()J

    move-result-wide p1

    iget-object v2, p0, Labcd/IH;->EQ:Labcd/RK$c;

    invoke-virtual {v2}, Labcd/RK;->DW()J

    move-result-wide v2

    cmp-long v4, p1, v2

    if-gez v4, :cond_36

    return v1

    :cond_36
    return v0
.end method

.method private j6(Labcd/JH;)[B
    .registers 8

    iget-object v0, p1, Labcd/JH;->DW:[B

    if-nez v0, :cond_1f

    iget-object v0, p0, Labcd/IH;->j6:Labcd/NH;

    iget-object v1, p0, Labcd/IH;->FH:Labcd/IE;

    iget-object v2, p1, Labcd/JH;->j6:Labcd/MH;

    invoke-static {v0, v1, v2}, Labcd/TH;->j6(Labcd/NH;Labcd/IE;Labcd/YD;)[B

    move-result-object v0

    const-wide/16 v1, 0x0

    iget-wide v3, p0, Labcd/IH;->v5:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_1d

    iget-wide v1, p0, Labcd/IH;->VH:J

    array-length v3, v0

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Labcd/IH;->VH:J

    :cond_1d
    iput-object v0, p1, Labcd/JH;->DW:[B

    :cond_1f
    return-object v0
.end method


# virtual methods
.method j6(Labcd/LE;[Labcd/MH;II)V
    .registers 14

    move v0, p3

    :goto_1
    add-int v1, p4, p3

    if-lt v0, v1, :cond_d

    iget-object p1, p0, Labcd/IH;->J0:Ljava/util/zip/Deflater;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/util/zip/Deflater;->end()V

    :cond_c
    return-void

    :cond_d
    :try_start_d
    iget-object v1, p0, Labcd/IH;->Hw:[Labcd/JH;

    iget v2, p0, Labcd/IH;->gn:I

    aget-object v1, v1, v2

    iput-object v1, p0, Labcd/IH;->tp:Labcd/JH;

    iget-wide v2, p0, Labcd/IH;->v5:J

    const-wide/16 v4, 0x0

    cmp-long v6, v4, v2

    if-gez v6, :cond_46

    invoke-direct {p0, v1}, Labcd/IH;->DW(Labcd/JH;)V

    iget v1, p0, Labcd/IH;->gn:I

    invoke-direct {p0, v1}, Labcd/IH;->FH(I)I

    move-result v1

    aget-object v2, p2, v0

    invoke-static {v2}, Labcd/IH;->j6(Labcd/MH;)J

    move-result-wide v2

    :goto_2c
    iget-wide v4, p0, Labcd/IH;->v5:J

    iget-wide v6, p0, Labcd/IH;->VH:J

    add-long/2addr v6, v2

    cmp-long v8, v4, v6

    if-gez v8, :cond_46

    iget v4, p0, Labcd/IH;->gn:I

    if-ne v1, v4, :cond_3a

    goto :goto_46

    :cond_3a
    iget-object v4, p0, Labcd/IH;->Hw:[Labcd/JH;

    aget-object v4, v4, v1

    invoke-direct {p0, v4}, Labcd/IH;->DW(Labcd/JH;)V

    invoke-direct {p0, v1}, Labcd/IH;->FH(I)I

    move-result v1

    goto :goto_2c

    :cond_46
    :goto_46
    iget-object v1, p0, Labcd/IH;->tp:Labcd/JH;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Labcd/JH;->j6(Labcd/MH;)V

    iget-object v1, p0, Labcd/IH;->tp:Labcd/JH;

    iget-object v1, v1, Labcd/JH;->j6:Labcd/MH;

    invoke-virtual {v1}, Labcd/MH;->P8()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-direct {p0}, Labcd/IH;->DW()V

    goto :goto_62

    :cond_5b
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Labcd/LE;->update(I)V

    invoke-direct {p0}, Labcd/IH;->FH()V
    :try_end_62
    .catchall {:try_start_d .. :try_end_62} :catchall_65

    :goto_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_65
    move-exception p1

    iget-object p2, p0, Labcd/IH;->J0:Ljava/util/zip/Deflater;

    if-eqz p2, :cond_6d

    invoke-virtual {p2}, Ljava/util/zip/Deflater;->end()V

    :cond_6d
    goto :goto_6f

    :goto_6e
    throw p1

    :goto_6f
    goto :goto_6e
.end method
