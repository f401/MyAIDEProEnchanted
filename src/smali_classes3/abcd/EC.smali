.class Labcd/EC;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/EC$a;
    }
.end annotation


# static fields
.field private static final j6:Labcd/EC$a;


# instance fields
.field private DW:J

.field private FH:I

.field private Hw:I

.field private Zo:I

.field private v5:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/EC$a;

    invoke-direct {v0}, Labcd/EC$a;-><init>()V

    sput-object v0, Labcd/EC;->j6:Labcd/EC$a;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Labcd/EC;->Zo:I

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    new-array v1, v1, [J

    iput-object v1, p0, Labcd/EC;->v5:[J

    invoke-static {v0}, Labcd/EC;->j6(I)I

    move-result v0

    iput v0, p0, Labcd/EC;->Hw:I

    return-void
.end method

.method private DW(I)I
    .registers 4

    iget-object v0, p0, Labcd/EC;->v5:[J

    array-length v0, v0

    iget v1, p0, Labcd/EC;->FH:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method

.method private static DW(J)J
    .registers 4

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method private DW()V
    .registers 14

    iget v0, p0, Labcd/EC;->Zo:I

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_49

    iget-object v1, p0, Labcd/EC;->v5:[J

    array-length v2, v1

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, p0, Labcd/EC;->Zo:I

    invoke-static {v0}, Labcd/EC;->j6(I)I

    move-result v0

    iput v0, p0, Labcd/EC;->Hw:I

    :try_start_13
    iget v0, p0, Labcd/EC;->Zo:I

    shl-int v0, v3, v0

    new-array v0, v0, [J

    iput-object v0, p0, Labcd/EC;->v5:[J
    :try_end_1b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_1b} :catch_45

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_1d
    if-lt v3, v2, :cond_20

    return-void

    :cond_20
    aget-wide v4, v1, v3

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_42

    invoke-static {v4, v5}, Labcd/EC;->FH(J)I

    move-result v8

    invoke-direct {p0, v8}, Labcd/EC;->FH(I)I

    move-result v8

    :cond_30
    :goto_30
    iget-object v9, p0, Labcd/EC;->v5:[J

    aget-wide v10, v9, v8

    cmp-long v12, v10, v6

    if-nez v12, :cond_3b

    aput-wide v4, v9, v8

    goto :goto_42

    :cond_3b
    add-int/lit8 v8, v8, 0x1

    array-length v9, v9

    if-lt v8, v9, :cond_30

    const/4 v8, 0x0

    goto :goto_30

    :cond_42
    :goto_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :catch_45
    move-exception v0

    sget-object v0, Labcd/EC;->j6:Labcd/EC$a;

    throw v0

    :cond_49
    new-instance v0, Labcd/EC$a;

    invoke-direct {v0}, Labcd/EC$a;-><init>()V

    goto :goto_50

    :goto_4f
    throw v0

    :goto_50
    goto :goto_4f
.end method

.method private FH(I)I
    .registers 3

    iget v0, p0, Labcd/EC;->Zo:I

    rsub-int/lit8 v0, v0, 0x1f

    ushr-int/2addr p1, v0

    return p1
.end method

.method private static FH(J)I
    .registers 3

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method private static j6(I)I
    .registers 3

    const/4 v0, 0x1

    shl-int/2addr v0, p0

    add-int/lit8 v1, p0, -0x3

    mul-int v0, v0, v1

    div-int/2addr v0, p0

    return v0
.end method

.method private static j6(IJ)J
    .registers 6

    const-wide v0, 0xffffffffL

    cmp-long v2, v0, p1

    if-ltz v2, :cond_f

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    or-long/2addr p1, v0

    return-wide p1

    :cond_f
    new-instance p0, Labcd/EC$a;

    invoke-direct {p0}, Labcd/EC$a;-><init>()V

    throw p0
.end method

.method private static j6(Labcd/EC;Labcd/EC;)J
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Labcd/EC;->DW(I)I

    move-result v1

    invoke-direct {p1, v0}, Labcd/EC;->DW(I)I

    move-result v0

    iget-object p0, p0, Labcd/EC;->v5:[J

    iget-object p1, p1, Labcd/EC;->v5:[J

    invoke-static {p0, v1, p1, v0}, Labcd/EC;->j6([JI[JI)J

    move-result-wide p0

    return-wide p0
.end method

.method private static j6([JI[JI)J
    .registers 11

    array-length v0, p0

    const-wide/16 v1, 0x0

    if-eq p1, v0, :cond_55

    array-length v0, p2

    if-ne p3, v0, :cond_9

    goto :goto_55

    :cond_9
    aget-wide v3, p0, p1

    invoke-static {v3, v4}, Labcd/EC;->FH(J)I

    move-result v0

    aget-wide v3, p2, p3

    :goto_11
    invoke-static {v3, v4}, Labcd/EC;->FH(J)I

    move-result v3

    :goto_15
    if-ne v0, v3, :cond_3d

    aget-wide v3, p0, p1

    invoke-static {v3, v4}, Labcd/EC;->DW(J)J

    move-result-wide v3

    aget-wide v5, p2, p3

    invoke-static {v5, v6}, Labcd/EC;->DW(J)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    add-long/2addr v1, v3

    add-int/lit8 p1, p1, 0x1

    array-length v0, p0

    if-ne p1, v0, :cond_2e

    goto :goto_51

    :cond_2e
    aget-wide v3, p0, p1

    invoke-static {v3, v4}, Labcd/EC;->FH(J)I

    move-result v0

    add-int/lit8 p3, p3, 0x1

    array-length v3, p2

    if-ne p3, v3, :cond_3a

    goto :goto_51

    :cond_3a
    aget-wide v3, p2, p3

    goto :goto_11

    :cond_3d
    if-ge v0, v3, :cond_4c

    add-int/lit8 p1, p1, 0x1

    array-length v0, p0

    if-ne p1, v0, :cond_45

    goto :goto_51

    :cond_45
    aget-wide v4, p0, p1

    invoke-static {v4, v5}, Labcd/EC;->FH(J)I

    move-result v0

    goto :goto_15

    :cond_4c
    add-int/lit8 p3, p3, 0x1

    array-length v3, p2

    if-ne p3, v3, :cond_52

    :goto_51
    return-wide v1

    :cond_52
    aget-wide v3, p2, p3

    goto :goto_11

    :cond_55
    :goto_55
    return-wide v1
.end method


# virtual methods
.method j6(Labcd/EC;I)I
    .registers 8

    iget-wide v0, p0, Labcd/EC;->DW:J

    iget-wide v2, p1, Labcd/EC;->DW:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_f

    return p2

    :cond_f
    invoke-virtual {p0, p1}, Labcd/EC;->j6(Labcd/EC;)J

    move-result-wide v2

    int-to-long p1, p2

    mul-long v2, v2, p1

    div-long/2addr v2, v0

    long-to-int p1, v2

    return p1
.end method

.method j6(Labcd/EC;)J
    .registers 4

    invoke-static {p0, p1}, Labcd/EC;->j6(Labcd/EC;Labcd/EC;)J

    move-result-wide v0

    return-wide v0
.end method

.method j6()V
    .registers 2

    iget-object v0, p0, Labcd/EC;->v5:[J

    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    return-void
.end method

.method j6(II)V
    .registers 10

    const v0, -0x61c8ffff

    mul-int p1, p1, v0

    ushr-int/lit8 p1, p1, 0x1

    :goto_7
    invoke-direct {p0, p1}, Labcd/EC;->FH(I)I

    move-result v0

    :cond_b
    :goto_b
    iget-object v1, p0, Labcd/EC;->v5:[J

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_2d

    iget v2, p0, Labcd/EC;->Hw:I

    iget v3, p0, Labcd/EC;->FH:I

    if-gt v2, v3, :cond_1f

    invoke-direct {p0}, Labcd/EC;->DW()V

    goto :goto_7

    :cond_1f
    int-to-long v2, p2

    invoke-static {p1, v2, v3}, Labcd/EC;->j6(IJ)J

    move-result-wide p1

    aput-wide p1, v1, v0

    iget p1, p0, Labcd/EC;->FH:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Labcd/EC;->FH:I

    return-void

    :cond_2d
    invoke-static {v2, v3}, Labcd/EC;->FH(J)I

    move-result v1

    if-ne v1, p1, :cond_42

    iget-object v1, p0, Labcd/EC;->v5:[J

    invoke-static {v2, v3}, Labcd/EC;->DW(J)J

    move-result-wide v2

    int-to-long v4, p2

    add-long/2addr v2, v4

    invoke-static {p1, v2, v3}, Labcd/EC;->j6(IJ)J

    move-result-wide p1

    aput-wide p1, v1, v0

    return-void

    :cond_42
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Labcd/EC;->v5:[J

    array-length v1, v1

    if-lt v0, v1, :cond_b

    const/4 v0, 0x0

    goto :goto_b
.end method

.method j6(J)V
    .registers 3

    iput-wide p1, p0, Labcd/EC;->DW:J

    return-void
.end method

.method j6(Labcd/FE;)V
    .registers 4

    invoke-virtual {p1}, Labcd/FE;->Hw()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Labcd/FE;->v5()Labcd/JE;

    move-result-object p1

    :try_start_a
    invoke-virtual {p1}, Labcd/JE;->j6()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Labcd/EC;->j6(J)V

    iget-wide v0, p0, Labcd/EC;->DW:J

    invoke-virtual {p0, p1, v0, v1}, Labcd/EC;->j6(Ljava/io/InputStream;J)V
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1a

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_2d

    :catchall_1a
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_1f
    invoke-virtual {p1}, Labcd/FE;->j6()[B

    move-result-object p1

    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Labcd/EC;->j6(J)V

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Labcd/EC;->j6([BII)V

    :goto_2d
    return-void
.end method

.method j6(Ljava/io/InputStream;J)V
    .registers 14

    const/16 v0, 0x1000

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_7
    const-wide/16 v5, 0x0

    cmp-long v7, v5, p2

    if-ltz v7, :cond_e

    return-void

    :cond_e
    const/16 v5, 0x1505

    const/4 v6, 0x0

    :goto_11
    if-ne v4, v3, :cond_21

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_1b

    const/4 v4, 0x0

    goto :goto_21

    :cond_1b
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_21
    :goto_21
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v8, 0xa

    if-ne v4, v8, :cond_2e

    goto :goto_3f

    :cond_2e
    shl-int/lit8 v8, v5, 0x5

    add-int/2addr v8, v5

    add-int v5, v8, v4

    const/16 v4, 0x40

    if-ge v6, v4, :cond_3f

    int-to-long v8, v6

    cmp-long v4, v8, p2

    if-ltz v4, :cond_3d

    goto :goto_3f

    :cond_3d
    move v4, v7

    goto :goto_11

    :cond_3f
    :goto_3f
    invoke-virtual {p0, v5, v6}, Labcd/EC;->j6(II)V

    int-to-long v4, v6

    sub-long/2addr p2, v4

    move v4, v7

    goto :goto_7
.end method

.method j6([BII)V
    .registers 8

    :goto_0
    if-lt p2, p3, :cond_3

    return-void

    :cond_3
    const/16 v0, 0x1505

    move v1, p2

    :goto_6
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0xa

    if-ne v1, v3, :cond_11

    goto :goto_21

    :cond_11
    shl-int/lit8 v3, v0, 0x5

    add-int/2addr v3, v0

    add-int v0, v3, v1

    if-ge v2, p3, :cond_21

    sub-int v1, v2, p2

    const/16 v3, 0x40

    if-lt v1, v3, :cond_1f

    goto :goto_21

    :cond_1f
    move v1, v2

    goto :goto_6

    :cond_21
    :goto_21
    sub-int p2, v2, p2

    invoke-virtual {p0, v0, p2}, Labcd/EC;->j6(II)V

    move p2, v2

    goto :goto_0
.end method
