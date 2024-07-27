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

    iget v0, p0, Labcd/EC;->Zo:I

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

    and-long/2addr v0, p0

    return-wide v0
.end method

.method private DW()V
    .registers 13

    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    iget v0, p0, Labcd/EC;->Zo:I

    const/16 v2, 0x1e

    if-eq v0, v2, :cond_4

    iget-object v3, p0, Labcd/EC;->v5:[J

    array-length v4, v3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/EC;->Zo:I

    iget v0, p0, Labcd/EC;->Zo:I

    invoke-static {v0}, Labcd/EC;->j6(I)I

    move-result v0

    iput v0, p0, Labcd/EC;->Hw:I

    const/4 v0, 0x1

    :try_start_0
    iget v2, p0, Labcd/EC;->Zo:I

    shl-int/2addr v0, v2

    new-array v0, v0, [J

    iput-object v0, p0, Labcd/EC;->v5:[J
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    return-void

    :cond_0
    aget-wide v6, v3, v2

    cmp-long v0, v6, v10

    if-eqz v0, :cond_2

    invoke-static {v6, v7}, Labcd/EC;->FH(J)I

    move-result v0

    invoke-direct {p0, v0}, Labcd/EC;->FH(I)I

    move-result v0

    :cond_1
    :goto_1
    iget-object v5, p0, Labcd/EC;->v5:[J

    aget-wide v8, v5, v0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    aput-wide v6, v5, v0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    array-length v5, v5

    if-lt v0, v5, :cond_1

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v0, Labcd/EC;->j6:Labcd/EC$a;

    throw v0

    :cond_4
    new-instance v0, Labcd/EC$a;

    invoke-direct {v0}, Labcd/EC$a;-><init>()V

    throw v0
.end method

.method private FH(I)I
    .registers 3

    iget v0, p0, Labcd/EC;->Zo:I

    rsub-int/lit8 v0, v0, 0x1f

    ushr-int v0, p1, v0

    return v0
.end method

.method private static FH(J)I
    .registers 4

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private static j6(I)I
    .registers 3

    const/4 v0, 0x1

    shl-int/2addr v0, p0

    add-int/lit8 v1, p0, -0x3

    mul-int/2addr v0, v1

    div-int/2addr v0, p0

    return v0
.end method

.method private static j6(IJ)J
    .registers 6

    const-wide v0, 0xffffffffL

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    or-long/2addr v0, p1

    return-wide v0

    :cond_0
    new-instance v0, Labcd/EC$a;

    invoke-direct {v0}, Labcd/EC$a;-><init>()V

    throw v0
.end method

.method private static j6(Labcd/EC;Labcd/EC;)J
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Labcd/EC;->DW(I)I

    move-result v0

    invoke-direct {p1, v1}, Labcd/EC;->DW(I)I

    move-result v1

    iget-object v2, p0, Labcd/EC;->v5:[J

    iget-object v3, p1, Labcd/EC;->v5:[J

    invoke-static {v2, v0, v3, v1}, Labcd/EC;->j6([JI[JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private static j6([JI[JI)J
    .registers 10

    const-wide/16 v0, 0x0

    array-length v2, p0

    if-eq p1, v2, :cond_0

    array-length v2, p2

    if-ne p3, v2, :cond_1

    :cond_0
    return-wide v0

    :cond_1
    aget-wide v2, p0, p1

    invoke-static {v2, v3}, Labcd/EC;->FH(J)I

    move-result v3

    aget-wide v4, p2, p3

    invoke-static {v4, v5}, Labcd/EC;->FH(J)I

    move-result v2

    :goto_0
    if-ne v3, v2, :cond_2

    aget-wide v2, p0, p1

    invoke-static {v2, v3}, Labcd/EC;->DW(J)J

    move-result-wide v2

    aget-wide v4, p2, p3

    invoke-static {v4, v5}, Labcd/EC;->DW(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x1

    array-length v2, p0

    if-eq p1, v2, :cond_0

    aget-wide v2, p0, p1

    invoke-static {v2, v3}, Labcd/EC;->FH(J)I

    move-result v3

    add-int/lit8 p3, p3, 0x1

    array-length v2, p2

    if-eq p3, v2, :cond_0

    aget-wide v4, p2, p3

    invoke-static {v4, v5}, Labcd/EC;->FH(J)I

    move-result v2

    goto :goto_0

    :cond_2
    if-ge v3, v2, :cond_3

    add-int/lit8 p1, p1, 0x1

    array-length v3, p0

    if-eq p1, v3, :cond_0

    aget-wide v4, p0, p1

    invoke-static {v4, v5}, Labcd/EC;->FH(J)I

    move-result v3

    goto :goto_0

    :cond_3
    add-int/lit8 p3, p3, 0x1

    array-length v2, p2

    if-eq p3, v2, :cond_0

    aget-wide v4, p2, p3

    invoke-static {v4, v5}, Labcd/EC;->FH(J)I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method j6(Labcd/EC;I)I
    .registers 9

    iget-wide v0, p0, Labcd/EC;->DW:J

    iget-wide v2, p1, Labcd/EC;->DW:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-virtual {p0, p1}, Labcd/EC;->j6(Labcd/EC;)J

    move-result-wide v2

    int-to-long v4, p2

    mul-long/2addr v2, v4

    div-long v0, v2, v0

    long-to-int p2, v0

    goto :goto_0
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
    .registers 11

    const v0, -0x61c8ffff

    mul-int/2addr v0, p1

    ushr-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Labcd/EC;->FH(I)I

    move-result v0

    :cond_0
    :goto_0
    iget-object v2, p0, Labcd/EC;->v5:[J

    aget-wide v4, v2, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iget v3, p0, Labcd/EC;->Hw:I

    iget v4, p0, Labcd/EC;->FH:I

    if-gt v3, v4, :cond_1

    invoke-direct {p0}, Labcd/EC;->DW()V

    invoke-direct {p0, v1}, Labcd/EC;->FH(I)I

    move-result v0

    goto :goto_0

    :cond_1
    int-to-long v4, p2

    invoke-static {v1, v4, v5}, Labcd/EC;->j6(IJ)J

    move-result-wide v4

    aput-wide v4, v2, v0

    iget v0, p0, Labcd/EC;->FH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/EC;->FH:I

    :goto_1
    return-void

    :cond_2
    invoke-static {v4, v5}, Labcd/EC;->FH(J)I

    move-result v2

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Labcd/EC;->v5:[J

    invoke-static {v4, v5}, Labcd/EC;->DW(J)J

    move-result-wide v4

    int-to-long v6, p2

    add-long/2addr v4, v6

    invoke-static {v1, v4, v5}, Labcd/EC;->j6(IJ)J

    move-result-wide v4

    aput-wide v4, v2, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Labcd/EC;->v5:[J

    array-length v2, v2

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method j6(J)V
    .registers 4

    iput-wide p1, p0, Labcd/EC;->DW:J

    return-void
.end method

.method j6(Labcd/FE;)V
    .registers 6

    invoke-virtual {p1}, Labcd/FE;->Hw()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Labcd/FE;->v5()Labcd/JE;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Labcd/JE;->j6()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Labcd/EC;->j6(J)V

    iget-wide v2, p0, Labcd/EC;->DW:J

    invoke-virtual {p0, v1, v2, v3}, Labcd/EC;->j6(Ljava/io/InputStream;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Labcd/FE;->j6()[B

    move-result-object v0

    array-length v1, v0

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Labcd/EC;->j6(J)V

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Labcd/EC;->j6([BII)V

    goto :goto_0
.end method

.method j6(Ljava/io/InputStream;J)V
    .registers 14

    const/4 v1, 0x0

    const/16 v0, 0x1000

    new-array v6, v0, [B

    move v0, v1

    move v2, v1

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v3, v4, p2

    if-ltz v3, :cond_0

    return-void

    :cond_0
    const/16 v3, 0x1505

    move v4, v1

    :goto_1
    if-ne v0, v2, :cond_1

    array-length v0, v6

    invoke-virtual {p1, v6, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_2

    move v0, v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, v6, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v7, 0xa

    if-ne v0, v7, :cond_3

    move v0, v3

    :goto_2
    invoke-virtual {p0, v0, v4}, Labcd/EC;->j6(II)V

    int-to-long v8, v4

    sub-long/2addr p2, v8

    move v0, v5

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_3
    shl-int/lit8 v7, v3, 0x5

    add-int/2addr v3, v7

    add-int/2addr v3, v0

    const/16 v0, 0x40

    if-ge v4, v0, :cond_5

    int-to-long v8, v4

    cmp-long v0, v8, p2

    if-ltz v0, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v5

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_2
.end method

.method j6([BII)V
    .registers 9

    move v1, p2

    :goto_0
    if-lt v1, p3, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x1505

    move v0, v1

    move v3, v2

    :goto_1
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    :cond_1
    sub-int v0, v2, v1

    invoke-virtual {p0, v3, v0}, Labcd/EC;->j6(II)V

    move v1, v2

    goto :goto_0

    :cond_2
    shl-int/lit8 v4, v3, 0x5

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    if-ge v2, p3, :cond_1

    sub-int v0, v2, v1

    const/16 v4, 0x40

    if-ge v0, v4, :cond_1

    move v0, v2

    goto :goto_1
.end method
