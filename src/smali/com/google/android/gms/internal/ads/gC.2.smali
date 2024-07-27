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
            "Lcom/google/android/gms/internal/ads/AD",
            "<+",
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
            "Landroid/util/SparseArray",
            "<",
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
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/gms/internal/ads/jD;",
            "Lcom/google/android/gms/internal/ads/AD",
            "<+",
            "Lcom/google/android/gms/internal/ads/wC;",
            ">;",
            "Lcom/google/android/gms/internal/ads/dC;",
            "IJ",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/internal/ads/dB;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v7, 0x3

    const-wide/16 v8, -0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/gC;-><init>(Lcom/google/android/gms/internal/ads/wC;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/jD;Lcom/google/android/gms/internal/ads/AD;Lcom/google/android/gms/internal/ads/dC;IJLandroid/os/Handler;Lcom/google/android/gms/internal/ads/dB;)V

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
    .registers 16

    const/4 v5, 0x3

    const-wide/16 v6, -0x1

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/gC;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/jD;Lcom/google/android/gms/internal/ads/dC;IJLandroid/os/Handler;Lcom/google/android/gms/internal/ads/dB;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/wC;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/jD;Lcom/google/android/gms/internal/ads/AD;Lcom/google/android/gms/internal/ads/dC;IJLandroid/os/Handler;Lcom/google/android/gms/internal/ads/dB;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/wC;",
            "Landroid/net/Uri;",
            "Lcom/google/android/gms/internal/ads/jD;",
            "Lcom/google/android/gms/internal/ads/AD",
            "<+",
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gC;->XL:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gC;->DW:Lcom/google/android/gms/internal/ads/jD;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/gC;->VH:Lcom/google/android/gms/internal/ads/AD;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/gC;->FH:Lcom/google/android/gms/internal/ads/dC;

    iput p6, p0, Lcom/google/android/gms/internal/ads/gC;->Hw:I

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/gC;->v5:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/gC;->j6:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/eB;

    invoke-direct {v0, p9, p10}, Lcom/google/android/gms/internal/ads/eB;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/dB;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->Zo:Lcom/google/android/gms/internal/ads/eB;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->u7:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->tp:Landroid/util/SparseArray;

    new-instance v0, Lcom/google/android/gms/internal/ads/lC;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/lC;-><init>(Lcom/google/android/gms/internal/ads/gC;Lcom/google/android/gms/internal/ads/hC;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->gn:Lcom/google/android/gms/internal/ads/lC;

    new-instance v0, Lcom/google/android/gms/internal/ads/hC;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/hC;-><init>(Lcom/google/android/gms/internal/ads/gC;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->EQ:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/gms/internal/ads/iC;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/iC;-><init>(Lcom/google/android/gms/internal/ads/gC;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->we:Ljava/lang/Runnable;

    return-void
.end method

.method private final FH()V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gC;->u7:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->XL:Landroid/net/Uri;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zD;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gC;->J8:Lcom/google/android/gms/internal/ads/iD;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/gC;->VH:Lcom/google/android/gms/internal/ads/AD;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zD;-><init>(Lcom/google/android/gms/internal/ads/iD;Landroid/net/Uri;ILcom/google/android/gms/internal/ads/AD;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->gn:Lcom/google/android/gms/internal/ads/lC;

    iget v2, p0, Lcom/google/android/gms/internal/ads/gC;->Hw:I

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/internal/ads/gC;->j6(Lcom/google/android/gms/internal/ads/zD;Lcom/google/android/gms/internal/ads/uD;I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final Hw()V
    .registers 7

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/wC;->Hw:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/wC;->v5:J

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    const-wide/16 v0, 0x1388

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/gC;->aM:J

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gC;->U2:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/gC;->EQ:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private final j6(J)V
    .registers 4

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/gC;->a8:J

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/gC;->j6(Z)V

    return-void
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/PC;Lcom/google/android/gms/internal/ads/AD;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/PC;",
            "Lcom/google/android/gms/internal/ads/AD",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zD;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gC;->J8:Lcom/google/android/gms/internal/ads/iD;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/PC;->DW:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/google/android/gms/internal/ads/zD;-><init>(Lcom/google/android/gms/internal/ads/iD;Landroid/net/Uri;ILcom/google/android/gms/internal/ads/AD;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/oC;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/oC;-><init>(Lcom/google/android/gms/internal/ads/gC;Lcom/google/android/gms/internal/ads/hC;)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/gC;->j6(Lcom/google/android/gms/internal/ads/zD;Lcom/google/android/gms/internal/ads/uD;I)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/gC;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/gC;->FH()V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/gC;Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/gC;->j6(Z)V

    return-void
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/zD;Lcom/google/android/gms/internal/ads/uD;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zD",
            "<TT;>;",
            "Lcom/google/android/gms/internal/ads/uD",
            "<",
            "Lcom/google/android/gms/internal/ads/zD",
            "<TT;>;>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->Ws:Lcom/google/android/gms/internal/ads/tD;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/tD;->j6(Lcom/google/android/gms/internal/ads/wD;Lcom/google/android/gms/internal/ads/uD;I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gC;->Zo:Lcom/google/android/gms/internal/ads/eB;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zD;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget v4, p1, Lcom/google/android/gms/internal/ads/zD;->DW:I

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/mD;IJ)V

    return-void
.end method

.method private final j6(Ljava/io/IOException;)V
    .registers 4

    const-string v0, "DashMediaSource"

    const-string v1, "Failed to resolve UtcTiming element."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/gC;->j6(Z)V

    return-void
.end method

.method private final j6(Z)V
    .registers 22

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/gC;->tp:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/gC;->tp:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gms/internal/ads/gC;->lg:I

    if-lt v4, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/gC;->tp:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/eC;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/ads/gC;->lg:I

    sub-int/2addr v4, v6

    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/internal/ads/eC;->j6(Lcom/google/android/gms/internal/ads/wC;I)V

    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/wC;->j6()I

    move-result v2

    add-int/lit8 v8, v2, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/wC;->DW(I)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/google/android/gms/internal/ads/nC;->j6(Lcom/google/android/gms/internal/ads/AC;J)Lcom/google/android/gms/internal/ads/nC;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/wC;->DW(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/nC;->j6(Lcom/google/android/gms/internal/ads/AC;J)Lcom/google/android/gms/internal/ads/nC;

    move-result-object v3

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/nC;->DW:J

    iget-wide v6, v3, Lcom/google/android/gms/internal/ads/nC;->FH:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/wC;->Hw:Z

    const-wide/16 v12, 0x0

    if-eqz v2, :cond_5

    iget-boolean v2, v3, Lcom/google/android/gms/internal/ads/nC;->j6:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/gC;->a8:J

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/gC;->a8:J

    add-long/2addr v2, v10

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/uy;->DW(J)J

    move-result-wide v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    iget-wide v10, v9, Lcom/google/android/gms/internal/ads/wC;->j6:J

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/uy;->DW(J)J

    move-result-wide v10

    sub-long/2addr v2, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object v9

    iget-wide v10, v9, Lcom/google/android/gms/internal/ads/AC;->DW:J

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/uy;->DW(J)J

    move-result-wide v10

    sub-long/2addr v2, v10

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/wC;->Zo:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v2, v10

    if-eqz v9, :cond_c

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/uy;->DW(J)J

    move-result-wide v2

    sub-long v2, v6, v2

    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-gez v9, :cond_3

    if-lez v8, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/wC;->DW(I)J

    move-result-wide v10

    add-long/2addr v2, v10

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/uy;->DW(J)J

    move-result-wide v2

    goto :goto_1

    :cond_3
    if-nez v8, :cond_4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_3
    const/4 v4, 0x1

    move-wide v8, v2

    move v15, v4

    :goto_4
    sub-long v10, v6, v8

    const/4 v2, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/wC;->j6()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/wC;->DW(I)J

    move-result-wide v4

    add-long/2addr v10, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/wC;->DW(I)J

    move-result-wide v2

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    move-wide v8, v4

    move v15, v2

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    iget-boolean v2, v4, Lcom/google/android/gms/internal/ads/wC;->Hw:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/gC;->v5:J

    const-wide/16 v6, -0x1

    cmp-long v5, v2, v6

    if-nez v5, :cond_7

    iget-wide v2, v4, Lcom/google/android/gms/internal/ads/wC;->VH:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-eqz v4, :cond_b

    :cond_7
    :goto_6
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/uy;->DW(J)J

    move-result-wide v2

    sub-long v12, v10, v2

    const-wide/32 v2, 0x4c4b40

    cmp-long v2, v12, v2

    if-gez v2, :cond_8

    const-wide/32 v2, 0x4c4b40

    const-wide/16 v4, 0x2

    div-long v4, v10, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    iget-wide v6, v2, Lcom/google/android/gms/internal/ads/wC;->j6:J

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object v2

    iget-wide v0, v2, Lcom/google/android/gms/internal/ads/AC;->DW:J

    move-wide/from16 v16, v0

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/uy;->j6(J)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    new-instance v2, Lcom/google/android/gms/internal/ads/jC;

    iget-wide v3, v14, Lcom/google/android/gms/internal/ads/wC;->j6:J

    add-long v6, v6, v16

    add-long v5, v6, v18

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/gms/internal/ads/gC;->lg:I

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/jC;-><init>(JJIJJJLcom/google/android/gms/internal/ads/wC;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/gC;->J0:Lcom/google/android/gms/internal/ads/BB;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    invoke-interface {v3, v2, v4}, Lcom/google/android/gms/internal/ads/BB;->j6(Lcom/google/android/gms/internal/ads/Sy;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/gC;->U2:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/gC;->we:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/gC;->U2:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/gC;->we:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    if-eqz p1, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/gC;->Hw()V

    :cond_a
    return-void

    :cond_b
    const-wide/16 v2, 0x7530

    goto :goto_6

    :cond_c
    move-wide v2, v4

    goto/16 :goto_3
.end method


# virtual methods
.method final DW(Lcom/google/android/gms/internal/ads/zD;JJLjava/io/IOException;)I
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zD",
            "<",
            "Ljava/lang/Long;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/gC;->Zo:Lcom/google/android/gms/internal/ads/eB;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zD;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget v5, p1, Lcom/google/android/gms/internal/ads/zD;->DW:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zD;->v5()J

    move-result-wide v10

    const/4 v13, 0x1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/mD;IJJJLjava/io/IOException;Z)V

    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/gC;->j6(Ljava/io/IOException;)V

    const/4 v2, 0x2

    return v2
.end method

.method public final DW()V
    .registers 5

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/gC;->J8:Lcom/google/android/gms/internal/ads/iD;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/gC;->QX:Lcom/google/android/gms/internal/ads/yD;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->Ws:Lcom/google/android/gms/internal/ads/tD;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/tD;->j6(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/gC;->Ws:Lcom/google/android/gms/internal/ads/tD;

    :cond_0
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/gC;->aM:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/gC;->j3:J

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->U2:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/gC;->U2:Landroid/os/Handler;

    :cond_1
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/gC;->a8:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->tp:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method final DW(Lcom/google/android/gms/internal/ads/zD;JJ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zD",
            "<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gC;->Zo:Lcom/google/android/gms/internal/ads/eB;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zD;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget v3, p1, Lcom/google/android/gms/internal/ads/zD;->DW:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zD;->v5()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/mD;IJJJ)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zD;->Hw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, p2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/gC;->j6(J)V

    return-void
.end method

.method final FH(Lcom/google/android/gms/internal/ads/zD;JJ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zD",
            "<*>;JJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gC;->Zo:Lcom/google/android/gms/internal/ads/eB;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zD;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget v3, p1, Lcom/google/android/gms/internal/ads/zD;->DW:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zD;->v5()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/eB;->DW(Lcom/google/android/gms/internal/ads/mD;IJJJ)V

    return-void
.end method

.method final j6(Lcom/google/android/gms/internal/ads/zD;JJLjava/io/IOException;)I
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zD",
            "<",
            "Lcom/google/android/gms/internal/ads/wC;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p6

    instance-of v13, v0, Lcom/google/android/gms/internal/ads/My;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/gC;->Zo:Lcom/google/android/gms/internal/ads/eB;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zD;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget v5, p1, Lcom/google/android/gms/internal/ads/zD;->DW:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zD;->v5()J

    move-result-wide v10

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v12, p6

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/mD;IJJJLjava/io/IOException;Z)V

    if-eqz v13, :cond_0

    const/4 v2, 0x3

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final j6(ILcom/google/android/gms/internal/ads/gD;)Lcom/google/android/gms/internal/ads/yB;
    .registers 15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->Zo:Lcom/google/android/gms/internal/ads/eB;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object v1

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/AC;->DW:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/eB;->j6(J)Lcom/google/android/gms/internal/ads/eB;

    move-result-object v7

    new-instance v1, Lcom/google/android/gms/internal/ads/eC;

    iget v0, p0, Lcom/google/android/gms/internal/ads/gC;->lg:I

    add-int v2, v0, p1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/gC;->FH:Lcom/google/android/gms/internal/ads/dC;

    iget v6, p0, Lcom/google/android/gms/internal/ads/gC;->Hw:I

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/gC;->a8:J

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/gC;->QX:Lcom/google/android/gms/internal/ads/yD;

    move v4, p1

    move-object v11, p2

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/eC;-><init>(ILcom/google/android/gms/internal/ads/wC;ILcom/google/android/gms/internal/ads/dC;ILcom/google/android/gms/internal/ads/eB;JLcom/google/android/gms/internal/ads/yD;Lcom/google/android/gms/internal/ads/gD;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->tp:Landroid/util/SparseArray;

    iget v2, v1, Lcom/google/android/gms/internal/ads/eC;->j6:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method public final j6()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->QX:Lcom/google/android/gms/internal/ads/yD;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/yD;->j6()V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/wy;ZLcom/google/android/gms/internal/ads/BB;)V
    .registers 6

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gC;->J0:Lcom/google/android/gms/internal/ads/BB;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->DW:Lcom/google/android/gms/internal/ads/jD;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/jD;->zzgs()Lcom/google/android/gms/internal/ads/iD;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->J8:Lcom/google/android/gms/internal/ads/iD;

    new-instance v0, Lcom/google/android/gms/internal/ads/tD;

    const-string v1, "Loader:DashMediaSource"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/tD;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->Ws:Lcom/google/android/gms/internal/ads/tD;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->Ws:Lcom/google/android/gms/internal/ads/tD;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->QX:Lcom/google/android/gms/internal/ads/yD;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->U2:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/gC;->FH()V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/yB;)V
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/eC;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eC;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->tp:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/gms/internal/ads/eC;->j6:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method final j6(Lcom/google/android/gms/internal/ads/zD;JJ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zD",
            "<",
            "Lcom/google/android/gms/internal/ads/wC;",
            ">;JJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gC;->Zo:Lcom/google/android/gms/internal/ads/eB;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zD;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget v3, p1, Lcom/google/android/gms/internal/ads/zD;->DW:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zD;->v5()J

    move-result-wide v8

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/mD;IJJJ)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zD;->Hw()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/wC;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object v3

    iget-wide v4, v3, Lcom/google/android/gms/internal/ads/AC;->DW:J

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/wC;->j6(I)Lcom/google/android/gms/internal/ads/AC;

    move-result-object v3

    iget-wide v6, v3, Lcom/google/android/gms/internal/ads/AC;->DW:J

    cmp-long v3, v6, v4

    if-gez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/wC;->j6()I

    move-result v1

    goto :goto_0

    :cond_1
    sub-int v3, v1, v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wC;->j6()I

    move-result v4

    if-le v3, v4, :cond_2

    const-string v0, "DashMediaSource"

    const-string v1, "Out of sync manifest"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/gC;->Hw()V

    :goto_2
    return-void

    :cond_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    sub-long v4, p2, p4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/gC;->aM:J

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/gC;->j3:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/wC;->u7:Landroid/net/Uri;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/gC;->u7:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zD;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/mD;->j6:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/gC;->XL:Landroid/net/Uri;

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/wC;->u7:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->XL:Landroid/net/Uri;

    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-nez v1, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gC;->Mr:Lcom/google/android/gms/internal/ads/wC;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/wC;->gn:Lcom/google/android/gms/internal/ads/PC;

    if-eqz v0, :cond_b

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/PC;->j6:Ljava/lang/String;

    const-string v2, "urn:mpeg:dash:utc:direct:2014"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "urn:mpeg:dash:utc:direct:2012"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    :try_start_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/PC;->DW:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/TD;->v5(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/gC;->j3:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/gC;->j6(J)V
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/My; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/gC;->j6(Ljava/io/IOException;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_6
    const-string v2, "urn:mpeg:dash:utc:http-iso:2014"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "urn:mpeg:dash:utc:http-iso:2012"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    new-instance v1, Lcom/google/android/gms/internal/ads/kC;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/kC;-><init>(Lcom/google/android/gms/internal/ads/hC;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/gC;->j6(Lcom/google/android/gms/internal/ads/PC;Lcom/google/android/gms/internal/ads/AD;)V

    goto :goto_2

    :cond_8
    const-string v2, "urn:mpeg:dash:utc:http-xsdate:2014"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "urn:mpeg:dash:utc:http-xsdate:2012"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/TD;->j6(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    new-instance v1, Lcom/google/android/gms/internal/ads/pC;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/pC;-><init>(Lcom/google/android/gms/internal/ads/hC;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/gC;->j6(Lcom/google/android/gms/internal/ads/PC;Lcom/google/android/gms/internal/ads/AD;)V

    goto/16 :goto_2

    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported UTC timing scheme"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/gC;->j6(Ljava/io/IOException;)V

    goto/16 :goto_2

    :cond_b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/gC;->j6(Z)V

    goto/16 :goto_2

    :cond_c
    iget v0, p0, Lcom/google/android/gms/internal/ads/gC;->lg:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/gC;->lg:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/gC;->j6(Z)V

    goto/16 :goto_2
.end method
