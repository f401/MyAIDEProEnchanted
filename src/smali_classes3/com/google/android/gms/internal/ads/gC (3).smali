.class public final Lcom/google/android/gms/internal/ads/gC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/AB;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/jD;

.field private final EQ:Ljava/lang/Runnable;

.field private final FH:Lcom/google/android/gms/internal/ads/dC;

.field private final Hw:I

.field private J0:Lcom/google/android/gms/internal/ads/BB;

.field private J8:Lcom/google/android/gms/internal/ads/iD;

.field private Mr:Lcom/google/android/gms/internal/ads/wC;

.field private QX:Lcom/google/android/gms/internal/ads/yD;

.field private U2:Landroid/os/Handler;

.field private final VH:Lcom/google/android/gms/internal/ads/AD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/AD<",
            "+",
            "Lcom/google/android/gms/internal/ads/wC;",
            ">;"
        }
    .end annotation
.end field

.field private Ws:Lcom/google/android/gms/internal/ads/tD;

.field private XL:Landroid/net/Uri;

.field private final Zo:Lcom/google/android/gms/internal/ads/eB;

.field private a8:J

.field private aM:J

.field private final gn:Lcom/google/android/gms/internal/ads/lC;

.field private j3:J

.field private final j6:Z

.field private lg:I

.field private final tp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/eC;",
            ">;"
        }
    .end annotation
.end field

.field private final u7:Ljava/lang/Object;

.field private final v5:J

.field private final we:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/jD;Lcom/google/android/gms/internal/ads/AD;Lcom/google/android/gms/internal/ads/dC;IJLandroid/os/Handler;Lcom/google/android/gms/internal/ads/dB;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/gms/internal/ads/jD;",
            "Lcom/google/android/gms/internal/ads/AD<",
            "+",
            "Lcom/google/android/gms/internal/ads/wC;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dC;",
            "IJ",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/internal/ads/dB;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v6, 0x3

    const-wide/16 v7, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/gC;-><init>(Lcom/google/android/gms/internal/ads/wC;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/jD;Lcom/google/android/gms/internal/ads/AD;Lcom/google/android/gms/internal/ads/dC;IJLandroid/os/Handler;Lcom/google/android/gms/internal/ads/dB;)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/jD;Lcom/google/android/gms/internal/ads/dC;IJLandroid/os/Handler;Lcom/google/android/gms/internal/ads/dB;)V
    .registers 19

    new-instance v3, Lcom/google/android/gms/internal/ads/xC;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/xC;-><init>()V

    const/4 v5, 0x3

    const-wide/16 v6, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/gC;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/jD;Lcom/google/android/gms/internal/ads/AD;Lcom/google/android/gms/internal/ads/dC;IJLandroid/os/Handler;Lcom/google/android/gms/internal/ads/dB;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/jD;Lcom/google/android/gms/internal/ads/dC;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/dB;)V
    .registers 15

    const/4 v4, 0x3

    const-wide/16 v5, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/gC;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/jD;Lcom/google/android/gms/internal/ads/dC;IJLandroid/os/Handler;Lcom/google/android/gms/internal/ads/dB;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/wC;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/jD;Lcom/google/android/gms/internal/ads/AD;Lcom/google/android/gms/internal/ads/dC;IJLandroid/os/Handler;Lcom/google/android/gms/internal/ads/dB;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/wC;",
            "Landroid/net/Uri;",
            "Lcom/google/android/gms/internal/ads/jD;",
            "Lcom/google/android/gms/internal/ads/AD<",
            "+",
            "Lcom/google/android/gms/internal/ads/wC;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dC;",
            "IJ",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/internal/ads/dB;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gC;->XL:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gC;->DW:Lcom/google/android/gms/internal/ads/jD;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/gC;->VH:Lcom/google/android/gms/internal/ads/AD;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/gC;->FH:Lcom/google/android/gms/internal/ads/dC;

    iput p6, p0, Lcom/google/android/gms/internal/ads/gC;->Hw:I

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/gC;->v5:J

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/gC;->j6:Z

    new-instance p2, Lcom/google/android/gms/internal/ads/eB;

    invoke-direct {p2, p9, p10}, Lcom/google/android/gms/internal/ads/eB;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/dB;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gC;->Zo:Lcom/google/android/gms/internal/ads/eB;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gC;->u7:Ljava/lang/Object;

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gC;->tp:Landroid/util/SparseArray;

    new-instance p2, Lcom/google/android/gms/internal/ads/lC;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/lC;-><init>(Lcom/google/android/gms/internal/ads/gC;Lcom/google/android/gms/internal/ads/hC;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gC;->gn:Lcom/google/android/gms/internal/ads/lC;

    new-instance p1, Lcom/google/android/gms/internal/ads/hC;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/hC;-><init>(Lcom/google/android/gms/internal/ads/gC;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gC;->EQ:Ljava/lang/Runnable;

    new-instance p1, Lcom/google/android/gms/internal/ads/iC;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/iC;-><init>(Lcom/google/android/gms/internal/ads/gC;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gC;->we:Ljava/lang/Runnable;

    return-void
.end method

.method private final FH()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->u7:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gC;->XL:Landroid/net/Uri;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_18

    new-instance v0, Lcom/google/android/gms/internal/ads/zD;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gC;->J8:Lcom/google/android/gms/internal/ads/iD;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/gC;->VH:Lcom/google/android/gms/internal/ads/AD;

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zD;-><init>(Lcom/google/android/gms/internal/ads/iD;Landroid/net/Uri;ILcom/google/android/gms/internal/ads/AD;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gC;->gn:Lcom/google/android/gms/internal/ads/lC;

    iget v2, p0, Lcom/google/android/gms/internal/ads/gC;->Hw:I

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/gC;->j6(Lcom/google/android/gms/internal/ads/zD;Lcom/google/android/gms/internal/ads/uD;I)V

    return-void

    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private final Hw()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/wC;->Hw:Z

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/wC;->v5:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    const-wide/16 v0, 0x1388

    :cond_11
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/gC;->aM:J

    add-long/2addr v4, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gC;->U2:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/gC;->EQ:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final j6(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/gC;->a8:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/gC;->j6(Z)V

    return-void
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/PC;Lcom/google/android/gms/internal/ads/AD;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/PC;",
            "Lcom/google/android/gms/internal/ads/AD<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zD;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gC;->J8:Lcom/google/android/gms/internal/ads/iD;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/PC;->DW:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x5

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/google/android/gms/internal/ads/zD;-><init>(Lcom/google/android/gms/internal/ads/iD;Landroid/net/Uri;ILcom/google/android/gms/internal/ads/AD;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/oC;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/oC;-><init>(Lcom/google/android/gms/internal/ads/gC;Lcom/google/android/gms/internal/ads/hC;)V

    const/4 p2, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/gC;->j6(Lcom/google/android/gms/internal/ads/zD;Lcom/google/android/gms/internal/ads/uD;I)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/gC;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/gC;->FH()V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/gC;Z)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/gC;->j6(Z)V

    return-void
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/zD;Lcom/google/android/gms/internal/ads/uD;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zD<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/uD<",
            "Lcom/google/android/gms/internal/ads/zD<",
            "TT;>;>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->Ws:Lcom/google/android/gms/internal/ads/tD;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/tD;->j6(Lcom/google/android/gms/internal/ads/wD;Lcom/google/android/gms/internal/ads/uD;I)J

    move-result-wide p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->Zo:Lcom/google/android/gms/internal/ads/eB;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zD;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zD;->DW:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/mD;IJ)V

    return-void
.end method

.method private final j6(Ljava/io/IOException;)V
    .registers 4

    const-string v0, "DashMediaSource"

    const-string v1, "Failed to resolve UtcTiming element."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/gC;->j6(Z)V

    return-void
.end method

.method private final j6(Z)V
    .registers 29

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/gC;->tp:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/gC;->tp:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget v4, v0, Lcom/google/android/gms/internal/ads/gC;->lg:I

    if-lt v3, v4, :cond_26

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/gC;->tp:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/eC;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    iget v6, v0, Lcom/google/android/gms/internal/ads/gC;->lg:I

    sub-int/2addr v3, v6

    invoke-virtual {v4, v5, v3}, Lcom/google/android/gms/internal/ads/eC;->j6(Lcom/google/android/gms/internal/ads/wC;I)V

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_29
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/wC;->j6()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/wC;->DW(I)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/ads/nC;->j6(Lcom/google/android/gms/internal/ads/AC;J)Lcom/google/android/gms/internal/ads/nC;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/wC;->DW(I)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/google/android/gms/internal/ads/nC;->j6(Lcom/google/android/gms/internal/ads/AC;J)Lcom/google/android/gms/internal/ads/nC;

    move-result-object v5

    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/nC;->DW:J

    iget-wide v8, v5, Lcom/google/android/gms/internal/ads/nC;->FH:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/wC;->Hw:Z

    const-wide v10, -0x7fffffffffffffffL  # -4.9E-324

    const-wide/16 v12, 0x0

    if-eqz v4, :cond_c6

    iget-boolean v4, v5, Lcom/google/android/gms/internal/ads/nC;->j6:Z

    if-nez v4, :cond_c6

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/gC;->a8:J

    cmp-long v14, v4, v12

    if-eqz v14, :cond_74

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/gC;->a8:J

    add-long/2addr v4, v14

    goto :goto_78

    :cond_74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_78
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/uy;->DW(J)J

    move-result-wide v4

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    iget-wide v14, v14, Lcom/google/android/gms/internal/ads/wC;->j6:J

    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/uy;->DW(J)J

    move-result-wide v14

    sub-long/2addr v4, v14

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object v14

    iget-wide v14, v14, Lcom/google/android/gms/internal/ads/AC;->DW:J

    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/uy;->DW(J)J

    move-result-wide v14

    sub-long/2addr v4, v14

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/wC;->Zo:J

    cmp-long v14, v4, v10

    if-eqz v14, :cond_c2

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/uy;->DW(J)J

    move-result-wide v4

    sub-long v4, v8, v4

    :goto_a4
    cmp-long v14, v4, v12

    if-gez v14, :cond_b4

    if-lez v2, :cond_b4

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/wC;->DW(I)J

    move-result-wide v14

    add-long/2addr v4, v14

    goto :goto_a4

    :cond_b4
    if-nez v2, :cond_bb

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    goto :goto_c1

    :cond_bb
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/wC;->DW(I)J

    move-result-wide v4

    :goto_c1
    move-wide v6, v4

    :cond_c2
    move-wide/from16 v20, v6

    const/4 v2, 0x1

    goto :goto_c9

    :cond_c6
    move-wide/from16 v20, v6

    const/4 v2, 0x0

    :goto_c9
    sub-long v8, v8, v20

    move-wide/from16 v22, v8

    const/4 v4, 0x0

    :goto_ce
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/wC;->j6()I

    move-result v5

    sub-int/2addr v5, v3

    if-ge v4, v5, :cond_e2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/wC;->DW(I)J

    move-result-wide v5

    add-long v22, v22, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_ce

    :cond_e2
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    iget-boolean v4, v3, Lcom/google/android/gms/internal/ads/wC;->Hw:Z

    if-eqz v4, :cond_10e

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/gC;->v5:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_f9

    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/wC;->VH:J

    cmp-long v3, v4, v10

    if-eqz v3, :cond_f7

    goto :goto_f9

    :cond_f7
    const-wide/16 v4, 0x7530

    :cond_f9
    :goto_f9
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/uy;->DW(J)J

    move-result-wide v3

    sub-long v12, v22, v3

    const-wide/32 v3, 0x4c4b40

    cmp-long v5, v12, v3

    if-gez v5, :cond_10e

    const-wide/16 v5, 0x2

    div-long v5, v22, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    :cond_10e
    move-wide/from16 v24, v12

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/wC;->j6:J

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object v1

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/AC;->DW:J

    invoke-static/range {v20 .. v21}, Lcom/google/android/gms/internal/ads/uy;->j6(J)J

    move-result-wide v8

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    new-instance v3, Lcom/google/android/gms/internal/ads/jC;

    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/wC;->j6:J

    add-long/2addr v4, v6

    add-long v17, v4, v8

    iget v4, v0, Lcom/google/android/gms/internal/ads/gC;->lg:I

    move-object v14, v3

    move-wide v15, v10

    move/from16 v19, v4

    move-object/from16 v26, v1

    invoke-direct/range {v14 .. v26}, Lcom/google/android/gms/internal/ads/jC;-><init>(JJIJJJLcom/google/android/gms/internal/ads/wC;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/gC;->J0:Lcom/google/android/gms/internal/ads/BB;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    invoke-interface {v1, v3, v4}, Lcom/google/android/gms/internal/ads/BB;->j6(Lcom/google/android/gms/internal/ads/Sy;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/gC;->U2:Landroid/os/Handler;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/gC;->we:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v2, :cond_14b

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/gC;->U2:Landroid/os/Handler;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/gC;->we:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_14b
    if-eqz p1, :cond_150

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/gC;->Hw()V

    :cond_150
    return-void
.end method


# virtual methods
.method final DW(Lcom/google/android/gms/internal/ads/zD;JJLjava/io/IOException;)I
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zD<",
            "Ljava/lang/Long;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/gC;->Zo:Lcom/google/android/gms/internal/ads/eB;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zD;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget v4, v1, Lcom/google/android/gms/internal/ads/zD;->DW:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zD;->v5()J

    move-result-wide v8

    const/4 v11, 0x1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v10, p6

    invoke-virtual/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/mD;IJJJLjava/io/IOException;Z)V

    move-object/from16 v1, p6

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/gC;->j6(Ljava/io/IOException;)V

    const/4 v1, 0x2

    return v1
.end method

.method public final DW()V
    .registers 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->J8:Lcom/google/android/gms/internal/ads/iD;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->QX:Lcom/google/android/gms/internal/ads/yD;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gC;->Ws:Lcom/google/android/gms/internal/ads/tD;

    if-eqz v1, :cond_e

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/tD;->j6(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->Ws:Lcom/google/android/gms/internal/ads/tD;

    :cond_e
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/gC;->aM:J

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/gC;->j3:J

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/gC;->U2:Landroid/os/Handler;

    if-eqz v3, :cond_1f

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->U2:Landroid/os/Handler;

    :cond_1f
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/gC;->a8:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->tp:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method final DW(Lcom/google/android/gms/internal/ads/zD;JJ)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zD<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->Zo:Lcom/google/android/gms/internal/ads/eB;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zD;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zD;->DW:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zD;->v5()J

    move-result-wide v7

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/mD;IJJJ)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zD;->Hw()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    sub-long/2addr p4, p2

    invoke-direct {p0, p4, p5}, Lcom/google/android/gms/internal/ads/gC;->j6(J)V

    return-void
.end method

.method final FH(Lcom/google/android/gms/internal/ads/zD;JJ)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zD<",
            "*>;JJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->Zo:Lcom/google/android/gms/internal/ads/eB;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zD;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zD;->DW:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zD;->v5()J

    move-result-wide v7

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/eB;->DW(Lcom/google/android/gms/internal/ads/mD;IJJJ)V

    return-void
.end method

.method final j6(Lcom/google/android/gms/internal/ads/zD;JJLjava/io/IOException;)I
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zD<",
            "Lcom/google/android/gms/internal/ads/wC;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v9, p6

    instance-of v11, v9, Lcom/google/android/gms/internal/ads/My;

    move-object v12, p0

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/gC;->Zo:Lcom/google/android/gms/internal/ads/eB;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zD;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zD;->DW:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zD;->v5()J

    move-result-wide v7

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    move-wide v3, p2

    move-wide/from16 v5, p4

    move v10, v11

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/mD;IJJJLjava/io/IOException;Z)V

    if-eqz v11, :cond_1e

    const/4 v0, 0x3

    return v0

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public final j6(ILcom/google/android/gms/internal/ads/gD;)Lcom/google/android/gms/internal/ads/yB;
    .registers 15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->Zo:Lcom/google/android/gms/internal/ads/eB;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/AC;->DW:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/eB;->j6(J)Lcom/google/android/gms/internal/ads/eB;

    move-result-object v6

    new-instance v11, Lcom/google/android/gms/internal/ads/eC;

    iget v0, p0, Lcom/google/android/gms/internal/ads/gC;->lg:I

    add-int v1, v0, p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/gC;->FH:Lcom/google/android/gms/internal/ads/dC;

    iget v5, p0, Lcom/google/android/gms/internal/ads/gC;->Hw:I

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/gC;->a8:J

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/gC;->QX:Lcom/google/android/gms/internal/ads/yD;

    move-object v0, v11

    move v3, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/eC;-><init>(ILcom/google/android/gms/internal/ads/wC;ILcom/google/android/gms/internal/ads/dC;ILcom/google/android/gms/internal/ads/eB;JLcom/google/android/gms/internal/ads/yD;Lcom/google/android/gms/internal/ads/gD;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->tp:Landroid/util/SparseArray;

    iget v1, v11, Lcom/google/android/gms/internal/ads/eC;->j6:I

    invoke-virtual {v0, v1, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v11
.end method

.method public final j6()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->QX:Lcom/google/android/gms/internal/ads/yD;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/yD;->j6()V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/wy;ZLcom/google/android/gms/internal/ads/BB;)V
    .registers 4

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gC;->J0:Lcom/google/android/gms/internal/ads/BB;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gC;->DW:Lcom/google/android/gms/internal/ads/jD;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/jD;->zzgs()Lcom/google/android/gms/internal/ads/iD;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gC;->J8:Lcom/google/android/gms/internal/ads/iD;

    new-instance p1, Lcom/google/android/gms/internal/ads/tD;

    const-string p2, "Loader:DashMediaSource"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/tD;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gC;->Ws:Lcom/google/android/gms/internal/ads/tD;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gC;->QX:Lcom/google/android/gms/internal/ads/yD;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gC;->U2:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/gC;->FH()V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/yB;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/eC;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eC;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->tp:Landroid/util/SparseArray;

    iget p1, p1, Lcom/google/android/gms/internal/ads/eC;->j6:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method final j6(Lcom/google/android/gms/internal/ads/zD;JJ)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zD<",
            "Lcom/google/android/gms/internal/ads/wC;",
            ">;JJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->Zo:Lcom/google/android/gms/internal/ads/eB;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zD;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zD;->DW:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zD;->v5()J

    move-result-wide v7

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/mD;IJJJ)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zD;->Hw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/wC;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    const/4 v1, 0x0

    goto :goto_20

    :cond_1c
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/wC;->j6()I

    move-result v1

    :goto_20
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/AC;->DW:J

    :goto_26
    if-ge v2, v1, :cond_37

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object v5

    iget-wide v5, v5, Lcom/google/android/gms/internal/ads/AC;->DW:J

    cmp-long v7, v5, v3

    if-gez v7, :cond_37

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_37
    sub-int v3, v1, v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wC;->j6()I

    move-result v4

    if-le v3, v4, :cond_4a

    const-string p1, "DashMediaSource"

    const-string p2, "Out of sync manifest"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/gC;->Hw()V

    return-void

    :cond_4a
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    sub-long p4, p2, p4

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/gC;->aM:J

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/gC;->j3:J

    iget-object p2, v0, Lcom/google/android/gms/internal/ads/wC;->u7:Landroid/net/Uri;

    if-eqz p2, :cond_6c

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/gC;->u7:Ljava/lang/Object;

    monitor-enter p2

    :try_start_59
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zD;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/mD;->j6:Landroid/net/Uri;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/gC;->XL:Landroid/net/Uri;

    if-ne p1, p3, :cond_67

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/wC;->u7:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gC;->XL:Landroid/net/Uri;

    :cond_67
    monitor-exit p2

    goto :goto_6c

    :catchall_69
    move-exception p1

    monitor-exit p2
    :try_end_6b
    .catchall {:try_start_59 .. :try_end_6b} :catchall_69

    throw p1

    :cond_6c
    :goto_6c
    const/4 p1, 0x1

    if-nez v1, :cond_de

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/wC;->gn:Lcom/google/android/gms/internal/ads/PC;

    if-eqz p2, :cond_da

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/PC;->j6:Ljava/lang/String;

    const-string p3, "urn:mpeg:dash:utc:direct:2014"

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_c8

    const-string p3, "urn:mpeg:dash:utc:direct:2012"

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_88

    goto :goto_c8

    :cond_88
    const-string p3, "urn:mpeg:dash:utc:http-iso:2014"

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_bf

    const-string p3, "urn:mpeg:dash:utc:http-iso:2012"

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9a

    goto :goto_bf

    :cond_9a
    const-string p3, "urn:mpeg:dash:utc:http-xsdate:2014"

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_b6

    const-string p3, "urn:mpeg:dash:utc:http-xsdate:2012"

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ab

    goto :goto_b6

    :cond_ab
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unsupported UTC timing scheme"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/gC;->j6(Ljava/io/IOException;)V

    return-void

    :cond_b6
    :goto_b6
    new-instance p1, Lcom/google/android/gms/internal/ads/pC;

    invoke-direct {p1, p4}, Lcom/google/android/gms/internal/ads/pC;-><init>(Lcom/google/android/gms/internal/ads/hC;)V

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/gC;->j6(Lcom/google/android/gms/internal/ads/PC;Lcom/google/android/gms/internal/ads/AD;)V

    return-void

    :cond_bf
    :goto_bf
    new-instance p1, Lcom/google/android/gms/internal/ads/kC;

    invoke-direct {p1, p4}, Lcom/google/android/gms/internal/ads/kC;-><init>(Lcom/google/android/gms/internal/ads/hC;)V

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/gC;->j6(Lcom/google/android/gms/internal/ads/PC;Lcom/google/android/gms/internal/ads/AD;)V

    return-void

    :cond_c8
    :goto_c8
    :try_start_c8
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/PC;->DW:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/TD;->v5(Ljava/lang/String;)J

    move-result-wide p1

    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/gC;->j3:J

    sub-long/2addr p1, p3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/gC;->j6(J)V
    :try_end_d4
    .catch Lcom/google/android/gms/internal/ads/My; {:try_start_c8 .. :try_end_d4} :catch_d5

    goto :goto_e6

    :catch_d5
    move-exception p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/gC;->j6(Ljava/io/IOException;)V

    return-void

    :cond_da
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/gC;->j6(Z)V

    return-void

    :cond_de
    iget p2, p0, Lcom/google/android/gms/internal/ads/gC;->lg:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/google/android/gms/internal/ads/gC;->lg:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/gC;->j6(Z)V

    :goto_e6
    return-void
.end method
