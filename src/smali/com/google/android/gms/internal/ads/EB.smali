.class public final Lcom/google/android/gms/internal/ads/EB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Yz;


# instance fields
.field private final DW:I

.field private EQ:Lcom/google/android/gms/internal/ads/zzfs;

.field private final FH:Lcom/google/android/gms/internal/ads/CB;

.field private final Hw:Lcom/google/android/gms/internal/ads/DB;

.field private J0:J

.field private J8:I

.field private VH:Lcom/google/android/gms/internal/ads/FB;

.field private Ws:Lcom/google/android/gms/internal/ads/GB;

.field private final Zo:Ljava/util/concurrent/atomic/AtomicInteger;

.field private gn:Lcom/google/android/gms/internal/ads/FB;

.field private final j6:Lcom/google/android/gms/internal/ads/gD;

.field private tp:Z

.field private u7:Lcom/google/android/gms/internal/ads/zzfs;

.field private final v5:Lcom/google/android/gms/internal/ads/LD;

.field private we:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/gD;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/EB;->j6:Lcom/google/android/gms/internal/ads/gD;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/gD;->DW()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/EB;->DW:I

    new-instance v0, Lcom/google/android/gms/internal/ads/CB;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/CB;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->FH:Lcom/google/android/gms/internal/ads/CB;

    new-instance v0, Lcom/google/android/gms/internal/ads/DB;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/DB;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->Hw:Lcom/google/android/gms/internal/ads/DB;

    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/LD;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->v5:Lcom/google/android/gms/internal/ads/LD;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->Zo:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v0, p0, Lcom/google/android/gms/internal/ads/EB;->DW:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/EB;->J8:I

    new-instance v1, Lcom/google/android/gms/internal/ads/FB;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/FB;-><init>(JI)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->gn:Lcom/google/android/gms/internal/ads/FB;

    return-void
.end method

.method private final DW(I)I
    .registers 8

    iget v0, p0, Lcom/google/android/gms/internal/ads/EB;->J8:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/EB;->DW:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/EB;->J8:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->gn:Lcom/google/android/gms/internal/ads/FB;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/FB;->FH:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/FB;->v5:Lcom/google/android/gms/internal/ads/FB;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->gn:Lcom/google/android/gms/internal/ads/FB;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->gn:Lcom/google/android/gms/internal/ads/FB;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EB;->j6:Lcom/google/android/gms/internal/ads/gD;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/gD;->j6()Lcom/google/android/gms/internal/ads/fD;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/FB;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/EB;->gn:Lcom/google/android/gms/internal/ads/FB;

    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/FB;->DW:J

    iget v3, p0, Lcom/google/android/gms/internal/ads/EB;->DW:I

    invoke-direct {v2, v4, v5, v3}, Lcom/google/android/gms/internal/ads/FB;-><init>(JI)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/FB;->Hw:Lcom/google/android/gms/internal/ads/fD;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/FB;->v5:Lcom/google/android/gms/internal/ads/FB;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/FB;->FH:Z

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/EB;->DW:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/EB;->J8:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private final DW(J)V
    .registers 8

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/FB;->DW:J

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EB;->j6:Lcom/google/android/gms/internal/ads/gD;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/FB;->Hw:Lcom/google/android/gms/internal/ads/fD;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/gD;->j6(Lcom/google/android/gms/internal/ads/fD;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/FB;->j6()Lcom/google/android/gms/internal/ads/FB;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final gn()V
    .registers 5

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->FH:Lcom/google/android/gms/internal/ads/CB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/CB;->DW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/EB;->j6(Lcom/google/android/gms/internal/ads/FB;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/FB;

    iget v1, p0, Lcom/google/android/gms/internal/ads/EB;->DW:I

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/FB;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->gn:Lcom/google/android/gms/internal/ads/FB;

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/EB;->J0:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/EB;->DW:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/EB;->J8:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->j6:Lcom/google/android/gms/internal/ads/gD;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/gD;->FH()V

    return-void
.end method

.method private final j6(J[BI)V
    .registers 12

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/EB;->DW(J)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-ge v0, p4, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/FB;->j6:J

    sub-long v2, p1, v2

    long-to-int v1, v2

    sub-int v2, p4, v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/EB;->DW:I

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/FB;->Hw:Lcom/google/android/gms/internal/ads/fD;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/fD;->j6:[B

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/fD;->j6(I)I

    move-result v1

    invoke-static {v4, v1, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v4, v2

    add-long/2addr p1, v4

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/FB;->DW:J

    cmp-long v1, p1, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EB;->j6:Lcom/google/android/gms/internal/ads/gD;

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/gD;->j6(Lcom/google/android/gms/internal/ads/fD;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/FB;->j6()Lcom/google/android/gms/internal/ads/FB;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/FB;)V
    .registers 8

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/FB;->FH:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->gn:Lcom/google/android/gms/internal/ads/FB;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/FB;->FH:Z

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/FB;->j6:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/FB;->j6:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/EB;->DW:I

    div-int/2addr v0, v2

    add-int/2addr v0, v1

    new-array v1, v0, [Lcom/google/android/gms/internal/ads/fD;

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/FB;->Hw:Lcom/google/android/gms/internal/ads/fD;

    aput-object v2, v1, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/FB;->j6()Lcom/google/android/gms/internal/ads/FB;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->j6:Lcom/google/android/gms/internal/ads/gD;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/gD;->j6([Lcom/google/android/gms/internal/ads/fD;)V

    goto :goto_0
.end method

.method private final tp()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->Zo:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/EB;->gn()V

    :cond_0
    return-void
.end method

.method private final u7()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->Zo:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final DW()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->FH:Lcom/google/android/gms/internal/ads/CB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/CB;->j6()J

    move-result-wide v0

    return-wide v0
.end method

.method public final FH()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->FH:Lcom/google/android/gms/internal/ads/CB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/CB;->Hw()I

    move-result v0

    return v0
.end method

.method public final Hw()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->FH:Lcom/google/android/gms/internal/ads/CB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/CB;->v5()I

    move-result v0

    return v0
.end method

.method public final VH()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->FH:Lcom/google/android/gms/internal/ads/CB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/CB;->gn()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/EB;->DW(J)V

    :cond_0
    return-void
.end method

.method public final Zo()Lcom/google/android/gms/internal/ads/zzfs;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->FH:Lcom/google/android/gms/internal/ads/CB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/CB;->VH()Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Jy;Lcom/google/android/gms/internal/ads/Ez;ZZJ)I
    .registers 18

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->FH:Lcom/google/android/gms/internal/ads/CB;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/EB;->u7:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/EB;->Hw:Lcom/google/android/gms/internal/ads/DB;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/CB;->j6(Lcom/google/android/gms/internal/ads/Jy;Lcom/google/android/gms/internal/ads/Ez;ZZLcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/DB;)I

    move-result v0

    const/4 v1, -0x5

    if-eq v0, v1, :cond_10

    const/4 v1, -0x4

    if-eq v0, v1, :cond_1

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zz;->FH()Z

    move-result v0

    if-nez v0, :cond_f

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/Ez;->Hw:J

    cmp-long v0, v0, p5

    if-gez v0, :cond_2

    const/high16 v0, -0x80000000

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zz;->DW(I)V

    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/Ez;->v5()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/EB;->Hw:Lcom/google/android/gms/internal/ads/DB;

    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/DB;->DW:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/EB;->v5:Lcom/google/android/gms/internal/ads/LD;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/LD;->j6(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/EB;->v5:Lcom/google/android/gms/internal/ads/LD;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/EB;->j6(J[BI)V

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->v5:Lcom/google/android/gms/internal/ads/LD;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/4 v6, 0x0

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_1
    and-int/lit8 v1, v1, 0x7f

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/Ez;->DW:Lcom/google/android/gms/internal/ads/Az;

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/Az;->j6:[B

    if-nez v5, :cond_3

    const/16 v5, 0x10

    new-array v5, v5, [B

    iput-object v5, v4, Lcom/google/android/gms/internal/ads/Az;->j6:[B

    :cond_3
    iget-object v4, p2, Lcom/google/android/gms/internal/ads/Ez;->DW:Lcom/google/android/gms/internal/ads/Az;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Az;->j6:[B

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/google/android/gms/internal/ads/EB;->j6(J[BI)V

    int-to-long v4, v1

    add-long/2addr v2, v4

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EB;->v5:Lcom/google/android/gms/internal/ads/LD;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/LD;->j6(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EB;->v5:Lcom/google/android/gms/internal/ads/LD;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/4 v4, 0x2

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/google/android/gms/internal/ads/EB;->j6(J[BI)V

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EB;->v5:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v1

    move-wide v4, v2

    :goto_2
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/Ez;->DW:Lcom/google/android/gms/internal/ads/Az;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Az;->Hw:[I

    if-eqz v2, :cond_4

    array-length v3, v2

    if-ge v3, v1, :cond_5

    :cond_4
    new-array v2, v1, [I

    :cond_5
    iget-object v3, p2, Lcom/google/android/gms/internal/ads/Ez;->DW:Lcom/google/android/gms/internal/ads/Az;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Az;->v5:[I

    if-eqz v3, :cond_6

    array-length v8, v3

    if-ge v8, v1, :cond_7

    :cond_6
    new-array v3, v1, [I

    :cond_7
    if-eqz v0, :cond_a

    mul-int/lit8 v0, v1, 0x6

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/EB;->v5:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/LD;->j6(I)V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/EB;->v5:Lcom/google/android/gms/internal/ads/LD;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-direct {p0, v4, v5, v8, v0}, Lcom/google/android/gms/internal/ads/EB;->j6(J[BI)V

    int-to-long v8, v0

    add-long/2addr v4, v8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->v5:Lcom/google/android/gms/internal/ads/LD;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    move v0, v6

    :goto_3
    if-ge v0, v1, :cond_b

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/EB;->v5:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v6

    aput v6, v2, v0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/EB;->v5:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v6

    aput v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    :cond_9
    const/4 v1, 0x1

    move-wide v4, v2

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    const/4 v6, 0x0

    aput v6, v2, v0

    const/4 v0, 0x0

    iget v6, v7, Lcom/google/android/gms/internal/ads/DB;->j6:I

    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/DB;->DW:J

    sub-long v8, v4, v8

    long-to-int v8, v8

    sub-int/2addr v6, v8

    aput v6, v3, v0

    :cond_b
    move-wide v8, v4

    iget-object v6, v7, Lcom/google/android/gms/internal/ads/DB;->Hw:Lcom/google/android/gms/internal/ads/Zz;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/Ez;->DW:Lcom/google/android/gms/internal/ads/Az;

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/Zz;->DW:[B

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Az;->j6:[B

    iget v6, v6, Lcom/google/android/gms/internal/ads/Zz;->j6:I

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/Az;->j6(I[I[I[B[BI)V

    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/DB;->DW:J

    sub-long v2, v8, v0

    long-to-int v2, v2

    int-to-long v4, v2

    add-long/2addr v0, v4

    iput-wide v0, v7, Lcom/google/android/gms/internal/ads/DB;->DW:J

    iget v0, v7, Lcom/google/android/gms/internal/ads/DB;->j6:I

    sub-int/2addr v0, v2

    iput v0, v7, Lcom/google/android/gms/internal/ads/DB;->j6:I

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->Hw:Lcom/google/android/gms/internal/ads/DB;

    iget v0, v0, Lcom/google/android/gms/internal/ads/DB;->j6:I

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/Ez;->Hw(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->Hw:Lcom/google/android/gms/internal/ads/DB;

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/DB;->DW:J

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    iget v0, v0, Lcom/google/android/gms/internal/ads/DB;->j6:I

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/EB;->DW(J)V

    :cond_d
    :goto_4
    if-lez v0, :cond_e

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/FB;->j6:J

    sub-long v4, v2, v4

    long-to-int v4, v4

    iget v5, p0, Lcom/google/android/gms/internal/ads/EB;->DW:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/FB;->Hw:Lcom/google/android/gms/internal/ads/fD;

    iget-object v7, v6, Lcom/google/android/gms/internal/ads/fD;->j6:[B

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/fD;->j6(I)I

    move-result v4

    invoke-virtual {v1, v7, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    int-to-long v8, v5

    add-long/2addr v2, v8

    sub-int/2addr v0, v5

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/FB;->DW:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/EB;->j6:Lcom/google/android/gms/internal/ads/gD;

    invoke-interface {v4, v6}, Lcom/google/android/gms/internal/ads/gD;->j6(Lcom/google/android/gms/internal/ads/fD;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/FB;->j6()Lcom/google/android/gms/internal/ads/FB;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->Hw:Lcom/google/android/gms/internal/ads/DB;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/DB;->FH:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/EB;->DW(J)V

    :cond_f
    const/4 v0, -0x4

    goto/16 :goto_0

    :cond_10
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Jy;->j6:Lcom/google/android/gms/internal/ads/zzfs;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->u7:Lcom/google/android/gms/internal/ads/zzfs;

    const/4 v0, -0x5

    goto/16 :goto_0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Qz;IZ)I
    .registers 10

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/EB;->u7()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/Qz;->j6(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    if-eqz p3, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/EB;->DW(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/EB;->gn:Lcom/google/android/gms/internal/ads/FB;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/FB;->Hw:Lcom/google/android/gms/internal/ads/fD;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/fD;->j6:[B

    iget v4, p0, Lcom/google/android/gms/internal/ads/EB;->J8:I

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/fD;->j6(I)I

    move-result v2

    invoke-interface {p1, v3, v2, v1}, Lcom/google/android/gms/internal/ads/Qz;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v1, v0, :cond_4

    if-eqz p3, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/EB;->tp()V

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/EB;->tp()V

    throw v0

    :cond_4
    :try_start_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/EB;->J8:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/EB;->J8:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/EB;->J0:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/EB;->J0:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/EB;->tp()V

    move v0, v1

    goto :goto_0
.end method

.method public final j6()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->Zo:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/EB;->gn()V

    :cond_0
    return-void
.end method

.method public final j6(I)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->FH:Lcom/google/android/gms/internal/ads/CB;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/CB;->j6(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/EB;->J0:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/EB;->J0:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/FB;->j6:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/EB;->j6(Lcom/google/android/gms/internal/ads/FB;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/FB;

    iget v1, p0, Lcom/google/android/gms/internal/ads/EB;->DW:I

    invoke-direct {v0, v4, v5, v1}, Lcom/google/android/gms/internal/ads/FB;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->gn:Lcom/google/android/gms/internal/ads/FB;

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/FB;->v5:Lcom/google/android/gms/internal/ads/FB;

    :goto_1
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/FB;->j6:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/FB;->v5:Lcom/google/android/gms/internal/ads/FB;

    move-object v0, v1

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/EB;->j6(Lcom/google/android/gms/internal/ads/FB;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->gn:Lcom/google/android/gms/internal/ads/FB;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->gn:Lcom/google/android/gms/internal/ads/FB;

    new-instance v1, Lcom/google/android/gms/internal/ads/FB;

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/FB;->DW:J

    iget v6, p0, Lcom/google/android/gms/internal/ads/EB;->DW:I

    invoke-direct {v1, v2, v3, v6}, Lcom/google/android/gms/internal/ads/FB;-><init>(JI)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/FB;->v5:Lcom/google/android/gms/internal/ads/FB;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->gn:Lcom/google/android/gms/internal/ads/FB;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/FB;->j6:J

    sub-long v0, v4, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/EB;->J8:I

    goto :goto_0
.end method

.method public final j6(J)V
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/EB;->we:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/EB;->we:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/EB;->tp:Z

    :cond_0
    return-void
.end method

.method public final j6(JIIILcom/google/android/gms/internal/ads/Zz;)V
    .registers 20

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/EB;->tp:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/EB;->EQ:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/EB;->j6(Lcom/google/android/gms/internal/ads/zzfs;)V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/EB;->u7()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/EB;->FH:Lcom/google/android/gms/internal/ads/CB;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/ads/CB;->j6(J)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/EB;->we:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/EB;->J0:J

    move/from16 v0, p4

    int-to-long v8, v0

    move/from16 v0, p5

    int-to-long v10, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/EB;->FH:Lcom/google/android/gms/internal/ads/CB;

    add-long v3, p1, v4

    sub-long/2addr v6, v8

    sub-long/2addr v6, v10

    move/from16 v5, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/CB;->j6(JIJILcom/google/android/gms/internal/ads/Zz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/EB;->tp()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/EB;->tp()V

    throw v2
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/GB;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/EB;->Ws:Lcom/google/android/gms/internal/ads/GB;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/LD;I)V
    .registers 9

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/EB;->u7()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    :goto_0
    return-void

    :cond_0
    :goto_1
    if-lez p2, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/EB;->DW(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EB;->gn:Lcom/google/android/gms/internal/ads/FB;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/FB;->Hw:Lcom/google/android/gms/internal/ads/fD;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/fD;->j6:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/EB;->J8:I

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/fD;->j6(I)I

    move-result v1

    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/gms/internal/ads/LD;->j6([BII)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/EB;->J8:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/EB;->J8:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/EB;->J0:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/EB;->J0:J

    sub-int/2addr p2, v0

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/EB;->tp()V

    goto :goto_0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzfs;)V
    .registers 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/EB;->we:J

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EB;->FH:Lcom/google/android/gms/internal/ads/CB;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/CB;->j6(Lcom/google/android/gms/internal/ads/zzfs;)Z

    move-result v1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/EB;->EQ:Lcom/google/android/gms/internal/ads/zzfs;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/EB;->tp:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/EB;->Ws:Lcom/google/android/gms/internal/ads/GB;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/GB;->j6(Lcom/google/android/gms/internal/ads/zzfs;)V

    :cond_0
    return-void

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzfs;->lg:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfs;->j6(J)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method public final j6(Z)V
    .registers 5

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/EB;->Zo:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/EB;->gn()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/EB;->FH:Lcom/google/android/gms/internal/ads/CB;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/CB;->FH()V

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->u7:Lcom/google/android/gms/internal/ads/zzfs;

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final j6(JZ)Z
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->FH:Lcom/google/android/gms/internal/ads/CB;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/CB;->j6(JZ)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/EB;->DW(J)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final v5()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->FH:Lcom/google/android/gms/internal/ads/CB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/CB;->Zo()Z

    move-result v0

    return v0
.end method
