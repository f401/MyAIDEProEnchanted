.class public final Lcom/google/android/gms/internal/ads/Mz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Qz;


# static fields
.field private static final j6:[B


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/iD;

.field private final FH:J

.field private Hw:J

.field private VH:I

.field private Zo:I

.field private v5:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/Mz;->j6:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/iD;JJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Mz;->DW:Lcom/google/android/gms/internal/ads/iD;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/Mz;->Hw:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/Mz;->FH:J

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Mz;->v5:[B

    return-void
.end method

.method private final DW([BII)I
    .registers 7

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Mz;->VH:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Mz;->v5:[B

    invoke-static {v2, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Mz;->Zo(I)V

    move v0, v1

    goto :goto_0
.end method

.method private final Hw(I)V
    .registers 6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Mz;->Hw:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Mz;->Hw:J

    :cond_0
    return-void
.end method

.method private final Zo(I)V
    .registers 7

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/ads/Mz;->VH:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Mz;->VH:I

    iput v4, p0, Lcom/google/android/gms/internal/ads/Mz;->Zo:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mz;->v5:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/Mz;->VH:I

    array-length v2, v0

    const/high16 v3, 0x80000

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    const/high16 v0, 0x10000

    add-int/2addr v0, v1

    new-array v0, v0, [B

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Mz;->v5:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/Mz;->VH:I

    invoke-static {v1, p1, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Mz;->v5:[B

    return-void
.end method

.method private final j6([BIIIZ)I
    .registers 10

    const/4 v0, -0x1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Mz;->DW:Lcom/google/android/gms/internal/ads/iD;

    add-int v2, p2, p4

    sub-int v3, p3, p4

    invoke-interface {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/iD;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_1

    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    add-int v0, p4, v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method private final j6(IZ)Z
    .registers 9

    const/4 v5, 0x0

    iget v0, p0, Lcom/google/android/gms/internal/ads/Mz;->Zo:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Mz;->v5:[B

    array-length v2, v1

    if-le v0, v2, :cond_0

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    const/high16 v2, 0x10000

    add-int/2addr v2, v0

    const/high16 v3, 0x80000

    add-int/2addr v0, v3

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/TD;->j6(III)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Mz;->v5:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Mz;->v5:[B

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/Mz;->VH:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Mz;->Zo:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_1
    if-ge v4, p1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Mz;->v5:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/Mz;->Zo:I

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Mz;->j6([BIIIZ)I

    move-result v4

    const/4 v0, -0x1

    if-ne v4, v0, :cond_1

    :goto_0
    return v5

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/Mz;->Zo:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Mz;->Zo:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/Mz;->VH:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/Mz;->Zo:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Mz;->VH:I

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private final v5(I)I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Mz;->VH:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Mz;->Zo(I)V

    return v0
.end method


# virtual methods
.method public final DW(I)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Mz;->v5(I)I

    move-result v4

    :goto_0
    if-ge v4, p1, :cond_0

    const/4 v0, -0x1

    if-eq v4, v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/Mz;->j6:[B

    neg-int v2, v4

    array-length v0, v1

    add-int/2addr v0, v4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Mz;->j6([BIIIZ)I

    move-result v4

    goto :goto_0

    :cond_0
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/Mz;->Hw(I)V

    return-void
.end method

.method public final FH(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Mz;->j6(IZ)Z

    return-void
.end method

.method public final getLength()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Mz;->FH:J

    return-wide v0
.end method

.method public final getPosition()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Mz;->Hw:J

    return-wide v0
.end method

.method public final j6(I)I
    .registers 8

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Mz;->v5(I)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/Mz;->j6:[B

    array-length v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x1

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Mz;->j6([BIIIZ)I

    move-result v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Mz;->Hw(I)V

    return v0
.end method

.method public final j6()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Mz;->Zo:I

    return-void
.end method

.method public final j6([BII)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/internal/ads/Mz;->j6(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Mz;->v5:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/Mz;->Zo:I

    sub-int/2addr v1, p3

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public final j6([BIIZ)Z
    .registers 12

    const/4 v6, -0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Mz;->DW([BII)I

    move-result v4

    :goto_0
    if-ge v4, p3, :cond_0

    if-eq v4, v6, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Mz;->j6([BIIIZ)I

    move-result v4

    goto :goto_0

    :cond_0
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/Mz;->Hw(I)V

    if-eq v4, v6, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final read([BII)I
    .registers 10

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Mz;->DW([BII)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Mz;->j6([BIIIZ)I

    move-result v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Mz;->Hw(I)V

    return v0
.end method

.method public final readFully([BII)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/Mz;->j6([BIIZ)Z

    return-void
.end method
