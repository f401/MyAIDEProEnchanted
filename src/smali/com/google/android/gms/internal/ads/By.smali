.class final Lcom/google/android/gms/internal/ads/By;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/wy;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/cD;

.field private EQ:I

.field private final FH:Lcom/google/android/gms/internal/ads/bD;

.field private final Hw:Landroid/os/Handler;

.field private J0:I

.field private J8:I

.field private Mr:Lcom/google/android/gms/internal/ads/Ny;

.field private QX:Lcom/google/android/gms/internal/ads/Sy;

.field private U2:Lcom/google/android/gms/internal/ads/Fy;

.field private final VH:Lcom/google/android/gms/internal/ads/Vy;

.field private Ws:Z

.field private XL:Ljava/lang/Object;

.field private final Zo:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/google/android/gms/internal/ads/xy;",
            ">;"
        }
    .end annotation
.end field

.field private a8:I

.field private aM:Lcom/google/android/gms/internal/ads/NB;

.field private final gn:Lcom/google/android/gms/internal/ads/Uy;

.field private j3:Lcom/google/android/gms/internal/ads/bD;

.field private final j6:[Lcom/google/android/gms/internal/ads/Oy;

.field private lg:I

.field private rN:J

.field private tp:Z

.field private u7:Z

.field private final v5:Lcom/google/android/gms/internal/ads/Dy;

.field private we:I


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/Oy;Lcom/google/android/gms/internal/ads/cD;Lcom/google/android/gms/internal/ads/Ly;)V
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/TD;->v5:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Init ExoPlayerLib/2.4.2 ["

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Init ExoPlayerLib/2.4.2 ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ExoPlayerImpl"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p1

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/CD;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, [Lcom/google/android/gms/internal/ads/Oy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/CD;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/cD;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->DW:Lcom/google/android/gms/internal/ads/cD;

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/By;->tp:Z

    iput v5, p0, Lcom/google/android/gms/internal/ads/By;->EQ:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/By;->we:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Lcom/google/android/gms/internal/ads/bD;

    array-length v1, p1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/_C;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/bD;-><init>([Lcom/google/android/gms/internal/ads/_C;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->FH:Lcom/google/android/gms/internal/ads/bD;

    sget-object v0, Lcom/google/android/gms/internal/ads/Sy;->j6:Lcom/google/android/gms/internal/ads/Sy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    new-instance v0, Lcom/google/android/gms/internal/ads/Vy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Vy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->VH:Lcom/google/android/gms/internal/ads/Vy;

    new-instance v0, Lcom/google/android/gms/internal/ads/Uy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Uy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->gn:Lcom/google/android/gms/internal/ads/Uy;

    sget-object v0, Lcom/google/android/gms/internal/ads/NB;->j6:Lcom/google/android/gms/internal/ads/NB;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->aM:Lcom/google/android/gms/internal/ads/NB;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->FH:Lcom/google/android/gms/internal/ads/bD;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->j3:Lcom/google/android/gms/internal/ads/bD;

    sget-object v0, Lcom/google/android/gms/internal/ads/Ny;->j6:Lcom/google/android/gms/internal/ads/Ny;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/ads/Cy;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/Cy;-><init>(Lcom/google/android/gms/internal/ads/By;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/By;->Hw:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/Fy;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v5, v2, v3}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->U2:Lcom/google/android/gms/internal/ads/Fy;

    new-instance v0, Lcom/google/android/gms/internal/ads/Dy;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/By;->tp:Z

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/By;->Hw:Landroid/os/Handler;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/By;->U2:Lcom/google/android/gms/internal/ads/Fy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/Dy;-><init>([Lcom/google/android/gms/internal/ads/Oy;Lcom/google/android/gms/internal/ads/cD;Lcom/google/android/gms/internal/ads/Ly;ZILandroid/os/Handler;Lcom/google/android/gms/internal/ads/Fy;Lcom/google/android/gms/internal/ads/wy;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->v5:Lcom/google/android/gms/internal/ads/Dy;

    return-void

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_1
.end method

.method private final DW()I
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Sy;->j6()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/ads/By;->J0:I

    if-lez v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/By;->a8:I

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/By;->U2:Lcom/google/android/gms/internal/ads/Fy;

    iget v2, v2, Lcom/google/android/gms/internal/ads/Fy;->j6:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/By;->gn:Lcom/google/android/gms/internal/ads/Uy;

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    goto :goto_0
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/xy;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final varargs DW([Lcom/google/android/gms/internal/ads/zy;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->v5:Lcom/google/android/gms/internal/ads/Dy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Dy;->j6([Lcom/google/android/gms/internal/ads/zy;)V

    return-void
.end method

.method public final Jl()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v0, v0

    return v0
.end method

.method public final Q6()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/By;->we:I

    return v0
.end method

.method public final eU()J
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Sy;->j6()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/By;->J0:I

    if-lez v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/By;->rN:J

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/By;->U2:Lcom/google/android/gms/internal/ads/Fy;

    iget v1, v1, Lcom/google/android/gms/internal/ads/Fy;->j6:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/By;->gn:Lcom/google/android/gms/internal/ads/Uy;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->gn:Lcom/google/android/gms/internal/ads/Uy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Uy;->j6()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/By;->U2:Lcom/google/android/gms/internal/ads/Fy;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/Fy;->Hw:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/uy;->j6(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public final getDuration()J
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Sy;->j6()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/By;->DW()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/By;->VH:Lcom/google/android/gms/internal/ads/Vy;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Vy;ZJ)Lcom/google/android/gms/internal/ads/Vy;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/Vy;->u7:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/uy;->j6(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final iW()J
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Sy;->j6()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/By;->J0:I

    if-lez v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/By;->rN:J

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/By;->U2:Lcom/google/android/gms/internal/ads/Fy;

    iget v1, v1, Lcom/google/android/gms/internal/ads/Fy;->j6:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/By;->gn:Lcom/google/android/gms/internal/ads/Uy;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->gn:Lcom/google/android/gms/internal/ads/Uy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Uy;->j6()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/By;->U2:Lcom/google/android/gms/internal/ads/Fy;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/Fy;->FH:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/uy;->j6(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public final j6()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->v5:Lcom/google/android/gms/internal/ads/Dy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Dy;->DW()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->Hw:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final j6(J)V
    .registers 16

    const-wide/16 v4, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/By;->DW()I

    move-result v1

    if-ltz v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Sy;->j6()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Sy;->DW()I

    move-result v0

    if-ge v1, v0, :cond_6

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/By;->J0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/By;->J0:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/By;->a8:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Sy;->j6()Z

    move-result v0

    if-eqz v0, :cond_2

    iput v3, p0, Lcom/google/android/gms/internal/ads/By;->lg:I

    :goto_0
    cmp-long v0, p1, v10

    if-nez v0, :cond_5

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/By;->rN:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->v5:Lcom/google/android/gms/internal/ads/Dy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    invoke-virtual {v0, v2, v1, v10, v11}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Sy;IJ)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/By;->VH:Lcom/google/android/gms/internal/ads/Vy;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Vy;ZJ)Lcom/google/android/gms/internal/ads/Vy;

    cmp-long v0, p1, v10

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->VH:Lcom/google/android/gms/internal/ads/Vy;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/Vy;->gn:J

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->VH:Lcom/google/android/gms/internal/ads/Vy;

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/Vy;->tp:J

    add-long/2addr v8, v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/By;->gn:Lcom/google/android/gms/internal/ads/Uy;

    invoke-virtual {v0, v3, v2, v3}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-result-object v0

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/Uy;->Hw:J

    move v0, v3

    :goto_2
    cmp-long v2, v6, v10

    if-eqz v2, :cond_4

    cmp-long v2, v8, v6

    if-ltz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/By;->VH:Lcom/google/android/gms/internal/ads/Vy;

    iget v2, v2, Lcom/google/android/gms/internal/ads/Vy;->VH:I

    if-ge v0, v2, :cond_4

    sub-long/2addr v8, v6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    add-int/lit8 v0, v0, 0x1

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/By;->gn:Lcom/google/android/gms/internal/ads/Uy;

    invoke-virtual {v2, v0, v6, v3}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-result-object v2

    iget-wide v6, v2, Lcom/google/android/gms/internal/ads/Uy;->Hw:J

    goto :goto_2

    :cond_3
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/uy;->DW(J)J

    move-result-wide v6

    goto :goto_1

    :cond_4
    iput v0, p0, Lcom/google/android/gms/internal/ads/By;->lg:I

    goto :goto_0

    :cond_5
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/By;->rN:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->v5:Lcom/google/android/gms/internal/ads/Dy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/uy;->DW(J)J

    move-result-wide v4

    invoke-virtual {v0, v2, v1, v4, v5}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Sy;IJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/xy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/xy;->j6()V

    goto :goto_3

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/Ky;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    invoke-direct {v0, v2, v1, p1, p2}, Lcom/google/android/gms/internal/ads/Ky;-><init>(Lcom/google/android/gms/internal/ads/Sy;IJ)V

    throw v0
.end method

.method final j6(Landroid/os/Message;)V
    .registers 6

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/vy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/xy;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/xy;->j6(Lcom/google/android/gms/internal/ads/vy;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/Ny;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/By;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Ny;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/xy;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/xy;->j6(Lcom/google/android/gms/internal/ads/Ny;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/Hy;

    iget v1, p0, Lcom/google/android/gms/internal/ads/By;->J0:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/Hy;->Hw:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/By;->J0:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/By;->J8:I

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Hy;->j6:Lcom/google/android/gms/internal/ads/Sy;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Hy;->DW:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/By;->XL:Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Hy;->FH:Lcom/google/android/gms/internal/ads/Fy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->U2:Lcom/google/android/gms/internal/ads/Fy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/xy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/By;->XL:Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/xy;->j6(Lcom/google/android/gms/internal/ads/Sy;Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/By;->J0:I

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/Fy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->U2:Lcom/google/android/gms/internal/ads/Fy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/xy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/xy;->j6()V

    goto :goto_3

    :pswitch_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/By;->J0:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/By;->J0:I

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/Fy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->U2:Lcom/google/android/gms/internal/ads/Fy;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/xy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/xy;->j6()V

    goto :goto_4

    :pswitch_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/By;->J8:I

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/eD;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/By;->u7:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/eD;->j6:Lcom/google/android/gms/internal/ads/NB;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/By;->aM:Lcom/google/android/gms/internal/ads/NB;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/eD;->DW:Lcom/google/android/gms/internal/ads/bD;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/By;->j3:Lcom/google/android/gms/internal/ads/bD;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/By;->DW:Lcom/google/android/gms/internal/ads/cD;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/eD;->FH:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/cD;->j6(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/xy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/By;->aM:Lcom/google/android/gms/internal/ads/NB;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/By;->j3:Lcom/google/android/gms/internal/ads/bD;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/xy;->j6(Lcom/google/android/gms/internal/ads/NB;Lcom/google/android/gms/internal/ads/bD;)V

    goto :goto_5

    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/By;->Ws:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/xy;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/By;->Ws:Z

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/xy;->j6(Z)V

    goto :goto_7

    :cond_0
    const/4 v0, 0x0

    goto :goto_6

    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/By;->we:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/xy;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/By;->tp:Z

    iget v3, p0, Lcom/google/android/gms/internal/ads/By;->we:I

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/xy;->j6(ZI)V

    goto :goto_8

    :pswitch_8
    iget v0, p0, Lcom/google/android/gms/internal/ads/By;->J8:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/By;->J8:I

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/AB;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Sy;->j6()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->XL:Ljava/lang/Object;

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Sy;->j6:Lcom/google/android/gms/internal/ads/Sy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/By;->XL:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/xy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/By;->XL:Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/xy;->j6(Lcom/google/android/gms/internal/ads/Sy;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/By;->u7:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/By;->u7:Z

    sget-object v0, Lcom/google/android/gms/internal/ads/NB;->j6:Lcom/google/android/gms/internal/ads/NB;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->aM:Lcom/google/android/gms/internal/ads/NB;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->FH:Lcom/google/android/gms/internal/ads/bD;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->j3:Lcom/google/android/gms/internal/ads/bD;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->DW:Lcom/google/android/gms/internal/ads/cD;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/cD;->j6(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/xy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/By;->aM:Lcom/google/android/gms/internal/ads/NB;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/By;->j3:Lcom/google/android/gms/internal/ads/bD;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/xy;->j6(Lcom/google/android/gms/internal/ads/NB;Lcom/google/android/gms/internal/ads/bD;)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/By;->J8:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/By;->J8:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->v5:Lcom/google/android/gms/internal/ads/Dy;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/AB;Z)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/xy;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final j6(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/By;->tp:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/By;->tp:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->v5:Lcom/google/android/gms/internal/ads/Dy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Dy;->j6(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/xy;

    iget v2, p0, Lcom/google/android/gms/internal/ads/By;->we:I

    invoke-interface {v0, p1, v2}, Lcom/google/android/gms/internal/ads/xy;->j6(ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final varargs j6([Lcom/google/android/gms/internal/ads/zy;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->v5:Lcom/google/android/gms/internal/ads/Dy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Dy;->DW([Lcom/google/android/gms/internal/ads/zy;)V

    return-void
.end method

.method public final kf()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/By;->tp:Z

    return v0
.end method

.method public final stop()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->v5:Lcom/google/android/gms/internal/ads/Dy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Dy;->FH()V

    return-void
.end method
