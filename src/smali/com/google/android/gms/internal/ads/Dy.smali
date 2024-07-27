.class final Lcom/google/android/gms/internal/ads/Dy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/gms/internal/ads/zB;
.implements Lcom/google/android/gms/internal/ads/BB;
.implements Lcom/google/android/gms/internal/ads/dD;


# instance fields
.field private BT:Lcom/google/android/gms/internal/ads/Gy;

.field private final DW:[Lcom/google/android/gms/internal/ads/Qy;

.field private final EQ:Lcom/google/android/gms/internal/ads/Uy;

.field private final FH:Lcom/google/android/gms/internal/ads/cD;

.field private final Hw:Lcom/google/android/gms/internal/ads/Ly;

.field private J0:Lcom/google/android/gms/internal/ads/Ny;

.field private J8:Lcom/google/android/gms/internal/ads/Oy;

.field private Mr:Z

.field private P8:Lcom/google/android/gms/internal/ads/Ey;

.field private QX:Lcom/google/android/gms/internal/ads/AB;

.field private SI:Lcom/google/android/gms/internal/ads/Sy;

.field private U2:Z

.field private final VH:Landroid/os/HandlerThread;

.field private Ws:Lcom/google/android/gms/internal/ads/GD;

.field private XL:[Lcom/google/android/gms/internal/ads/Oy;

.field private final Zo:Landroid/os/Handler;

.field private a8:I

.field private aM:Z

.field private ei:Lcom/google/android/gms/internal/ads/Ey;

.field private er:I

.field private gW:I

.field private final gn:Landroid/os/Handler;

.field private j3:Z

.field private final j6:[Lcom/google/android/gms/internal/ads/Oy;

.field private lg:I

.field private nw:Lcom/google/android/gms/internal/ads/Ey;

.field private rN:I

.field private final tp:Lcom/google/android/gms/internal/ads/Vy;

.field private final u7:Lcom/google/android/gms/internal/ads/wy;

.field private final v5:Lcom/google/android/gms/internal/ads/PD;

.field private vy:J

.field private we:Lcom/google/android/gms/internal/ads/Fy;

.field private yS:J


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/Oy;Lcom/google/android/gms/internal/ads/cD;Lcom/google/android/gms/internal/ads/Ly;ZILandroid/os/Handler;Lcom/google/android/gms/internal/ads/Fy;Lcom/google/android/gms/internal/ads/wy;)V
    .registers 13

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Dy;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Dy;->FH:Lcom/google/android/gms/internal/ads/cD;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Dy;->Hw:Lcom/google/android/gms/internal/ads/Ly;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/Dy;->j3:Z

    iput v1, p0, Lcom/google/android/gms/internal/ads/Dy;->lg:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Dy;->a8:I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/Dy;->u7:Lcom/google/android/gms/internal/ads/wy;

    array-length v0, p1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/Qy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->DW:[Lcom/google/android/gms/internal/ads/Qy;

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/Oy;->setIndex(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->DW:[Lcom/google/android/gms/internal/ads/Qy;

    aget-object v3, p1, v0

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Oy;->J0()Lcom/google/android/gms/internal/ads/Qy;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/PD;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/PD;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->v5:Lcom/google/android/gms/internal/ads/PD;

    new-array v0, v1, [Lcom/google/android/gms/internal/ads/Oy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    new-instance v0, Lcom/google/android/gms/internal/ads/Vy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Vy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->tp:Lcom/google/android/gms/internal/ads/Vy;

    new-instance v0, Lcom/google/android/gms/internal/ads/Uy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Uy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/cD;->j6(Lcom/google/android/gms/internal/ads/dD;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Ny;->j6:Lcom/google/android/gms/internal/ads/Ny;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->J0:Lcom/google/android/gms/internal/ads/Ny;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExoPlayerImplInternal:Handler"

    const/16 v2, -0x10

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->VH:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->VH:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->VH:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    return-void
.end method

.method private final DW(IJ)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/Dy;->DW(Lcom/google/android/gms/internal/ads/Sy;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private final DW(Lcom/google/android/gms/internal/ads/Sy;IJ)Landroid/util/Pair;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Sy;",
            "IJ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Sy;IJJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private final DW(Lcom/google/android/gms/internal/ads/Ey;)V
    .registers 10

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v0, v0

    new-array v4, v0, [Z

    move v0, v1

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Dy;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v5, v3

    if-ge v0, v5, :cond_6

    aget-object v5, v3, v0

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Oy;->getState()I

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_2
    aput-boolean v3, v4, v0

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/Ey;->J0:Lcom/google/android/gms/internal/ads/eD;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/eD;->DW:Lcom/google/android/gms/internal/ads/bD;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/bD;->j6(I)Lcom/google/android/gms/internal/ads/_C;

    move-result-object v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    aget-boolean v6, v4, v0

    if-eqz v6, :cond_4

    if-eqz v3, :cond_2

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Oy;->VH()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Oy;->we()Lcom/google/android/gms/internal/ads/HB;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/Ey;->Hw:[Lcom/google/android/gms/internal/ads/HB;

    aget-object v6, v6, v0

    if-ne v3, v6, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Dy;->J8:Lcom/google/android/gms/internal/ads/Oy;

    if-ne v5, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Dy;->v5:Lcom/google/android/gms/internal/ads/PD;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/Dy;->Ws:Lcom/google/android/gms/internal/ads/GD;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/PD;->j6(Lcom/google/android/gms/internal/ads/GD;)V

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/Dy;->Ws:Lcom/google/android/gms/internal/ads/GD;

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/Dy;->J8:Lcom/google/android/gms/internal/ads/Oy;

    :cond_3
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Oy;)V

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Oy;->tp()V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v3, v1

    goto :goto_2

    :cond_6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    const/4 v1, 0x3

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/Ey;->J0:Lcom/google/android/gms/internal/ads/eD;

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0, v4, v2}, Lcom/google/android/gms/internal/ads/Dy;->j6([ZI)V

    goto :goto_0
.end method

.method private final DW(Ljava/lang/Object;I)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    const/4 v1, 0x6

    new-instance v2, Lcom/google/android/gms/internal/ads/Hy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    invoke-direct {v2, v3, p1, v4, p2}, Lcom/google/android/gms/internal/ads/Hy;-><init>(Lcom/google/android/gms/internal/ads/Sy;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Fy;I)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private final DW(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Dy;->U2:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Dy;->U2:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private final DW(I)Z
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    invoke-virtual {v0, p1, v2, v1}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->tp:Lcom/google/android/gms/internal/ads/Vy;

    const-wide/16 v4, 0x0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Vy;ZJ)Lcom/google/android/gms/internal/ads/Vy;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Vy;->v5:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Dy;->tp:Lcom/google/android/gms/internal/ads/Vy;

    iget v4, p0, Lcom/google/android/gms/internal/ads/Dy;->lg:I

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Lcom/google/android/gms/internal/ads/Vy;I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private final DW(J)Z
    .registers 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/Fy;->FH:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Ey;->tp:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final FH(Z)V
    .registers 10

    const/4 v2, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/Dy;->Mr:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->v5:Lcom/google/android/gms/internal/ads/PD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/PD;->Hw()V

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/Dy;->Ws:Lcom/google/android/gms/internal/ads/GD;

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/Dy;->J8:Lcom/google/android/gms/internal/ads/Oy;

    const-wide/32 v0, 0x3938700

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Oy;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Oy;->tp()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    const-string v5, "ExoPlayerImplInternal"

    const-string v6, "Stop failed."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    new-array v0, v2, [Lcom/google/android/gms/internal/ads/Oy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v0, :cond_3

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Ey;)V

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/Dy;->DW(Z)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->QX:Lcom/google/android/gms/internal/ads/AB;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/AB;->DW()V

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/Dy;->QX:Lcom/google/android/gms/internal/ads/AB;

    :cond_1
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private final Hw()V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Mr:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->v5:Lcom/google/android/gms/internal/ads/PD;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/PD;->FH()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Oy;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final VH()V
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Dy;->FH(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Hw:Lcom/google/android/gms/internal/ads/Ly;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ly;->DW()V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Dy;->j6(I)V

    return-void
.end method

.method private final Zo()V
    .registers 7

    const-wide/high16 v2, -0x8000000000000000L

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/yB;->v5()J

    move-result-wide v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Dy;->j6(J)V

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iput-wide v0, v4, Lcom/google/android/gms/internal/ads/Fy;->FH:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Dy;->yS:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v0, v0

    if-nez v0, :cond_4

    move-wide v0, v2

    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget v1, v1, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/Uy;->Hw:J

    :cond_1
    iput-wide v0, v4, Lcom/google/android/gms/internal/ads/Fy;->Hw:J

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->J8:Lcom/google/android/gms/internal/ads/Oy;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Oy;->Hw()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Ws:Lcom/google/android/gms/internal/ads/GD;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/GD;->j6()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->v5:Lcom/google/android/gms/internal/ads/PD;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/PD;->j6(J)V

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ey;->DW()J

    move-result-wide v0

    sub-long v0, v4, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->v5:Lcom/google/android/gms/internal/ads/PD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/PD;->j6()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/yB;->VH()J

    move-result-wide v0

    goto :goto_2
.end method

.method private final gn()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ey;->tp:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    if-ne v1, v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Oy;->gn()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/yB;->Zo()V

    goto :goto_1
.end method

.method private final j6(ILcom/google/android/gms/internal/ads/Sy;Lcom/google/android/gms/internal/ads/Sy;)I
    .registers 10

    const/4 v1, -0x1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/Sy;->FH()I

    move-result v3

    const/4 v2, 0x0

    move v0, v1

    :goto_0
    if-ge v2, v3, :cond_0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Dy;->tp:Lcom/google/android/gms/internal/ads/Vy;

    iget v5, p0, Lcom/google/android/gms/internal/ads/Dy;->lg:I

    invoke-virtual {p2, p1, v0, v4, v5}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Lcom/google/android/gms/internal/ads/Vy;I)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    const/4 v4, 0x1

    invoke-virtual {p2, p1, v0, v4}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Uy;->DW:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/ads/Sy;->j6(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private final j6(IJ)J
    .registers 12

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Dy;->v5()V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/Dy;->Mr:Z

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/Dy;->j6(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ey;->j6()V

    :cond_0
    move-object v0, v2

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-ne v1, v0, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    if-eq v1, v4, :cond_6

    :cond_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v5, v4

    move v1, v3

    :goto_0
    if-ge v1, v5, :cond_5

    aget-object v6, v4, v1

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Oy;->tp()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_1
    if-eqz v1, :cond_1

    iget v4, v1, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    if-ne v4, p1, :cond_4

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/Ey;->tp:Z

    if-eqz v4, :cond_4

    move-object v0, v1

    :goto_2
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ey;->j6()V

    goto :goto_2

    :cond_5
    new-array v1, v3, [Lcom/google/android/gms/internal/ads/Oy;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->Ws:Lcom/google/android/gms/internal/ads/GD;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->J8:Lcom/google/android/gms/internal/ads/Oy;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    :cond_6
    if-eqz v0, :cond_8

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Dy;->DW(Lcom/google/android/gms/internal/ads/Ey;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ey;->EQ:Z

    if-eqz v1, :cond_7

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    invoke-interface {v0, p2, p3}, Lcom/google/android/gms/internal/ads/yB;->j6(J)J

    move-result-wide p2

    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/Dy;->j6(J)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Dy;->u7()V

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-wide p2

    :cond_8
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/Dy;->j6(J)V

    goto :goto_3
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/Gy;)Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Gy;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, -0x1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Gy;->j6:Lcom/google/android/gms/internal/ads/Sy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Sy;->j6()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    move-object v2, v0

    :goto_0
    :try_start_0
    iget v0, p1, Lcom/google/android/gms/internal/ads/Gy;->DW:I

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/Gy;->FH:J

    invoke-direct {p0, v2, v0, v4, v5}, Lcom/google/android/gms/internal/ads/Dy;->DW(Lcom/google/android/gms/internal/ads/Sy;IJ)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    if-ne v3, v2, :cond_0

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v4, v5}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Uy;->DW:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/Sy;->j6(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, v6, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/Dy;->j6(ILcom/google/android/gms/internal/ads/Sy;Lcom/google/android/gms/internal/ads/Sy;)I

    move-result v0

    if-eq v0, v6, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    invoke-virtual {v1, v0, v2, v7}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v7, v0, v1}, Lcom/google/android/gms/internal/ads/Dy;->DW(IJ)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/ads/Ky;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget v2, p1, Lcom/google/android/gms/internal/ads/Gy;->DW:I

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/Gy;->FH:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/Ky;-><init>(Lcom/google/android/gms/internal/ads/Sy;IJ)V

    throw v0

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/Sy;IJJ)Landroid/util/Pair;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Sy;",
            "IJJ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Sy;->DW()I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/ads/CD;->j6(III)I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->tp:Lcom/google/android/gms/internal/ads/Vy;

    const/4 v3, 0x0

    move-object v0, p1

    move v1, p2

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Vy;ZJ)Lcom/google/android/gms/internal/ads/Vy;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->tp:Lcom/google/android/gms/internal/ads/Vy;

    iget-wide p3, v0, Lcom/google/android/gms/internal/ads/Vy;->gn:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->tp:Lcom/google/android/gms/internal/ads/Vy;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/Vy;->tp:J

    add-long/2addr v0, p3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/Uy;->Hw:J

    const/4 v4, 0x0

    :goto_1
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v2, v6

    if-eqz v5, :cond_1

    cmp-long v5, v0, v2

    if-ltz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Dy;->tp:Lcom/google/android/gms/internal/ads/Vy;

    iget v5, v5, Lcom/google/android/gms/internal/ads/Vy;->VH:I

    if-ge v4, v5, :cond_1

    sub-long/2addr v0, v2

    add-int/lit8 v4, v4, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v2, v3}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/Uy;->Hw:J

    goto :goto_1

    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method private final j6(I)V
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/Dy;->a8:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/Dy;->a8:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private final j6(J)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-nez v0, :cond_0

    const-wide/32 v0, 0x3938700

    :goto_0
    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->v5:Lcom/google/android/gms/internal/ads/PD;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/PD;->j6(J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    invoke-interface {v3, v4, v5}, Lcom/google/android/gms/internal/ads/Oy;->j6(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ey;->DW()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final j6(JJ)V
    .registers 10

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    add-long v0, p1, p3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/Ey;)V
    .registers 1

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Ey;->j6()V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/Oy;)V
    .registers 3

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Oy;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Oy;->stop()V

    :cond_0
    return-void
.end method

.method private final j6(Ljava/lang/Object;I)V
    .registers 7

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/internal/ads/Fy;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Dy;->DW(Ljava/lang/Object;I)V

    new-instance v0, Lcom/google/android/gms/internal/ads/Fy;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Dy;->j6(I)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Dy;->FH(Z)V

    return-void
.end method

.method private final j6([ZI)V
    .registers 15

    new-array v0, p2, [Lcom/google/android/gms/internal/ads/Oy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v9, v0

    move v10, v1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v1, v0

    if-ge v10, v1, :cond_6

    aget-object v0, v0, v10

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Ey;->J0:Lcom/google/android/gms/internal/ads/eD;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/eD;->DW:Lcom/google/android/gms/internal/ads/bD;

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/bD;->j6(I)Lcom/google/android/gms/internal/ads/_C;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    aput-object v0, v1, v9

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Oy;->getState()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Ey;->J0:Lcom/google/android/gms/internal/ads/eD;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/eD;->Hw:[Lcom/google/android/gms/internal/ads/Ry;

    aget-object v1, v1, v10

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Dy;->j3:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/ads/Dy;->a8:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v11, v2

    :goto_1
    aget-boolean v2, p1, v10

    if-nez v2, :cond_1

    if-eqz v11, :cond_1

    const/4 v6, 0x1

    :goto_2
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/_C;->length()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzfs;

    const/4 v3, 0x0

    :goto_3
    array-length v5, v2

    if-ge v3, v5, :cond_2

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/_C;->j6(I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v5

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_0
    const/4 v2, 0x0

    move v11, v2

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v3, v7, Lcom/google/android/gms/internal/ads/Ey;->Hw:[Lcom/google/android/gms/internal/ads/HB;

    aget-object v3, v3, v10

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/Ey;->DW()J

    move-result-wide v7

    invoke-interface/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/Oy;->j6(Lcom/google/android/gms/internal/ads/Ry;[Lcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/HB;JZJ)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Oy;->EQ()Lcom/google/android/gms/internal/ads/GD;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->Ws:Lcom/google/android/gms/internal/ads/GD;

    if-nez v2, :cond_5

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->Ws:Lcom/google/android/gms/internal/ads/GD;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->J8:Lcom/google/android/gms/internal/ads/Oy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->Ws:Lcom/google/android/gms/internal/ads/GD;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->J0:Lcom/google/android/gms/internal/ads/Ny;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/GD;->j6(Lcom/google/android/gms/internal/ads/Ny;)Lcom/google/android/gms/internal/ads/Ny;

    :cond_3
    if-eqz v11, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Oy;->start()V

    :cond_4
    add-int/lit8 v0, v9, 0x1

    :goto_4
    add-int/lit8 v1, v10, 0x1

    move v9, v0

    move v10, v1

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multiple renderer media clocks enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vy;->j6(Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/vy;

    move-result-object v0

    throw v0

    :cond_6
    return-void

    :cond_7
    move v0, v9

    goto :goto_4
.end method

.method private final u7()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ey;->tp:Z

    if-nez v1, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Dy;->DW(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/yB;->DW()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Ey;->DW()J

    move-result-wide v2

    sub-long v2, v4, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Dy;->Hw:Lcom/google/android/gms/internal/ads/Ly;

    sub-long/2addr v0, v2

    invoke-interface {v4, v0, v1}, Lcom/google/android/gms/internal/ads/Ly;->j6(J)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Dy;->DW(Z)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/yB;->DW(J)Z

    goto :goto_1
.end method

.method private final v5()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->v5:Lcom/google/android/gms/internal/ads/PD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/PD;->Hw()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Oy;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Dy;->aM:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Dy;->aM:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->VH:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    goto :goto_0
.end method

.method public final varargs DW([Lcom/google/android/gms/internal/ads/zy;)V
    .registers 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Dy;->aM:Z

    if-eqz v0, :cond_0

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Dy;->rN:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Dy;->rN:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/Dy;->er:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v1, v0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    monitor-exit p0

    goto :goto_0
.end method

.method public final FH()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 24

    :try_start_0
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    const-wide/16 v10, 0x0

    const/16 v18, 0x0

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :pswitch_0
    :try_start_1
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iput v8, v0, Lcom/google/android/gms/internal/ads/Dy;->lg:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    :goto_1
    if-eqz v7, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    if-ne v7, v4, :cond_1

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    if-ne v7, v5, :cond_2

    const/4 v6, 0x1

    move v5, v4

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget v9, v7, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/Dy;->tp:Lcom/google/android/gms/internal/ads/Vy;

    invoke-virtual {v4, v9, v10, v11, v8}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Lcom/google/android/gms/internal/ads/Vy;I)I

    move-result v4

    iget-object v9, v7, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v9, :cond_5

    const/4 v9, -0x1

    if-eq v4, v9, :cond_5

    iget-object v9, v7, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    iget v9, v9, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    if-ne v9, v4, :cond_5

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    if-ne v7, v4, :cond_3

    const/4 v4, 0x1

    :goto_4
    or-int/2addr v5, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    if-ne v7, v4, :cond_4

    const/4 v4, 0x1

    :goto_5
    or-int/2addr v4, v6

    move v6, v4

    goto :goto_3

    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    move v5, v4

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v4, :cond_6

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Ey;)V

    const/4 v4, 0x0

    iput-object v4, v7, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    :cond_6
    iget v4, v7, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/Dy;->DW(I)Z

    move-result v4

    iput-boolean v4, v7, Lcom/google/android/gms/internal/ads/Ey;->u7:Z

    if-nez v6, :cond_7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    :cond_7
    if-nez v5, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget v4, v4, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/Fy;->FH:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Lcom/google/android/gms/internal/ads/Dy;->j6(IJ)J

    move-result-wide v6

    new-instance v5, Lcom/google/android/gms/internal/ads/Fy;

    invoke-direct {v5, v4, v6, v7}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/Dy;->a8:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_9

    if-eqz v8, :cond_9

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/Dy;->j6(I)V

    :cond_9
    const/4 v4, 0x1

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Lcom/google/android/gms/internal/ads/zy;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    array-length v6, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_6
    if-ge v5, v6, :cond_a

    aget-object v7, v4, v5

    :try_start_3
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zy;->j6:Lcom/google/android/gms/internal/ads/yy;

    iget v9, v7, Lcom/google/android/gms/internal/ads/zy;->DW:I

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zy;->FH:Ljava/lang/Object;

    invoke-interface {v8, v9, v7}, Lcom/google/android/gms/internal/ads/yy;->j6(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->QX:Lcom/google/android/gms/internal/ads/AB;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_b
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/Dy;->er:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/gms/internal/ads/Dy;->er:I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    const/4 v4, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_0
    move-exception v4

    :goto_7
    const-string v5, "ExoPlayerImplInternal"

    const-string v6, "Renderer error."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    const/16 v6, 0x8

    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->VH()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    :try_start_7
    monitor-enter p0
    :try_end_7
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    :try_start_8
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/Dy;->er:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/gms/internal/ads/Dy;->er:I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v4
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    :catch_1
    move-exception v4

    :goto_8
    const-string v5, "ExoPlayerImplInternal"

    const-string v6, "Source error."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    const/16 v6, 0x8

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/vy;->j6(Ljava/io/IOException;)Lcom/google/android/gms/internal/ads/vy;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->VH()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :catchall_2
    move-exception v4

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v4
    :try_end_b
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    :catch_2
    move-exception v4

    const-string v5, "ExoPlayerImplInternal"

    const-string v6, "Internal runtime error."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    const/16 v6, 0x8

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/vy;->j6(Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/vy;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->VH()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :pswitch_2
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    const/4 v4, 0x1

    move-object v7, v5

    :goto_9
    if-eqz v7, :cond_c

    iget-boolean v5, v7, Lcom/google/android/gms/internal/ads/Ey;->tp:Z

    if-nez v5, :cond_d

    :cond_c
    :goto_a
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/Ey;->Hw()Z

    move-result v5

    if-nez v5, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    if-ne v7, v5, :cond_e

    const/4 v4, 0x0

    :cond_e
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    move-object v7, v5

    goto :goto_9

    :cond_f
    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-eq v4, v5, :cond_14

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Ey;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v5, v5

    new-array v8, v5, [Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget-wide v10, v6, Lcom/google/android/gms/internal/ads/Fy;->FH:J

    invoke-virtual {v5, v10, v11, v4, v8}, Lcom/google/android/gms/internal/ads/Ey;->j6(JZ[Z)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget-wide v10, v6, Lcom/google/android/gms/internal/ads/Fy;->FH:J

    cmp-long v6, v4, v10

    if-eqz v6, :cond_10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iput-wide v4, v6, Lcom/google/android/gms/internal/ads/Fy;->FH:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/internal/ads/Dy;->j6(J)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v4, v4

    new-array v9, v4, [Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v4

    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v4, v4

    if-ge v6, v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    aget-object v10, v4, v6

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/Oy;->getState()I
    :try_end_c
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_2

    move-result v4

    if-eqz v4, :cond_15

    const/4 v4, 0x1

    :goto_d
    aput-boolean v4, v9, v6

    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Ey;->Hw:[Lcom/google/android/gms/internal/ads/HB;

    aget-object v11, v4, v6
    :try_end_d
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2

    if-eqz v11, :cond_6d

    add-int/lit8 v4, v5, 0x1

    :goto_e
    aget-boolean v5, v9, v6

    if-eqz v5, :cond_13

    :try_start_e
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/Oy;->we()Lcom/google/android/gms/internal/ads/HB;

    move-result-object v5

    if-eq v11, v5, :cond_16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->J8:Lcom/google/android/gms/internal/ads/Oy;

    if-ne v10, v5, :cond_12

    if-nez v11, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->v5:Lcom/google/android/gms/internal/ads/PD;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/Dy;->Ws:Lcom/google/android/gms/internal/ads/GD;

    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/PD;->j6(Lcom/google/android/gms/internal/ads/GD;)V

    :cond_11
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->Ws:Lcom/google/android/gms/internal/ads/GD;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->J8:Lcom/google/android/gms/internal/ads/Oy;

    :cond_12
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Oy;)V

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/Oy;->tp()V
    :try_end_e
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_2

    :cond_13
    :goto_f
    add-int/lit8 v6, v6, 0x1

    move v5, v4

    goto :goto_c

    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_b

    :cond_15
    const/4 v4, 0x0

    goto :goto_d

    :cond_16
    aget-boolean v5, v8, v6

    if-eqz v5, :cond_13

    :try_start_f
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    invoke-interface {v10, v12, v13}, Lcom/google/android/gms/internal/ads/Oy;->j6(J)V

    goto :goto_f

    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    const/4 v6, 0x3

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/Ey;->J0:Lcom/google/android/gms/internal/ads/eD;

    invoke-virtual {v4, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v5}, Lcom/google/android/gms/internal/ads/Dy;->j6([ZI)V

    :cond_18
    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->u7()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->Zo()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_a

    :cond_19
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    :goto_11
    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Ey;->j6()V

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    goto :goto_11

    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/Ey;->tp:Z

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/Ey;->gn:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/Ey;->DW()J

    move-result-wide v6

    sub-long v6, v8, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v5, v7}, Lcom/google/android/gms/internal/ads/Ey;->j6(JZ)J

    goto :goto_10

    :pswitch_3
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/yB;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    if-eq v5, v4, :cond_1c

    :cond_1b
    :goto_12
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->u7()V

    goto :goto_12

    :pswitch_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/yB;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v5, :cond_1d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    if-eq v5, v4, :cond_1e

    :cond_1d
    :goto_13
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/gms/internal/ads/Ey;->tp:Z

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Ey;->Hw()Z

    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/Ey;->gn:J

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v7, v5}, Lcom/google/android/gms/internal/ads/Ey;->j6(JZ)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/google/android/gms/internal/ads/Ey;->gn:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-nez v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/Ey;->gn:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/internal/ads/Dy;->j6(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/Dy;->DW(Lcom/google/android/gms/internal/ads/Ey;)V

    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->u7()V

    goto :goto_13

    :pswitch_5
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/Sy;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v10, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v7, :cond_23

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/Dy;->gW:I

    if-lez v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->BT:Lcom/google/android/gms/internal/ads/Gy;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Gy;)Landroid/util/Pair;

    move-result-object v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/Dy;->gW:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/gms/internal/ads/Dy;->gW:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->BT:Lcom/google/android/gms/internal/ads/Gy;

    if-nez v6, :cond_20

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5}, Lcom/google/android/gms/internal/ads/Dy;->j6(Ljava/lang/Object;I)V

    :goto_14
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_20
    new-instance v8, Lcom/google/android/gms/internal/ads/Fy;

    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v4, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct {v8, v9, v12, v13}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    move v9, v5

    :goto_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    :goto_16
    if-eqz v5, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/Ey;->DW:Ljava/lang/Object;

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/Sy;->j6(Ljava/lang/Object;)I

    move-result v6

    const/4 v4, -0x1

    if-ne v6, v4, :cond_29

    iget v4, v5, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7, v6}, Lcom/google/android/gms/internal/ads/Dy;->j6(ILcom/google/android/gms/internal/ads/Sy;Lcom/google/android/gms/internal/ads/Sy;)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_25

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/google/android/gms/internal/ads/Dy;->j6(Ljava/lang/Object;I)V

    goto :goto_14

    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/Fy;->DW:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v8

    if-nez v4, :cond_23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Sy;->j6()Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v4}, Lcom/google/android/gms/internal/ads/Dy;->j6(Ljava/lang/Object;I)V

    goto :goto_14

    :cond_22
    const/4 v4, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v9}, Lcom/google/android/gms/internal/ads/Dy;->DW(IJ)Landroid/util/Pair;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/Fy;

    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v4, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v6, v8, v4, v5}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    :cond_23
    const/4 v4, 0x0

    move v9, v4

    goto :goto_15

    :cond_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    goto :goto_16

    :cond_25
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v7, v8}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    const/4 v4, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Lcom/google/android/gms/internal/ads/Dy;->DW(IJ)Landroid/util/Pair;

    move-result-object v7

    iget-object v4, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v4, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    const/4 v8, 0x1

    invoke-virtual {v4, v6, v7, v8}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/Uy;->DW:Ljava/lang/Object;

    const/4 v4, -0x1

    iput v4, v5, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    :goto_17
    iget-object v4, v5, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v4, :cond_27

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v4, v5, Lcom/google/android/gms/internal/ads/Ey;->DW:Ljava/lang/Object;

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    move v4, v6

    :goto_18
    iput v4, v5, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    goto :goto_17

    :cond_26
    const/4 v4, -0x1

    goto :goto_18

    :cond_27
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v12, v13}, Lcom/google/android/gms/internal/ads/Dy;->j6(IJ)J

    move-result-wide v4

    new-instance v7, Lcom/google/android/gms/internal/ads/Fy;

    invoke-direct {v7, v6, v4, v5}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    :cond_28
    :goto_19
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/google/android/gms/internal/ads/Dy;->DW(Ljava/lang/Object;I)V

    goto/16 :goto_14

    :cond_29
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/Dy;->DW(I)Z

    move-result v4

    invoke-virtual {v5, v6, v4}, Lcom/google/android/gms/internal/ads/Ey;->j6(IZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    if-ne v5, v4, :cond_2a

    const/4 v4, 0x1

    :goto_1a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget v7, v7, Lcom/google/android/gms/internal/ads/Fy;->j6:I

    if-eq v6, v7, :cond_6c

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    new-instance v8, Lcom/google/android/gms/internal/ads/Fy;

    iget-wide v12, v7, Lcom/google/android/gms/internal/ads/Fy;->DW:J

    invoke-direct {v8, v6, v12, v13}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    iget-wide v12, v7, Lcom/google/android/gms/internal/ads/Fy;->FH:J

    iput-wide v12, v8, Lcom/google/android/gms/internal/ads/Fy;->FH:J

    iget-wide v12, v7, Lcom/google/android/gms/internal/ads/Fy;->Hw:J

    iput-wide v12, v8, Lcom/google/android/gms/internal/ads/Fy;->Hw:J

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    move v7, v6

    move v8, v4

    :goto_1b
    iget-object v4, v5, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v4, :cond_28

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/Dy;->tp:Lcom/google/android/gms/internal/ads/Vy;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/android/gms/internal/ads/Dy;->lg:I

    invoke-virtual {v4, v7, v11, v12, v13}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Lcom/google/android/gms/internal/ads/Vy;I)I

    move-result v7

    const/4 v4, -0x1

    if-eq v7, v4, :cond_2c

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/Ey;->DW:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    const/4 v13, 0x1

    invoke-virtual {v11, v7, v12, v13}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-result-object v11

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/Uy;->DW:Ljava/lang/Object;

    invoke-virtual {v4, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/Dy;->DW(I)Z

    move-result v4

    invoke-virtual {v6, v7, v4}, Lcom/google/android/gms/internal/ads/Ey;->j6(IZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    if-ne v6, v4, :cond_2b

    const/4 v4, 0x1

    :goto_1c
    or-int/2addr v4, v8

    move-object v5, v6

    move v8, v4

    goto :goto_1b

    :cond_2a
    const/4 v4, 0x0

    goto :goto_1a

    :cond_2b
    const/4 v4, 0x0

    goto :goto_1c

    :cond_2c
    if-nez v8, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget v4, v4, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/Fy;->FH:J

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Lcom/google/android/gms/internal/ads/Dy;->j6(IJ)J

    move-result-wide v6

    new-instance v5, Lcom/google/android/gms/internal/ads/Fy;

    invoke-direct {v5, v4, v6, v7}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    goto/16 :goto_19

    :cond_2d
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Ey;)V

    goto/16 :goto_19

    :pswitch_6
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/Dy;->FH(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->Hw:Lcom/google/android/gms/internal/ads/Ly;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Ly;->Hw()V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/Dy;->j6(I)V

    monitor-enter p0
    :try_end_f
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2

    const/4 v4, 0x1

    :try_start_10
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/Dy;->aM:Z

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    const/4 v4, 0x1

    goto/16 :goto_0

    :catchall_3
    move-exception v4

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    throw v4

    :pswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->VH()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/Ny;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->Ws:Lcom/google/android/gms/internal/ads/GD;

    if-eqz v5, :cond_2e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->Ws:Lcom/google/android/gms/internal/ads/GD;

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/ads/GD;->j6(Lcom/google/android/gms/internal/ads/Ny;)Lcom/google/android/gms/internal/ads/Ny;

    move-result-object v4

    :goto_1d
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->J0:Lcom/google/android/gms/internal/ads/Ny;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    const/4 v6, 0x7

    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_2e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->v5:Lcom/google/android/gms/internal/ads/PD;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/PD;->j6(Lcom/google/android/gms/internal/ads/Ny;)Lcom/google/android/gms/internal/ads/Ny;

    goto :goto_1d

    :pswitch_9
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/Gy;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    if-nez v5, :cond_2f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/Dy;->gW:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/android/gms/internal/ads/Dy;->gW:I

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->BT:Lcom/google/android/gms/internal/ads/Gy;

    :goto_1e
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_2f
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Gy;)Landroid/util/Pair;

    move-result-object v6

    if-nez v6, :cond_30

    new-instance v4, Lcom/google/android/gms/internal/ads/Fy;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    new-instance v4, Lcom/google/android/gms/internal/ads/Fy;

    const/4 v5, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/Dy;->j6(I)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/Dy;->FH(Z)V

    goto :goto_1e

    :cond_30
    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/Gy;->FH:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v8

    if-nez v4, :cond_31

    const/4 v4, 0x1

    move v5, v4

    :goto_1f
    iget-object v4, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v4, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_11
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_2

    move-result-wide v8

    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget v4, v4, Lcom/google/android/gms/internal/ads/Fy;->j6:I

    if-ne v7, v4, :cond_33

    const-wide/16 v10, 0x3e8

    div-long v10, v8, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget-wide v12, v4, Lcom/google/android/gms/internal/ads/Fy;->FH:J

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    cmp-long v4, v10, v12

    if-nez v4, :cond_33

    :try_start_13
    new-instance v4, Lcom/google/android/gms/internal/ads/Fy;

    invoke-direct {v4, v7, v8, v9}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    if-eqz v5, :cond_32

    const/4 v4, 0x1

    :goto_20
    const/4 v5, 0x4

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    invoke-virtual {v6, v5, v4, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_13
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_2

    goto/16 :goto_1e

    :cond_31
    const/4 v4, 0x0

    move v5, v4

    goto :goto_1f

    :cond_32
    const/4 v4, 0x0

    goto :goto_20

    :cond_33
    :try_start_14
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9}, Lcom/google/android/gms/internal/ads/Dy;->j6(IJ)J
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    move-result-wide v10

    cmp-long v4, v8, v10

    if-eqz v4, :cond_34

    const/4 v4, 0x1

    :goto_21
    :try_start_15
    new-instance v6, Lcom/google/android/gms/internal/ads/Fy;

    invoke-direct {v6, v7, v10, v11}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    or-int/2addr v4, v5

    if-eqz v4, :cond_35

    const/4 v4, 0x1

    :goto_22
    const/4 v5, 0x4

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    invoke-virtual {v6, v5, v4, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1e

    :cond_34
    const/4 v4, 0x0

    goto :goto_21

    :cond_35
    const/4 v4, 0x0

    goto :goto_22

    :catchall_4
    move-exception v4

    new-instance v6, Lcom/google/android/gms/internal/ads/Fy;

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    if-eqz v5, :cond_36

    const/4 v5, 0x1

    :goto_23
    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    throw v4

    :cond_36
    const/4 v5, 0x0

    goto :goto_23

    :pswitch_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    if-nez v4, :cond_38

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->QX:Lcom/google/android/gms/internal/ads/AB;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/AB;->j6()V

    :cond_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-nez v4, :cond_4e

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->gn()V

    const-wide/16 v4, 0xa

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/Dy;->j6(JJ)V

    :goto_24
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    if-nez v4, :cond_3c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget v14, v4, Lcom/google/android/gms/internal/ads/Fy;->j6:I

    :goto_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Sy;->FH()I

    move-result v4

    if-lt v14, v4, :cond_3e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->QX:Lcom/google/android/gms/internal/ads/AB;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/AB;->j6()V

    :cond_39
    :goto_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v4, :cond_3a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Ey;->FH()Z

    move-result v4

    if-eqz v4, :cond_44

    :cond_3a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/Dy;->DW(Z)V

    :cond_3b
    :goto_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v4, :cond_37

    :goto_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    if-eq v4, v5, :cond_45

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/Ey;->Zo:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_45

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Ey;->j6()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/Dy;->DW(Lcom/google/android/gms/internal/ads/Ey;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/Fy;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget v5, v5, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/Ey;->gn:J

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->Zo()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_28

    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget v4, v4, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/Ey;->u7:Z

    if-nez v5, :cond_39

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/Ey;->FH()Z

    move-result v5

    if-eqz v5, :cond_39

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-result-object v5

    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/Uy;->Hw:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v6, v8

    if-eqz v5, :cond_39

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v5, :cond_3d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget v5, v5, Lcom/google/android/gms/internal/ads/Ey;->FH:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget v6, v6, Lcom/google/android/gms/internal/ads/Ey;->FH:I

    sub-int/2addr v5, v6

    const/16 v6, 0x64

    if-eq v5, v6, :cond_39

    :cond_3d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Dy;->tp:Lcom/google/android/gms/internal/ads/Vy;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/gms/internal/ads/Dy;->lg:I

    invoke-virtual {v5, v4, v6, v7, v8}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Lcom/google/android/gms/internal/ads/Vy;I)I

    move-result v14

    goto/16 :goto_25

    :cond_3e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    if-nez v4, :cond_40

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/Fy;->FH:J

    :goto_29
    move-wide/from16 v16, v4

    :goto_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    if-nez v4, :cond_42

    const-wide/32 v4, 0x3938700

    add-long v7, v4, v16

    :goto_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    if-nez v4, :cond_43

    const/4 v13, 0x0

    :goto_2c
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/gms/internal/ads/Dy;->DW(I)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    const/4 v6, 0x1

    invoke-virtual {v4, v14, v5, v6}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    new-instance v4, Lcom/google/android/gms/internal/ads/Ey;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->DW:[Lcom/google/android/gms/internal/ads/Qy;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/Dy;->FH:Lcom/google/android/gms/internal/ads/cD;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/Dy;->Hw:Lcom/google/android/gms/internal/ads/Ly;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/Dy;->QX:Lcom/google/android/gms/internal/ads/AB;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/Uy;->DW:Ljava/lang/Object;

    invoke-direct/range {v4 .. v17}, Lcom/google/android/gms/internal/ads/Ey;-><init>([Lcom/google/android/gms/internal/ads/Oy;[Lcom/google/android/gms/internal/ads/Qy;JLcom/google/android/gms/internal/ads/cD;Lcom/google/android/gms/internal/ads/Ly;Lcom/google/android/gms/internal/ads/AB;Ljava/lang/Object;IIZJ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v5, :cond_3f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iput-object v4, v5, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    :cond_3f
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-interface {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/yB;->j6(Lcom/google/android/gms/internal/ads/zB;J)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/Dy;->DW(Z)V

    goto/16 :goto_26

    :cond_40
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    const/4 v6, 0x0

    invoke-virtual {v4, v14, v5, v6}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->tp:Lcom/google/android/gms/internal/ads/Vy;

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Vy;ZJ)Lcom/google/android/gms/internal/ads/Vy;

    if-eqz v14, :cond_41

    move-wide v4, v10

    goto/16 :goto_29

    :cond_41
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Ey;->DW()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget v7, v7, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-result-object v6

    iget-wide v10, v6, Lcom/google/android/gms/internal/ads/Uy;->Hw:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    const/4 v7, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v14, 0x0

    add-long/2addr v4, v10

    sub-long/2addr v4, v12

    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Sy;IJJ)Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_39

    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v4, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    goto/16 :goto_2a

    :cond_42
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Ey;->DW()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget v7, v7, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-result-object v6

    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/Uy;->Hw:J

    add-long v7, v4, v6

    goto/16 :goto_2b

    :cond_43
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget v4, v4, Lcom/google/android/gms/internal/ads/Ey;->FH:I

    add-int/lit8 v13, v4, 0x1

    goto/16 :goto_2c

    :cond_44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v4, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/Dy;->U2:Z

    if-nez v4, :cond_3b

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->u7()V

    goto/16 :goto_27

    :cond_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/Ey;->u7:Z

    if-eqz v4, :cond_47

    const/4 v4, 0x0

    :goto_2d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v5, v5

    if-ge v4, v5, :cond_37

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    aget-object v5, v5, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/Ey;->Hw:[Lcom/google/android/gms/internal/ads/HB;

    aget-object v6, v6, v4

    if-eqz v6, :cond_46

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Oy;->we()Lcom/google/android/gms/internal/ads/HB;

    move-result-object v7

    if-ne v7, v6, :cond_46

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Oy;->gn()Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Oy;->u7()V

    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_47
    const/4 v4, 0x0

    :goto_2e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v5, v5

    if-ge v4, v5, :cond_49

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    aget-object v5, v5, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/Ey;->Hw:[Lcom/google/android/gms/internal/ads/HB;

    aget-object v6, v6, v4

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Oy;->we()Lcom/google/android/gms/internal/ads/HB;

    move-result-object v7

    if-ne v7, v6, :cond_37

    if-eqz v6, :cond_48

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Oy;->gn()Z

    move-result v5

    if-eqz v5, :cond_37

    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    :cond_49
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v4, :cond_37

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/Ey;->tp:Z

    if-eqz v4, :cond_37

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/Ey;->J0:Lcom/google/android/gms/internal/ads/eD;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v8, v4, Lcom/google/android/gms/internal/ads/Ey;->J0:Lcom/google/android/gms/internal/ads/eD;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/yB;->v5()J

    move-result-wide v4

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v10

    if-eqz v4, :cond_4a

    const/4 v4, 0x1

    :goto_2f
    const/4 v5, 0x0

    move v6, v5

    :goto_30
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v5, v5

    if-ge v6, v5, :cond_37

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    aget-object v9, v5, v6

    iget-object v5, v7, Lcom/google/android/gms/internal/ads/eD;->DW:Lcom/google/android/gms/internal/ads/bD;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/bD;->j6(I)Lcom/google/android/gms/internal/ads/_C;

    move-result-object v5

    if-eqz v5, :cond_4c

    if-nez v4, :cond_4d

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Oy;->VH()Z

    move-result v5

    if-nez v5, :cond_4c

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/eD;->DW:Lcom/google/android/gms/internal/ads/bD;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/bD;->j6(I)Lcom/google/android/gms/internal/ads/_C;

    move-result-object v10

    iget-object v5, v7, Lcom/google/android/gms/internal/ads/eD;->Hw:[Lcom/google/android/gms/internal/ads/Ry;

    aget-object v5, v5, v6

    iget-object v11, v8, Lcom/google/android/gms/internal/ads/eD;->Hw:[Lcom/google/android/gms/internal/ads/Ry;

    aget-object v11, v11, v6

    if-eqz v10, :cond_4d

    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/Ry;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/_C;->length()I

    move-result v5

    new-array v11, v5, [Lcom/google/android/gms/internal/ads/zzfs;

    const/4 v5, 0x0

    :goto_31
    array-length v12, v11

    if-ge v5, v12, :cond_4b

    invoke-interface {v10, v5}, Lcom/google/android/gms/internal/ads/_C;->j6(I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v12

    aput-object v12, v11, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    :cond_4a
    const/4 v4, 0x0

    goto :goto_2f

    :cond_4b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/Ey;->Hw:[Lcom/google/android/gms/internal/ads/HB;

    aget-object v5, v5, v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/Ey;->DW()J

    move-result-wide v12

    invoke-interface {v9, v11, v5, v12, v13}, Lcom/google/android/gms/internal/ads/Oy;->j6([Lcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/HB;J)V

    :cond_4c
    :goto_32
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_30

    :cond_4d
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Oy;->u7()V

    goto :goto_32

    :cond_4e
    const-string v4, "doSomeWork"

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/RD;->j6(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->Zo()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/Fy;->FH:J

    invoke-interface {v4, v6, v7}, Lcom/google/android/gms/internal/ads/yB;->FH(J)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v9, v8
    :try_end_15
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x1

    move v7, v5

    :goto_33
    if-ge v7, v9, :cond_54

    aget-object v10, v8, v7

    :try_start_16
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/Dy;->yS:J

    invoke-interface {v10, v12, v13, v14, v15}, Lcom/google/android/gms/internal/ads/Oy;->j6(JJ)V

    if-eqz v6, :cond_51

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/Oy;->Hw()Z

    move-result v5

    if-eqz v5, :cond_51

    const/4 v5, 0x1

    move v6, v5

    :goto_34
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/Oy;->FH()Z

    move-result v5

    if-nez v5, :cond_4f

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/Oy;->Hw()Z

    move-result v5

    if-eqz v5, :cond_52

    :cond_4f
    const/4 v5, 0x1

    :goto_35
    if-nez v5, :cond_50

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/Oy;->Zo()V

    :cond_50
    if-eqz v4, :cond_53

    if-eqz v5, :cond_53

    const/4 v4, 0x1

    :goto_36
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_33

    :cond_51
    const/4 v5, 0x0

    move v6, v5

    goto :goto_34

    :cond_52
    const/4 v5, 0x0

    goto :goto_35

    :cond_53
    const/4 v4, 0x0

    goto :goto_36

    :cond_54
    if-nez v4, :cond_55

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->gn()V

    :cond_55
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->Ws:Lcom/google/android/gms/internal/ads/GD;

    if-eqz v5, :cond_56

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->Ws:Lcom/google/android/gms/internal/ads/GD;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/GD;->DW()Lcom/google/android/gms/internal/ads/Ny;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Dy;->J0:Lcom/google/android/gms/internal/ads/Ny;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/Ny;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_56

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->J0:Lcom/google/android/gms/internal/ads/Ny;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Dy;->v5:Lcom/google/android/gms/internal/ads/PD;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/Dy;->Ws:Lcom/google/android/gms/internal/ads/GD;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/PD;->j6(Lcom/google/android/gms/internal/ads/GD;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    const/4 v8, 0x7

    invoke-virtual {v7, v8, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_56
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget v7, v7, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v8, v9}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-result-object v5

    iget-wide v8, v5, Lcom/google/android/gms/internal/ads/Uy;->Hw:J

    if-eqz v6, :cond_59

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v8, v6

    if-eqz v5, :cond_57

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/Fy;->FH:J

    cmp-long v5, v8, v6

    if-gtz v5, :cond_59

    :cond_57
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/Ey;->u7:Z

    if-eqz v5, :cond_59

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/Dy;->j6(I)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->v5()V

    :cond_58
    :goto_37
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/Dy;->a8:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_61

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v6, v5

    move/from16 v4, v18

    :goto_38
    if-ge v4, v6, :cond_61

    aget-object v7, v5, v4

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/Oy;->Zo()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    :cond_59
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/Dy;->a8:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v5, v5

    if-lez v5, :cond_5e

    if-eqz v4, :cond_5d

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/Dy;->Mr:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/Ey;->tp:Z

    if-nez v4, :cond_5a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/Ey;->gn:J

    :goto_39
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v7, v4, v8

    if-nez v7, :cond_5c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-boolean v4, v4, Lcom/google/android/gms/internal/ads/Ey;->u7:Z

    if-eqz v4, :cond_5b

    const/4 v4, 0x1

    :goto_3a
    if-eqz v4, :cond_5d

    const/4 v4, 0x1

    :goto_3b
    if-eqz v4, :cond_58

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/Dy;->j6(I)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/Dy;->j3:Z

    if-eqz v4, :cond_58

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->Hw()V

    goto :goto_37

    :cond_5a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/yB;->VH()J

    move-result-wide v4

    goto :goto_39

    :cond_5b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget v5, v5, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v7, v8}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-result-object v4

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/Uy;->Hw:J

    :cond_5c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Dy;->Hw:Lcom/google/android/gms/internal/ads/Ly;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/Ey;->DW()J

    move-result-wide v8

    sub-long v8, v10, v8

    sub-long/2addr v4, v8

    invoke-interface {v7, v4, v5, v6}, Lcom/google/android/gms/internal/ads/Ly;->j6(JZ)Z

    move-result v4

    goto :goto_3a

    :cond_5d
    const/4 v4, 0x0

    goto :goto_3b

    :cond_5e
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/google/android/gms/internal/ads/Dy;->DW(J)Z

    move-result v4

    goto :goto_3b

    :cond_5f
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gms/internal/ads/Dy;->a8:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_58

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v5, v5

    if-lez v5, :cond_60

    :goto_3c
    if-nez v4, :cond_58

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/Dy;->j3:Z

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/Dy;->Mr:Z

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/Dy;->j6(I)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->v5()V

    goto/16 :goto_37

    :cond_60
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/google/android/gms/internal/ads/Dy;->DW(J)Z

    move-result v4

    goto :goto_3c

    :cond_61
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/Dy;->j3:Z

    if-eqz v4, :cond_62

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/Dy;->a8:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_63

    :cond_62
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/Dy;->a8:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_64

    :cond_63
    const-wide/16 v4, 0xa

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/Dy;->j6(JJ)V

    :goto_3d
    invoke-static {}, Lcom/google/android/gms/internal/ads/RD;->j6()V

    goto/16 :goto_24

    :cond_64
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v4, v4

    if-eqz v4, :cond_65

    const-wide/16 v4, 0x3e8

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/Dy;->j6(JJ)V

    goto :goto_3d

    :cond_65
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_3d

    :pswitch_b
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_67

    const/4 v4, 0x1

    :goto_3e
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/Dy;->Mr:Z

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/Dy;->j3:Z

    if-nez v4, :cond_68

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->v5()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->Zo()V

    :cond_66
    :goto_3f
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_67
    const/4 v4, 0x0

    goto :goto_3e

    :cond_68
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/Dy;->a8:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_69

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->Hw()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3f

    :cond_69
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gms/internal/ads/Dy;->a8:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_66

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3f

    :pswitch_c
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/AB;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_6b

    const/4 v5, 0x1

    :goto_40
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/Dy;->FH(Z)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->Hw:Lcom/google/android/gms/internal/ads/Ly;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Ly;->j6()V

    if-eqz v5, :cond_6a

    new-instance v5, Lcom/google/android/gms/internal/ads/Fy;

    const/4 v6, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v5, v6, v8, v9}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    :cond_6a
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->QX:Lcom/google/android/gms/internal/ads/AB;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->u7:Lcom/google/android/gms/internal/ads/wy;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-interface {v4, v5, v6, v0}, Lcom/google/android/gms/internal/ads/AB;->j6(Lcom/google/android/gms/internal/ads/wy;ZLcom/google/android/gms/internal/ads/BB;)V

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/Dy;->j6(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_16
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_2

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_6b
    const/4 v5, 0x0

    goto :goto_40

    :catch_3
    move-exception v4

    goto/16 :goto_7

    :catch_4
    move-exception v4

    goto/16 :goto_8

    :cond_6c
    move v7, v6

    move v8, v4

    goto/16 :goto_1b

    :cond_6d
    move v4, v5

    goto/16 :goto_e

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public final j6()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/AB;Z)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/IB;)V
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/yB;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Sy;IJ)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/4 v1, 0x3

    new-instance v2, Lcom/google/android/gms/internal/ads/Gy;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/Gy;-><init>(Lcom/google/android/gms/internal/ads/Sy;IJ)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Sy;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/yB;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final j6(Z)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final varargs j6([Lcom/google/android/gms/internal/ads/zy;)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Dy;->aM:Z

    if-eqz v0, :cond_0

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/Dy;->rN:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Dy;->rN:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
