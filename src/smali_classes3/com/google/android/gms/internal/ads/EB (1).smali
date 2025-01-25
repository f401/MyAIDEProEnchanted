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
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/EB;->j6:Lcom/google/android/gms/internal/ads/gD;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/gD;->DW()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/EB;->DW:I

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

    iput p1, p0, Lcom/google/android/gms/internal/ads/EB;->J8:I

    new-instance v0, Lcom/google/android/gms/internal/ads/FB;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/FB;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->gn:Lcom/google/android/gms/internal/ads/FB;

    return-void
.end method

.method private final DW(I)I
    .registers 8

    iget v0, p0, Lcom/google/android/gms/internal/ads/EB;->J8:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/EB;->DW:I

    if-ne v0, v1, :cond_2d

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/EB;->J8:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->gn:Lcom/google/android/gms/internal/ads/FB;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/FB;->FH:Z

    if-eqz v1, :cond_13

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/FB;->v5:Lcom/google/android/gms/internal/ads/FB;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->gn:Lcom/google/android/gms/internal/ads/FB;

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->gn:Lcom/google/android/gms/internal/ads/FB;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EB;->j6:Lcom/google/android/gms/internal/ads/gD;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/gD;->j6()Lcom/google/android/gms/internal/ads/fD;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/FB;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/EB;->gn:Lcom/google/android/gms/internal/ads/FB;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/FB;->DW:J

    iget v5, p0, Lcom/google/android/gms/internal/ads/EB;->DW:I

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/FB;-><init>(JI)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/FB;->Hw:Lcom/google/android/gms/internal/ads/fD;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/FB;->v5:Lcom/google/android/gms/internal/ads/FB;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/FB;->FH:Z

    :cond_2d
    iget v0, p0, Lcom/google/android/gms/internal/ads/EB;->DW:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/EB;->J8:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private final DW(J)V
    .registers 7

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/FB;->DW:J

    cmp-long v3, p1, v1

    if-ltz v3, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EB;->j6:Lcom/google/android/gms/internal/ads/gD;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/FB;->Hw:Lcom/google/android/gms/internal/ads/fD;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/gD;->j6(Lcom/google/android/gms/internal/ads/fD;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/FB;->j6()Lcom/google/android/gms/internal/ads/FB;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    goto :goto_0

    :cond_18
    return-void
.end method

.method private final gn()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->FH:Lcom/google/android/gms/internal/ads/CB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/CB;->DW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/EB;->j6(Lcom/google/android/gms/internal/ads/FB;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/FB;

    iget v1, p0, Lcom/google/android/gms/internal/ads/EB;->DW:I

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/FB;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->gn:Lcom/google/android/gms/internal/ads/FB;

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/EB;->J0:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/EB;->DW:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/EB;->J8:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->j6:Lcom/google/android/gms/internal/ads/gD;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/gD;->FH()V

    return-void
.end method

.method private final j6(J[BI)V
    .registers 11

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/EB;->DW(J)V

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-ge v0, p4, :cond_3c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/FB;->j6:J

    sub-long v1, p1, v1

    long-to-int v2, v1

    sub-int v1, p4, v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/EB;->DW:I

    sub-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/FB;->Hw:Lcom/google/android/gms/internal/ads/fD;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/fD;->j6:[B

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/fD;->j6(I)I

    move-result v2

    invoke-static {v4, v2, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v4, v1

    add-long/2addr p1, v4

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/FB;->DW:J

    cmp-long v4, p1, v1

    if-nez v4, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EB;->j6:Lcom/google/android/gms/internal/ads/gD;

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/gD;->j6(Lcom/google/android/gms/internal/ads/fD;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/FB;->j6()Lcom/google/android/gms/internal/ads/FB;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    goto :goto_4

    :cond_3c
    return-void
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/FB;)V
    .registers 8

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/FB;->FH:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->gn:Lcom/google/android/gms/internal/ads/FB;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/FB;->FH:Z

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/FB;->j6:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/FB;->j6:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/EB;->DW:I

    div-int/2addr v0, v2

    add-int/2addr v1, v0

    new-array v0, v1, [Lcom/google/android/gms/internal/ads/fD;

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_23

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/FB;->Hw:Lcom/google/android/gms/internal/ads/fD;

    aput-object v3, v0, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/FB;->j6()Lcom/google/android/gms/internal/ads/FB;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/EB;->j6:Lcom/google/android/gms/internal/ads/gD;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/gD;->j6([Lcom/google/android/gms/internal/ads/fD;)V

    return-void
.end method

.method private final tp()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->Zo:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/EB;->gn()V

    :cond_d
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
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->FH:Lcom/google/android/gms/internal/ads/CB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/CB;->gn()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/EB;->DW(J)V

    :cond_f
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
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/EB;->FH:Lcom/google/android/gms/internal/ads/CB;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/EB;->u7:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/EB;->Hw:Lcom/google/android/gms/internal/ads/DB;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/CB;->j6(Lcom/google/android/gms/internal/ads/Jy;Lcom/google/android/gms/internal/ads/Ez;ZZLcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/DB;)I

    move-result v1

    const/4 v2, -0x5

    if-eq v1, v2, :cond_14d

    const/4 v2, -0x4

    if-eq v1, v2, :cond_26

    const/4 v2, -0x3

    if-ne v1, v2, :cond_20

    return v2

    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_26
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zz;->FH()Z

    move-result v1

    if-nez v1, :cond_14c

    iget-wide v3, v8, Lcom/google/android/gms/internal/ads/Ez;->Hw:J

    cmp-long v1, v3, p5

    if-gez v1, :cond_37

    const/high16 v1, -0x80000000

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zz;->DW(I)V

    :cond_37
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/Ez;->v5()Z

    move-result v1

    if-eqz v1, :cond_fd

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/EB;->Hw:Lcom/google/android/gms/internal/ads/DB;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/DB;->DW:J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/EB;->v5:Lcom/google/android/gms/internal/ads/LD;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/LD;->j6(I)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/EB;->v5:Lcom/google/android/gms/internal/ads/LD;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/EB;->j6(J[BI)V

    const-wide/16 v9, 0x1

    add-long/2addr v3, v9

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/EB;->v5:Lcom/google/android/gms/internal/ads/LD;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/4 v7, 0x0

    aget-byte v5, v5, v7

    and-int/lit16 v9, v5, 0x80

    if-eqz v9, :cond_5e

    const/4 v9, 0x1

    goto :goto_5f

    :cond_5e
    const/4 v9, 0x0

    :goto_5f
    and-int/lit8 v5, v5, 0x7f

    iget-object v10, v8, Lcom/google/android/gms/internal/ads/Ez;->DW:Lcom/google/android/gms/internal/ads/Az;

    iget-object v11, v10, Lcom/google/android/gms/internal/ads/Az;->j6:[B

    if-nez v11, :cond_6d

    const/16 v11, 0x10

    new-array v11, v11, [B

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/Az;->j6:[B

    :cond_6d
    iget-object v10, v8, Lcom/google/android/gms/internal/ads/Ez;->DW:Lcom/google/android/gms/internal/ads/Az;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/Az;->j6:[B

    invoke-direct {v0, v3, v4, v10, v5}, Lcom/google/android/gms/internal/ads/EB;->j6(J[BI)V

    int-to-long v10, v5

    add-long/2addr v3, v10

    if-eqz v9, :cond_90

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/EB;->v5:Lcom/google/android/gms/internal/ads/LD;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/LD;->j6(I)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/EB;->v5:Lcom/google/android/gms/internal/ads/LD;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/EB;->j6(J[BI)V

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/EB;->v5:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v6

    move v11, v6

    goto :goto_91

    :cond_90
    const/4 v11, 0x1

    :goto_91
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/Ez;->DW:Lcom/google/android/gms/internal/ads/Az;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/Az;->Hw:[I

    if-eqz v5, :cond_9a

    array-length v6, v5

    if-ge v6, v11, :cond_9c

    :cond_9a
    new-array v5, v11, [I

    :cond_9c
    move-object v12, v5

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/Ez;->DW:Lcom/google/android/gms/internal/ads/Az;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/Az;->v5:[I

    if-eqz v5, :cond_a6

    array-length v6, v5

    if-ge v6, v11, :cond_a8

    :cond_a6
    new-array v5, v11, [I

    :cond_a8
    move-object v13, v5

    if-eqz v9, :cond_d5

    mul-int/lit8 v5, v11, 0x6

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/EB;->v5:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/LD;->j6(I)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/EB;->v5:Lcom/google/android/gms/internal/ads/LD;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-direct {v0, v3, v4, v6, v5}, Lcom/google/android/gms/internal/ads/EB;->j6(J[BI)V

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/EB;->v5:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    :goto_c0
    if-ge v7, v11, :cond_e1

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/EB;->v5:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v5

    aput v5, v12, v7

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/EB;->v5:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v5

    aput v5, v13, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_c0

    :cond_d5
    aput v7, v12, v7

    iget v5, v1, Lcom/google/android/gms/internal/ads/DB;->j6:I

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/DB;->DW:J

    sub-long v9, v3, v9

    long-to-int v6, v9

    sub-int/2addr v5, v6

    aput v5, v13, v7

    :cond_e1
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/DB;->Hw:Lcom/google/android/gms/internal/ads/Zz;

    iget-object v10, v8, Lcom/google/android/gms/internal/ads/Ez;->DW:Lcom/google/android/gms/internal/ads/Az;

    iget-object v14, v5, Lcom/google/android/gms/internal/ads/Zz;->DW:[B

    iget-object v15, v10, Lcom/google/android/gms/internal/ads/Az;->j6:[B

    iget v5, v5, Lcom/google/android/gms/internal/ads/Zz;->j6:I

    move/from16 v16, v5

    invoke-virtual/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/Az;->j6(I[I[I[B[BI)V

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/DB;->DW:J

    sub-long/2addr v3, v5

    long-to-int v4, v3

    int-to-long v9, v4

    add-long/2addr v5, v9

    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/DB;->DW:J

    iget v3, v1, Lcom/google/android/gms/internal/ads/DB;->j6:I

    sub-int/2addr v3, v4

    iput v3, v1, Lcom/google/android/gms/internal/ads/DB;->j6:I

    :cond_fd
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/EB;->Hw:Lcom/google/android/gms/internal/ads/DB;

    iget v1, v1, Lcom/google/android/gms/internal/ads/DB;->j6:I

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/Ez;->Hw(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/EB;->Hw:Lcom/google/android/gms/internal/ads/DB;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/DB;->DW:J

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/Ez;->FH:Ljava/nio/ByteBuffer;

    iget v1, v1, Lcom/google/android/gms/internal/ads/DB;->j6:I

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/EB;->DW(J)V

    :cond_10f
    :goto_10f
    if-lez v1, :cond_145

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/FB;->j6:J

    sub-long v6, v3, v6

    long-to-int v7, v6

    iget v6, v0, Lcom/google/android/gms/internal/ads/EB;->DW:I

    sub-int/2addr v6, v7

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/FB;->Hw:Lcom/google/android/gms/internal/ads/fD;

    iget-object v9, v8, Lcom/google/android/gms/internal/ads/fD;->j6:[B

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/fD;->j6(I)I

    move-result v7

    invoke-virtual {v5, v9, v7, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    int-to-long v9, v6

    add-long/2addr v3, v9

    sub-int/2addr v1, v6

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/FB;->DW:J

    cmp-long v9, v3, v6

    if-nez v9, :cond_10f

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/EB;->j6:Lcom/google/android/gms/internal/ads/gD;

    invoke-interface {v6, v8}, Lcom/google/android/gms/internal/ads/gD;->j6(Lcom/google/android/gms/internal/ads/fD;)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/FB;->j6()Lcom/google/android/gms/internal/ads/FB;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    goto :goto_10f

    :cond_145
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/EB;->Hw:Lcom/google/android/gms/internal/ads/DB;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/DB;->FH:J

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/EB;->DW(J)V

    :cond_14c
    return v2

    :cond_14d
    move-object/from16 v1, p1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Jy;->j6:Lcom/google/android/gms/internal/ads/zzfs;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/EB;->u7:Lcom/google/android/gms/internal/ads/zzfs;

    return v2
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Qz;IZ)I
    .registers 8

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/EB;->u7()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_17

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/Qz;->j6(I)I

    move-result p1

    if-ne p1, v1, :cond_16

    if-eqz p3, :cond_10

    return v1

    :cond_10
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_16
    return p1

    :cond_17
    :try_start_17
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/EB;->DW(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->gn:Lcom/google/android/gms/internal/ads/FB;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/FB;->Hw:Lcom/google/android/gms/internal/ads/fD;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/fD;->j6:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/EB;->J8:I

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/fD;->j6(I)I

    move-result v0

    invoke-interface {p1, v2, v0, p2}, Lcom/google/android/gms/internal/ads/Qz;->read([BII)I

    move-result p1
    :try_end_2b
    .catchall {:try_start_17 .. :try_end_2b} :catchall_48

    if-ne p1, v1, :cond_39

    if-eqz p3, :cond_33

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/EB;->tp()V

    return v1

    :cond_33
    :try_start_33
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_39
    iget p2, p0, Lcom/google/android/gms/internal/ads/EB;->J8:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/EB;->J8:I

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/EB;->J0:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/EB;->J0:J
    :try_end_44
    .catchall {:try_start_33 .. :try_end_44} :catchall_48

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/EB;->tp()V

    return p1

    :catchall_48
    move-exception p1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/EB;->tp()V

    throw p1
.end method

.method public final j6()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->Zo:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/EB;->gn()V

    :cond_c
    return-void
.end method

.method public final j6(I)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->FH:Lcom/google/android/gms/internal/ads/CB;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/CB;->j6(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/EB;->J0:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/FB;->j6:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1f

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/EB;->j6(Lcom/google/android/gms/internal/ads/FB;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/FB;

    iget v2, p0, Lcom/google/android/gms/internal/ads/EB;->DW:I

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/FB;-><init>(JI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/EB;->VH:Lcom/google/android/gms/internal/ads/FB;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/EB;->gn:Lcom/google/android/gms/internal/ads/FB;

    return-void

    :cond_1f
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/FB;->v5:Lcom/google/android/gms/internal/ads/FB;

    :goto_21
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/FB;->j6:J

    cmp-long v5, v0, v3

    if-lez v5, :cond_2d

    iget-object p1, v2, Lcom/google/android/gms/internal/ads/FB;->v5:Lcom/google/android/gms/internal/ads/FB;

    move-object v6, v2

    move-object v2, p1

    move-object p1, v6

    goto :goto_21

    :cond_2d
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/EB;->j6(Lcom/google/android/gms/internal/ads/FB;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/EB;->gn:Lcom/google/android/gms/internal/ads/FB;

    new-instance v2, Lcom/google/android/gms/internal/ads/FB;

    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/FB;->DW:J

    iget v5, p0, Lcom/google/android/gms/internal/ads/EB;->DW:I

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/FB;-><init>(JI)V

    iput-object v2, p1, Lcom/google/android/gms/internal/ads/FB;->v5:Lcom/google/android/gms/internal/ads/FB;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/EB;->gn:Lcom/google/android/gms/internal/ads/FB;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/FB;->j6:J

    sub-long/2addr v0, v2

    long-to-int p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/EB;->J8:I

    return-void
.end method

.method public final j6(J)V
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/EB;->we:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_b

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/EB;->we:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/EB;->tp:Z

    :cond_b
    return-void
.end method

.method public final j6(JIIILcom/google/android/gms/internal/ads/Zz;)V
    .registers 23

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/EB;->tp:Z

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/EB;->EQ:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/EB;->j6(Lcom/google/android/gms/internal/ads/zzfs;)V

    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/EB;->u7()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/EB;->FH:Lcom/google/android/gms/internal/ads/CB;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/CB;->j6(J)V

    return-void

    :cond_19
    :try_start_19
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/EB;->we:J

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/EB;->J0:J

    move/from16 v0, p4

    int-to-long v8, v0

    move/from16 v10, p5

    int-to-long v10, v10

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/EB;->FH:Lcom/google/android/gms/internal/ads/CB;

    add-long/2addr v2, v4

    sub-long/2addr v6, v8

    sub-long v4, v6, v10

    move-object v8, v12

    move-wide v9, v2

    move/from16 v11, p3

    move-wide v12, v4

    move/from16 v14, p4

    move-object/from16 v15, p6

    invoke-virtual/range {v8 .. v15}, Lcom/google/android/gms/internal/ads/CB;->j6(JIJILcom/google/android/gms/internal/ads/Zz;)V
    :try_end_35
    .catchall {:try_start_19 .. :try_end_35} :catchall_39

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/EB;->tp()V

    return-void

    :catchall_39
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/EB;->tp()V

    throw v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/GB;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/EB;->Ws:Lcom/google/android/gms/internal/ads/GB;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/LD;I)V
    .registers 8

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/EB;->u7()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    return-void

    :cond_a
    :goto_a
    if-lez p2, :cond_2c

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

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/EB;->J0:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/EB;->J0:J

    sub-int/2addr p2, v0

    goto :goto_a

    :cond_2c
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/EB;->tp()V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzfs;)V
    .registers 9

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/EB;->we:J

    if-nez p1, :cond_6

    const/4 v0, 0x0

    goto :goto_1e

    :cond_6
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1d

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzfs;->lg:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1d

    add-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfs;->j6(J)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v0

    goto :goto_1e

    :cond_1d
    move-object v0, p1

    :goto_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/EB;->FH:Lcom/google/android/gms/internal/ads/CB;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/CB;->j6(Lcom/google/android/gms/internal/ads/zzfs;)Z

    move-result v1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/EB;->EQ:Lcom/google/android/gms/internal/ads/zzfs;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/EB;->tp:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/EB;->Ws:Lcom/google/android/gms/internal/ads/GB;

    if-eqz p1, :cond_32

    if-eqz v1, :cond_32

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/GB;->j6(Lcom/google/android/gms/internal/ads/zzfs;)V

    :cond_32
    return-void
.end method

.method public final j6(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->Zo:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    goto :goto_8

    :cond_7
    const/4 p1, 0x2

    :goto_8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/EB;->gn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->FH:Lcom/google/android/gms/internal/ads/CB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/CB;->FH()V

    if-ne p1, v1, :cond_19

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/EB;->u7:Lcom/google/android/gms/internal/ads/zzfs;

    :cond_19
    return-void
.end method

.method public final j6(JZ)Z
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->FH:Lcom/google/android/gms/internal/ads/CB;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/CB;->j6(JZ)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long p3, p1, v0

    if-nez p3, :cond_e

    const/4 p1, 0x0

    return p1

    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/EB;->DW(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public final v5()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/EB;->FH:Lcom/google/android/gms/internal/ads/CB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/CB;->Zo()Z

    move-result v0

    return v0
.end method
