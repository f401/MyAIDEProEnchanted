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
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Dy;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Dy;->FH:Lcom/google/android/gms/internal/ads/cD;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Dy;->Hw:Lcom/google/android/gms/internal/ads/Ly;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/Dy;->j3:Z

    const/4 p3, 0x0

    iput p3, p0, Lcom/google/android/gms/internal/ads/Dy;->lg:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    const/4 p4, 0x1

    iput p4, p0, Lcom/google/android/gms/internal/ads/Dy;->a8:I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/Dy;->u7:Lcom/google/android/gms/internal/ads/wy;

    array-length p4, p1

    new-array p4, p4, [Lcom/google/android/gms/internal/ads/Qy;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Dy;->DW:[Lcom/google/android/gms/internal/ads/Qy;

    const/4 p4, 0x0

    :goto_1d
    array-length p5, p1

    if-ge p4, p5, :cond_32

    aget-object p5, p1, p4

    invoke-interface {p5, p4}, Lcom/google/android/gms/internal/ads/Oy;->setIndex(I)V

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/Dy;->DW:[Lcom/google/android/gms/internal/ads/Qy;

    aget-object p6, p1, p4

    invoke-interface {p6}, Lcom/google/android/gms/internal/ads/Oy;->J0()Lcom/google/android/gms/internal/ads/Qy;

    move-result-object p6

    aput-object p6, p5, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_1d

    :cond_32
    new-instance p1, Lcom/google/android/gms/internal/ads/PD;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/PD;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Dy;->v5:Lcom/google/android/gms/internal/ads/PD;

    new-array p1, p3, [Lcom/google/android/gms/internal/ads/Oy;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    new-instance p1, Lcom/google/android/gms/internal/ads/Vy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/Vy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Dy;->tp:Lcom/google/android/gms/internal/ads/Vy;

    new-instance p1, Lcom/google/android/gms/internal/ads/Uy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/Uy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/cD;->j6(Lcom/google/android/gms/internal/ads/dD;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/Ny;->j6:Lcom/google/android/gms/internal/ads/Ny;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Dy;->J0:Lcom/google/android/gms/internal/ads/Ny;

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "ExoPlayerImplInternal:Handler"

    const/16 p3, -0x10

    invoke-direct {p1, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Dy;->VH:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    return-void
.end method

.method private final DW(IJ)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    const-wide v0, -0x7fffffffffffffffL  # -4.9E-324

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/Dy;->DW(Lcom/google/android/gms/internal/ads/Sy;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final DW(Lcom/google/android/gms/internal/ads/Sy;IJ)Landroid/util/Pair;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Sy;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Sy;IJJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final DW(Lcom/google/android/gms/internal/ads/Ey;)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Dy;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v5, v4

    if-ge v2, v5, :cond_5c

    aget-object v4, v4, v2

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Oy;->getState()I

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v5, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v5, 0x0

    :goto_1d
    aput-boolean v5, v0, v2

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/Ey;->J0:Lcom/google/android/gms/internal/ads/eD;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/eD;->DW:Lcom/google/android/gms/internal/ads/bD;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/bD;->j6(I)Lcom/google/android/gms/internal/ads/_C;

    move-result-object v5

    if-eqz v5, :cond_2b

    add-int/lit8 v3, v3, 0x1

    :cond_2b
    aget-boolean v6, v0, v2

    if-eqz v6, :cond_59

    if-eqz v5, :cond_43

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Oy;->VH()Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Oy;->we()Lcom/google/android/gms/internal/ads/HB;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/Ey;->Hw:[Lcom/google/android/gms/internal/ads/HB;

    aget-object v6, v6, v2

    if-ne v5, v6, :cond_59

    :cond_43
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Dy;->J8:Lcom/google/android/gms/internal/ads/Oy;

    if-ne v4, v5, :cond_53

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Dy;->v5:Lcom/google/android/gms/internal/ads/PD;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/Dy;->Ws:Lcom/google/android/gms/internal/ads/GD;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/PD;->j6(Lcom/google/android/gms/internal/ads/GD;)V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/Dy;->Ws:Lcom/google/android/gms/internal/ads/GD;

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/Dy;->J8:Lcom/google/android/gms/internal/ads/Oy;

    :cond_53
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Oy;)V

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Oy;->tp()V

    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_5c
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Ey;->J0:Lcom/google/android/gms/internal/ads/eD;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/internal/ads/Dy;->j6([ZI)V

    return-void
.end method

.method private final DW(Ljava/lang/Object;I)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/Hy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    invoke-direct {v1, v2, p1, v3, p2}, Lcom/google/android/gms/internal/ads/Hy;-><init>(Lcom/google/android/gms/internal/ads/Sy;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/Fy;I)V

    const/4 p1, 0x6

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private final DW(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Dy;->U2:Z

    if-eq v0, p1, :cond_11

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Dy;->U2:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    return-void
.end method

.method private final DW(I)Z
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Dy;->tp:Lcom/google/android/gms/internal/ads/Vy;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Vy;ZJ)Lcom/google/android/gms/internal/ads/Vy;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Vy;->v5:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Dy;->tp:Lcom/google/android/gms/internal/ads/Vy;

    iget v4, p0, Lcom/google/android/gms/internal/ads/Dy;->lg:I

    invoke-virtual {v0, p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Lcom/google/android/gms/internal/ads/Vy;I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_29

    const/4 p1, 0x1

    return p1

    :cond_29
    return v2
.end method

.method private final DW(J)Z
    .registers 6

    const-wide v0, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/Fy;->FH:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_1e

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz p1, :cond_1c

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/Ey;->tp:Z

    if-eqz p1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 p1, 0x0

    return p1

    :cond_1e
    :goto_1e
    const/4 p1, 0x1

    return p1
.end method

.method private final FH(Z)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Mr:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->v5:Lcom/google/android/gms/internal/ads/PD;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/PD;->Hw()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->Ws:Lcom/google/android/gms/internal/ads/GD;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->J8:Lcom/google/android/gms/internal/ads/Oy;

    const-wide/32 v2, 0x3938700

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v3, :cond_34

    aget-object v5, v2, v4

    :try_start_20
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Oy;)V

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Oy;->tp()V
    :try_end_26
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_20 .. :try_end_26} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_26} :catch_27

    goto :goto_31

    :catch_27
    move-exception v5

    goto :goto_2a

    :catch_29
    move-exception v5

    :goto_2a
    const-string v6, "ExoPlayerImplInternal"

    const-string v7, "Stop failed."

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_34
    new-array v2, v0, [Lcom/google/android/gms/internal/ads/Oy;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v2, :cond_3d

    goto :goto_3f

    :cond_3d
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    :goto_3f
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Ey;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Dy;->DW(Z)V

    if-eqz p1, :cond_58

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Dy;->QX:Lcom/google/android/gms/internal/ads/AB;

    if-eqz p1, :cond_56

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/AB;->DW()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->QX:Lcom/google/android/gms/internal/ads/AB;

    :cond_56
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    :cond_58
    return-void
.end method

.method private final Hw()V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Mr:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->v5:Lcom/google/android/gms/internal/ads/PD;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/PD;->FH()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v2, v1

    :goto_b
    if-ge v0, v2, :cond_15

    aget-object v3, v1, v0

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Oy;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_15
    return-void
.end method

.method private final VH()V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Dy;->FH(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->Hw:Lcom/google/android/gms/internal/ads/Ly;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ly;->DW()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Dy;->j6(I)V

    return-void
.end method

.method private final Zo()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/yB;->v5()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Dy;->j6(J)V

    goto :goto_42

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->J8:Lcom/google/android/gms/internal/ads/Oy;

    if-eqz v0, :cond_30

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Oy;->Hw()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Ws:Lcom/google/android/gms/internal/ads/GD;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/GD;->j6()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->v5:Lcom/google/android/gms/internal/ads/PD;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/PD;->j6(J)V

    goto :goto_38

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->v5:Lcom/google/android/gms/internal/ads/PD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/PD;->j6()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    :goto_38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ey;->DW()J

    move-result-wide v3

    sub-long/2addr v1, v3

    move-wide v0, v1

    :goto_42
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iput-wide v0, v2, Lcom/google/android/gms/internal/ads/Fy;->FH:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Dy;->yS:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v0, v0

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_59

    move-wide v3, v1

    goto :goto_61

    :cond_59
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/yB;->VH()J

    move-result-wide v3

    :goto_61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    cmp-long v5, v3, v1

    if-nez v5, :cond_76

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget v2, v2, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-result-object v1

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/Uy;->Hw:J

    :cond_76
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/Fy;->Hw:J

    return-void
.end method

.method private final gn()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v0, :cond_29

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ey;->tp:Z

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v1, :cond_10

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    if-ne v1, v0, :cond_29

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Oy;->gn()Z

    move-result v3

    if-nez v3, :cond_1f

    return-void

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/yB;->Zo()V

    :cond_29
    return-void
.end method

.method private final j6(ILcom/google/android/gms/internal/ads/Sy;Lcom/google/android/gms/internal/ads/Sy;)I
    .registers 10

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/Sy;->FH()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    :goto_7
    if-ge v1, v0, :cond_25

    if-ne v3, v2, :cond_25

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Dy;->tp:Lcom/google/android/gms/internal/ads/Vy;

    iget v5, p0, Lcom/google/android/gms/internal/ads/Dy;->lg:I

    invoke-virtual {p2, p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Lcom/google/android/gms/internal/ads/Vy;I)I

    move-result p1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    const/4 v4, 0x1

    invoke-virtual {p2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Uy;->DW:Ljava/lang/Object;

    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/ads/Sy;->j6(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_25
    return v3
.end method

.method private final j6(IJ)J
    .registers 11

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Dy;->v5()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Mr:Z

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/Dy;->j6(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    const/4 v3, 0x0

    if-nez v2, :cond_18

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ey;->j6()V

    :cond_16
    move-object v4, v3

    goto :goto_2b

    :cond_18
    move-object v4, v3

    :goto_19
    if-eqz v2, :cond_2b

    iget v5, v2, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    if-ne v5, p1, :cond_25

    iget-boolean v5, v2, Lcom/google/android/gms/internal/ads/Ey;->tp:Z

    if-eqz v5, :cond_25

    move-object v4, v2

    goto :goto_28

    :cond_25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Ey;->j6()V

    :goto_28
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    goto :goto_19

    :cond_2b
    :goto_2b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-ne p1, v4, :cond_33

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    if-eq p1, v2, :cond_4b

    :cond_33
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v2, p1

    const/4 v5, 0x0

    :goto_37
    if-ge v5, v2, :cond_41

    aget-object v6, p1, v5

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/Oy;->tp()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    :cond_41
    new-array p1, v0, [Lcom/google/android/gms/internal/ads/Oy;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/Dy;->Ws:Lcom/google/android/gms/internal/ads/GD;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/Dy;->J8:Lcom/google/android/gms/internal/ads/Oy;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    :cond_4b
    if-eqz v4, :cond_6a

    iput-object v3, v4, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/Dy;->DW(Lcom/google/android/gms/internal/ads/Ey;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/Ey;->EQ:Z

    if-eqz v0, :cond_63

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/yB;->j6(J)J

    move-result-wide p1

    move-wide p2, p1

    :cond_63
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/Dy;->j6(J)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Dy;->u7()V

    goto :goto_73

    :cond_6a
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/Dy;->j6(J)V

    :goto_73
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-wide p2
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/Gy;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Gy;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Gy;->j6:Lcom/google/android/gms/internal/ads/Sy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Sy;->j6()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    :cond_a
    :try_start_a
    iget v1, p1, Lcom/google/android/gms/internal/ads/Gy;->DW:I

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/Gy;->FH:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Dy;->DW(Lcom/google/android/gms/internal/ads/Sy;IJ)Landroid/util/Pair;

    move-result-object p1
    :try_end_12
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_12} :catch_60

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    if-ne v1, v0, :cond_17

    return-object p1

    :cond_17
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Uy;->DW:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/Sy;->j6(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_3c
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/Dy;->j6(ILcom/google/android/gms/internal/ads/Sy;Lcom/google/android/gms/internal/ads/Sy;)I

    move-result p1

    if-eq p1, v2, :cond_5e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    const-wide v0, -0x7fffffffffffffffL  # -4.9E-324

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/internal/ads/Dy;->DW(IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_5e
    const/4 p1, 0x0

    return-object p1

    :catch_60
    move-exception v0

    new-instance v0, Lcom/google/android/gms/internal/ads/Ky;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget v2, p1, Lcom/google/android/gms/internal/ads/Gy;->DW:I

    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/Gy;->FH:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/Ky;-><init>(Lcom/google/android/gms/internal/ads/Sy;IJ)V

    throw v0
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/Sy;IJJ)Landroid/util/Pair;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Sy;",
            "IJJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Sy;->DW()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/internal/ads/CD;->j6(III)I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Dy;->tp:Lcom/google/android/gms/internal/ads/Vy;

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    move-wide v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Vy;ZJ)Lcom/google/android/gms/internal/ads/Vy;

    const-wide p5, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long p2, p3, p5

    if-nez p2, :cond_24

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Dy;->tp:Lcom/google/android/gms/internal/ads/Vy;

    iget-wide p3, p2, Lcom/google/android/gms/internal/ads/Vy;->gn:J

    cmp-long p2, p3, p5

    if-nez p2, :cond_24

    const/4 p1, 0x0

    return-object p1

    :cond_24
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Dy;->tp:Lcom/google/android/gms/internal/ads/Vy;

    iget-wide v2, p2, Lcom/google/android/gms/internal/ads/Vy;->tp:J

    add-long/2addr v2, p3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    invoke-virtual {p1, v1, p2, v1}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-result-object p2

    iget-wide p2, p2, Lcom/google/android/gms/internal/ads/Uy;->Hw:J

    const/4 p4, 0x0

    :goto_32
    cmp-long v0, p2, p5

    if-eqz v0, :cond_4c

    cmp-long v0, v2, p2

    if-ltz v0, :cond_4c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->tp:Lcom/google/android/gms/internal/ads/Vy;

    iget v0, v0, Lcom/google/android/gms/internal/ads/Vy;->VH:I

    if-ge p4, v0, :cond_4c

    sub-long/2addr v2, p2

    add-int/lit8 p4, p4, 0x1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    invoke-virtual {p1, p4, p2, v1}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-result-object p2

    iget-wide p2, p2, Lcom/google/android/gms/internal/ads/Uy;->Hw:J

    goto :goto_32

    :cond_4c
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final j6(I)V
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/Dy;->a8:I

    if-eq v0, p1, :cond_11

    iput p1, p0, Lcom/google/android/gms/internal/ads/Dy;->a8:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    return-void
.end method

.method private final j6(J)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-nez v0, :cond_8

    const-wide/32 v0, 0x3938700

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ey;->DW()J

    move-result-wide v0

    :goto_c
    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->v5:Lcom/google/android/gms/internal/ads/PD;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/PD;->j6(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_18
    if-ge v0, p2, :cond_24

    aget-object v1, p1, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/Oy;->j6(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_24
    return-void
.end method

.method private final j6(JJ)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    add-long/2addr p1, p3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-gtz v0, :cond_18

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_18
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    invoke-virtual {p3, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/Ey;)V
    .registers 1

    :goto_0
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Ey;->j6()V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    goto :goto_0

    :cond_8
    return-void
.end method

.method private static j6(Lcom/google/android/gms/internal/ads/Oy;)V
    .registers 3

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Oy;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/Oy;->stop()V

    :cond_a
    return-void
.end method

.method private final j6(Ljava/lang/Object;I)V
    .registers 7

    new-instance v0, Lcom/google/android/gms/internal/ads/Fy;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Dy;->DW(Ljava/lang/Object;I)V

    new-instance p1, Lcom/google/android/gms/internal/ads/Fy;

    const-wide v0, -0x7fffffffffffffffL  # -4.9E-324

    invoke-direct {p1, v3, v0, v1}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/Dy;->j6(I)V

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/Dy;->FH(Z)V

    return-void
.end method

.method private final j6([ZI)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/Oy;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v5, v4

    if-ge v2, v5, :cond_93

    aget-object v4, v4, v2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/Ey;->J0:Lcom/google/android/gms/internal/ads/eD;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/eD;->DW:Lcom/google/android/gms/internal/ads/bD;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/bD;->j6(I)Lcom/google/android/gms/internal/ads/_C;

    move-result-object v5

    if-eqz v5, :cond_8f

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    aput-object v4, v6, v3

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Oy;->getState()I

    move-result v6

    if-nez v6, :cond_8d

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/Ey;->J0:Lcom/google/android/gms/internal/ads/eD;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/eD;->Hw:[Lcom/google/android/gms/internal/ads/Ry;

    aget-object v7, v6, v2

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/Dy;->j3:Z

    const/4 v8, 0x1

    if-eqz v6, :cond_3c

    iget v6, v0, Lcom/google/android/gms/internal/ads/Dy;->a8:I

    const/4 v9, 0x3

    if-ne v6, v9, :cond_3c

    const/4 v15, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v15, 0x0

    :goto_3d
    aget-boolean v6, p1, v2

    if-nez v6, :cond_45

    if-eqz v15, :cond_45

    const/4 v12, 0x1

    goto :goto_46

    :cond_45
    const/4 v12, 0x0

    :goto_46
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/_C;->length()I

    move-result v6

    new-array v8, v6, [Lcom/google/android/gms/internal/ads/zzfs;

    const/4 v9, 0x0

    :goto_4d
    if-ge v9, v6, :cond_58

    invoke-interface {v5, v9}, Lcom/google/android/gms/internal/ads/_C;->j6(I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4d

    :cond_58
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/Ey;->Hw:[Lcom/google/android/gms/internal/ads/HB;

    aget-object v9, v6, v2

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/Ey;->DW()J

    move-result-wide v13

    move-object v6, v4

    invoke-interface/range {v6 .. v14}, Lcom/google/android/gms/internal/ads/Oy;->j6(Lcom/google/android/gms/internal/ads/Ry;[Lcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/HB;JZJ)V

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Oy;->EQ()Lcom/google/android/gms/internal/ads/GD;

    move-result-object v5

    if-eqz v5, :cond_88

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->Ws:Lcom/google/android/gms/internal/ads/GD;

    if-nez v6, :cond_7c

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/Dy;->Ws:Lcom/google/android/gms/internal/ads/GD;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/Dy;->J8:Lcom/google/android/gms/internal/ads/Oy;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Dy;->J0:Lcom/google/android/gms/internal/ads/Ny;

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/GD;->j6(Lcom/google/android/gms/internal/ads/Ny;)Lcom/google/android/gms/internal/ads/Ny;

    goto :goto_88

    :cond_7c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Multiple renderer media clocks enabled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/vy;->j6(Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/vy;

    move-result-object v1

    throw v1

    :cond_88
    :goto_88
    if-eqz v15, :cond_8d

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Oy;->start()V

    :cond_8d
    add-int/lit8 v3, v3, 0x1

    :cond_8f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b

    :cond_93
    return-void
.end method

.method private final u7()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/Ey;->tp:Z

    if-nez v1, :cond_9

    const-wide/16 v0, 0x0

    goto :goto_f

    :cond_9
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/yB;->DW()J

    move-result-wide v0

    :goto_f
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1a

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Dy;->DW(Z)V

    return-void

    :cond_1a
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Ey;->DW()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Dy;->Hw:Lcom/google/android/gms/internal/ads/Ly;

    sub-long/2addr v0, v3

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/ads/Ly;->j6(J)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Dy;->DW(Z)V

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/internal/ads/yB;->DW(J)Z

    :cond_36
    return-void
.end method

.method private final v5()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->v5:Lcom/google/android/gms/internal/ads/PD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/PD;->Hw()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Oy;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Dy;->aM:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_25

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Dy;->aM:Z
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_25

    if-nez v0, :cond_1e

    :try_start_11
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_15
    .catchall {:try_start_11 .. :try_end_14} :catchall_25

    goto :goto_d

    :catch_15
    move-exception v0

    :try_start_16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_d

    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->VH:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_25

    monitor-exit p0

    return-void

    :catchall_25
    move-exception v0

    monitor-exit p0

    goto :goto_29

    :goto_28
    throw v0

    :goto_29
    goto :goto_28
.end method

.method public final varargs DW([Lcom/google/android/gms/internal/ads/zy;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Dy;->aM:Z

    if-eqz v0, :cond_e

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Ignoring messages sent after release."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_32

    monitor-exit p0

    return-void

    :cond_e
    :try_start_e
    iget v0, p0, Lcom/google/android/gms/internal/ads/Dy;->rN:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Dy;->rN:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_1f
    iget p1, p0, Lcom/google/android/gms/internal/ads/Dy;->er:I
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_32

    if-gt p1, v0, :cond_30

    :try_start_23
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_27
    .catchall {:try_start_23 .. :try_end_26} :catchall_32

    goto :goto_1f

    :catch_27
    move-exception p1

    :try_start_28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_32

    goto :goto_1f

    :cond_30
    monitor-exit p0

    return-void

    :catchall_32
    move-exception p1

    monitor-exit p0

    goto :goto_36

    :goto_35
    throw p1

    :goto_36
    goto :goto_35
.end method

.method public final FH()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 35

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    const/4 v10, 0x1

    :try_start_5
    iget v2, v1, Landroid/os/Message;->what:I
    :try_end_7
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_5 .. :try_end_7} :catch_8b1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_7} :catch_86f
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_7} :catch_878

    const/4 v11, 0x7

    const-wide/16 v3, 0x0

    const/4 v14, 0x3

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v15, 0x4

    const-wide v12, -0x7fffffffffffffffL  # -4.9E-324

    const/4 v7, 0x2

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_8ca

    const/4 v1, 0x0

    return v1

    :pswitch_1a  #0xc
    :try_start_1a
    iget v1, v1, Landroid/os/Message;->arg1:I

    iput v1, v8, Lcom/google/android/gms/internal/ads/Dy;->lg:I

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v2, :cond_23

    goto :goto_25

    :cond_23
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    :goto_25
    if-eqz v2, :cond_97

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    if-ne v2, v3, :cond_2d

    const/4 v3, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v3, 0x0

    :goto_2e
    iget-object v4, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    if-ne v2, v4, :cond_34

    const/4 v4, 0x1

    goto :goto_35

    :cond_34
    const/4 v4, 0x0

    :goto_35
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget v12, v2, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/Dy;->tp:Lcom/google/android/gms/internal/ads/Vy;

    invoke-virtual {v11, v12, v13, v14, v1}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Lcom/google/android/gms/internal/ads/Vy;I)I

    move-result v11

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v12, :cond_60

    if-eq v11, v5, :cond_60

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    iget v12, v12, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    if-ne v12, v11, :cond_60

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v11, v8, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    if-ne v2, v11, :cond_55

    const/4 v11, 0x1

    goto :goto_56

    :cond_55
    const/4 v11, 0x0

    :goto_56
    or-int/2addr v3, v11

    iget-object v11, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    if-ne v2, v11, :cond_5d

    const/4 v11, 0x1

    goto :goto_5e

    :cond_5d
    const/4 v11, 0x0

    :goto_5e
    or-int/2addr v4, v11

    goto :goto_35

    :cond_60
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v5, :cond_6b

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Ey;)V

    iput-object v6, v2, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    :cond_6b
    iget v5, v2, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    invoke-direct {v8, v5}, Lcom/google/android/gms/internal/ads/Dy;->DW(I)Z

    move-result v5

    iput-boolean v5, v2, Lcom/google/android/gms/internal/ads/Ey;->u7:Z

    if-nez v4, :cond_77

    iput-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    :cond_77
    if-nez v3, :cond_8e

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v2, :cond_8e

    iget v2, v2, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/Fy;->FH:J

    invoke-direct {v8, v2, v3, v4}, Lcom/google/android/gms/internal/ads/Dy;->j6(IJ)J

    move-result-wide v3

    new-instance v5, Lcom/google/android/gms/internal/ads/Fy;

    invoke-direct {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    iput-object v5, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    :cond_8e
    iget v2, v8, Lcom/google/android/gms/internal/ads/Dy;->a8:I

    if-ne v2, v15, :cond_97

    if-eqz v1, :cond_97

    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/ads/Dy;->j6(I)V

    :cond_97
    return v10

    :pswitch_98  #0xb
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Lcom/google/android/gms/internal/ads/zy;
    :try_end_9c
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_1a .. :try_end_9c} :catch_871
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_9c} :catch_86f
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_9c} :catch_878

    :try_start_9c
    array-length v2, v1
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_c5

    :goto_9d
    if-ge v9, v2, :cond_ad

    aget-object v3, v1, v9

    :try_start_a1
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zy;->j6:Lcom/google/android/gms/internal/ads/yy;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zy;->DW:I

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zy;->FH:Ljava/lang/Object;

    invoke-interface {v4, v5, v3}, Lcom/google/android/gms/internal/ads/yy;->j6(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_9d

    :cond_ad
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->QX:Lcom/google/android/gms/internal/ads/AB;

    if-eqz v1, :cond_b6

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_b6
    .catchall {:try_start_a1 .. :try_end_b6} :catchall_c5

    :cond_b6
    :try_start_b6
    monitor-enter p0
    :try_end_b7
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_b6 .. :try_end_b7} :catch_871
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b7} :catch_86f
    .catch Ljava/lang/RuntimeException; {:try_start_b6 .. :try_end_b7} :catch_878

    :try_start_b7
    iget v1, v8, Lcom/google/android/gms/internal/ads/Dy;->er:I

    add-int/2addr v1, v10

    iput v1, v8, Lcom/google/android/gms/internal/ads/Dy;->er:I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return v10

    :catchall_c1
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_c4
    .catchall {:try_start_b7 .. :try_end_c4} :catchall_c1

    :try_start_c4
    throw v1

    :catchall_c5
    move-exception v0

    move-object v1, v0

    monitor-enter p0
    :try_end_c8
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_c4 .. :try_end_c8} :catch_871
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c8} :catch_86f
    .catch Ljava/lang/RuntimeException; {:try_start_c4 .. :try_end_c8} :catch_878

    :try_start_c8
    iget v2, v8, Lcom/google/android/gms/internal/ads/Dy;->er:I

    add-int/2addr v2, v10

    iput v2, v8, Lcom/google/android/gms/internal/ads/Dy;->er:I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_d1
    .catchall {:try_start_c8 .. :try_end_d1} :catchall_d2

    :try_start_d1
    throw v1
    :try_end_d2
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_d1 .. :try_end_d2} :catch_871
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d2} :catch_86f
    .catch Ljava/lang/RuntimeException; {:try_start_d1 .. :try_end_d2} :catch_878

    :catchall_d2
    move-exception v0

    move-object v1, v0

    :try_start_d4
    monitor-exit p0
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d2

    :try_start_d5
    throw v1

    :pswitch_d6  #0xa
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v1, :cond_1bc

    const/4 v2, 0x1

    :goto_db
    if-eqz v1, :cond_1bc

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/Ey;->tp:Z

    if-nez v3, :cond_e3

    goto/16 :goto_1bc

    :cond_e3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ey;->Hw()Z

    move-result v3

    if-nez v3, :cond_f1

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    if-ne v1, v3, :cond_ee

    const/4 v2, 0x0

    :cond_ee
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    goto :goto_db

    :cond_f1
    if-eqz v2, :cond_187

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-eq v2, v3, :cond_fb

    const/4 v2, 0x1

    goto :goto_fc

    :cond_fb
    const/4 v2, 0x0

    :goto_fc
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Ey;)V

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iput-object v6, v3, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/Dy;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v4, v4

    new-array v4, v4, [Z

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget-wide v11, v5, Lcom/google/android/gms/internal/ads/Fy;->FH:J

    invoke-virtual {v3, v11, v12, v2, v4}, Lcom/google/android/gms/internal/ads/Ey;->j6(JZ[Z)J

    move-result-wide v2

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget-wide v11, v5, Lcom/google/android/gms/internal/ads/Fy;->FH:J

    cmp-long v5, v2, v11

    if-eqz v5, :cond_127

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iput-wide v2, v5, Lcom/google/android/gms/internal/ads/Fy;->FH:J

    invoke-direct {v8, v2, v3}, Lcom/google/android/gms/internal/ads/Dy;->j6(J)V

    :cond_127
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v2, v2

    new-array v2, v2, [Z

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_12e
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/Dy;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v12, v11

    if-ge v3, v12, :cond_178

    aget-object v11, v11, v3

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/Oy;->getState()I

    move-result v12
    :try_end_139
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_d5 .. :try_end_139} :catch_871
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_139} :catch_86f
    .catch Ljava/lang/RuntimeException; {:try_start_d5 .. :try_end_139} :catch_878

    if-eqz v12, :cond_13d

    const/4 v12, 0x1

    goto :goto_13e

    :cond_13d
    const/4 v12, 0x0

    :goto_13e
    aput-boolean v12, v2, v3

    :try_start_140
    iget-object v12, v8, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/Ey;->Hw:[Lcom/google/android/gms/internal/ads/HB;

    aget-object v12, v12, v3
    :try_end_146
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_140 .. :try_end_146} :catch_871
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_146} :catch_86f
    .catch Ljava/lang/RuntimeException; {:try_start_140 .. :try_end_146} :catch_878

    if-eqz v12, :cond_14a

    add-int/lit8 v5, v5, 0x1

    :cond_14a
    aget-boolean v13, v2, v3

    if-eqz v13, :cond_175

    :try_start_14e
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/Oy;->we()Lcom/google/android/gms/internal/ads/HB;

    move-result-object v13

    if-eq v12, v13, :cond_16c

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/Dy;->J8:Lcom/google/android/gms/internal/ads/Oy;

    if-ne v11, v13, :cond_165

    if-nez v12, :cond_161

    iget-object v12, v8, Lcom/google/android/gms/internal/ads/Dy;->v5:Lcom/google/android/gms/internal/ads/PD;

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/Dy;->Ws:Lcom/google/android/gms/internal/ads/GD;

    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/ads/PD;->j6(Lcom/google/android/gms/internal/ads/GD;)V

    :cond_161
    iput-object v6, v8, Lcom/google/android/gms/internal/ads/Dy;->Ws:Lcom/google/android/gms/internal/ads/GD;

    iput-object v6, v8, Lcom/google/android/gms/internal/ads/Dy;->J8:Lcom/google/android/gms/internal/ads/Oy;

    :cond_165
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Oy;)V

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/Oy;->tp()V
    :try_end_16b
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_14e .. :try_end_16b} :catch_871
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_16b} :catch_86f
    .catch Ljava/lang/RuntimeException; {:try_start_14e .. :try_end_16b} :catch_878

    goto :goto_175

    :cond_16c
    aget-boolean v12, v4, v3

    if-eqz v12, :cond_175

    :try_start_170
    iget-wide v12, v8, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    invoke-interface {v11, v12, v13}, Lcom/google/android/gms/internal/ads/Oy;->j6(J)V

    :cond_175
    :goto_175
    add-int/lit8 v3, v3, 0x1

    goto :goto_12e

    :cond_178
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Ey;->J0:Lcom/google/android/gms/internal/ads/eD;

    invoke-virtual {v3, v14, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {v8, v2, v5}, Lcom/google/android/gms/internal/ads/Dy;->j6([ZI)V

    goto :goto_1b1

    :cond_187
    iput-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    :goto_189
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v1, :cond_191

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ey;->j6()V

    goto :goto_189

    :cond_191
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/Ey;->tp:Z

    if-eqz v1, :cond_1b1

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/Ey;->gn:J

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-wide v4, v8, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Ey;->DW()J

    move-result-wide v11

    sub-long/2addr v4, v11

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    invoke-virtual {v3, v1, v2, v9}, Lcom/google/android/gms/internal/ads/Ey;->j6(JZ)J

    :cond_1b1
    :goto_1b1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->u7()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->Zo()V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1bc
    :goto_1bc
    return v10

    :pswitch_1bd  #0x9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/yB;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v2, :cond_1cd

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    if-eq v2, v1, :cond_1ca

    goto :goto_1cd

    :cond_1ca
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->u7()V

    :cond_1cd
    :goto_1cd
    return v10

    :pswitch_1ce  #0x8
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/yB;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v2, :cond_1ff

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    if-eq v2, v1, :cond_1db

    goto :goto_1ff

    :cond_1db
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iput-boolean v10, v1, Lcom/google/android/gms/internal/ads/Ey;->tp:Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ey;->Hw()Z

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/Ey;->gn:J

    invoke-virtual {v1, v2, v3, v9}, Lcom/google/android/gms/internal/ads/Ey;->j6(JZ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/Ey;->gn:J

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-nez v1, :cond_1fc

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/Ey;->gn:J

    invoke-direct {v8, v1, v2}, Lcom/google/android/gms/internal/ads/Dy;->j6(J)V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/Dy;->DW(Lcom/google/android/gms/internal/ads/Ey;)V

    :cond_1fc
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->u7()V

    :cond_1ff
    :goto_1ff
    return v10

    :pswitch_200  #0x7
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/Sy;

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_26f

    iget v3, v8, Lcom/google/android/gms/internal/ads/Dy;->gW:I

    if-lez v3, :cond_23f

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->BT:Lcom/google/android/gms/internal/ads/Gy;

    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Gy;)Landroid/util/Pair;

    move-result-object v3

    iget v4, v8, Lcom/google/android/gms/internal/ads/Dy;->gW:I

    iput v9, v8, Lcom/google/android/gms/internal/ads/Dy;->gW:I

    iput-object v6, v8, Lcom/google/android/gms/internal/ads/Dy;->BT:Lcom/google/android/gms/internal/ads/Gy;

    if-nez v3, :cond_227

    :goto_222
    invoke-direct {v8, v1, v4}, Lcom/google/android/gms/internal/ads/Dy;->j6(Ljava/lang/Object;I)V

    goto/16 :goto_355

    :cond_227
    new-instance v7, Lcom/google/android/gms/internal/ads/Fy;

    iget-object v11, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v7, v11, v14, v15}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    iput-object v7, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    goto :goto_270

    :cond_23f
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/Fy;->DW:J

    cmp-long v7, v3, v12

    if-nez v7, :cond_26f

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Sy;->j6()Z

    move-result v3

    if-eqz v3, :cond_254

    invoke-direct {v8, v1, v9}, Lcom/google/android/gms/internal/ads/Dy;->j6(Ljava/lang/Object;I)V

    goto/16 :goto_355

    :cond_254
    invoke-direct {v8, v9, v12, v13}, Lcom/google/android/gms/internal/ads/Dy;->DW(IJ)Landroid/util/Pair;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/Fy;

    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v4, v7, v14, v15}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    iput-object v4, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    :cond_26f
    const/4 v4, 0x0

    :goto_270
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v3, :cond_275

    goto :goto_277

    :cond_275
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    :goto_277
    if-eqz v3, :cond_352

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/Ey;->DW:Ljava/lang/Object;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/Sy;->j6(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, v5, :cond_2d7

    iget v6, v3, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    invoke-direct {v8, v6, v2, v7}, Lcom/google/android/gms/internal/ads/Dy;->j6(ILcom/google/android/gms/internal/ads/Sy;Lcom/google/android/gms/internal/ads/Sy;)I

    move-result v2

    if-ne v2, v5, :cond_28e

    goto :goto_222

    :cond_28e
    iget-object v6, v8, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    invoke-virtual {v6, v2, v7, v9}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    invoke-direct {v8, v9, v12, v13}, Lcom/google/android/gms/internal/ads/Dy;->DW(IJ)Landroid/util/Pair;

    move-result-object v2

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    invoke-virtual {v2, v6, v7, v10}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Uy;->DW:Ljava/lang/Object;

    iput v5, v3, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    :goto_2b6
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v7, :cond_2ca

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/Ey;->DW:Ljava/lang/Object;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c6

    move v7, v6

    goto :goto_2c7

    :cond_2c6
    const/4 v7, -0x1

    :goto_2c7
    iput v7, v3, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    goto :goto_2b6

    :cond_2ca
    invoke-direct {v8, v6, v11, v12}, Lcom/google/android/gms/internal/ads/Dy;->j6(IJ)J

    move-result-wide v2

    new-instance v5, Lcom/google/android/gms/internal/ads/Fy;

    invoke-direct {v5, v6, v2, v3}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    iput-object v5, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    goto/16 :goto_352

    :cond_2d7
    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/ads/Dy;->DW(I)Z

    move-result v2

    invoke-virtual {v3, v7, v2}, Lcom/google/android/gms/internal/ads/Ey;->j6(IZ)V

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    if-ne v3, v2, :cond_2e4

    const/4 v2, 0x1

    goto :goto_2e5

    :cond_2e4
    const/4 v2, 0x0

    :goto_2e5
    iget-object v11, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget v11, v11, Lcom/google/android/gms/internal/ads/Fy;->j6:I

    if-eq v7, v11, :cond_2fe

    iget-object v11, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    new-instance v12, Lcom/google/android/gms/internal/ads/Fy;

    iget-wide v13, v11, Lcom/google/android/gms/internal/ads/Fy;->DW:J

    invoke-direct {v12, v7, v13, v14}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    iget-wide v13, v11, Lcom/google/android/gms/internal/ads/Fy;->FH:J

    iput-wide v13, v12, Lcom/google/android/gms/internal/ads/Fy;->FH:J

    iget-wide v13, v11, Lcom/google/android/gms/internal/ads/Fy;->Hw:J

    iput-wide v13, v12, Lcom/google/android/gms/internal/ads/Fy;->Hw:J

    iput-object v12, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    :cond_2fe
    :goto_2fe
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v11, :cond_352

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v12, v8, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/Dy;->tp:Lcom/google/android/gms/internal/ads/Vy;

    iget v15, v8, Lcom/google/android/gms/internal/ads/Dy;->lg:I

    invoke-virtual {v12, v7, v13, v14, v15}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Lcom/google/android/gms/internal/ads/Vy;I)I

    move-result v7

    if-eq v7, v5, :cond_335

    iget-object v12, v11, Lcom/google/android/gms/internal/ads/Ey;->DW:Ljava/lang/Object;

    iget-object v13, v8, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    invoke-virtual {v13, v7, v14, v10}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-result-object v13

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/Uy;->DW:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_335

    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/ads/Dy;->DW(I)Z

    move-result v3

    invoke-virtual {v11, v7, v3}, Lcom/google/android/gms/internal/ads/Ey;->j6(IZ)V

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    if-ne v11, v3, :cond_331

    const/4 v3, 0x1

    goto :goto_332

    :cond_331
    const/4 v3, 0x0

    :goto_332
    or-int/2addr v2, v3

    move-object v3, v11

    goto :goto_2fe

    :cond_335
    if-nez v2, :cond_34b

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget v2, v2, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/Fy;->FH:J

    invoke-direct {v8, v2, v5, v6}, Lcom/google/android/gms/internal/ads/Dy;->j6(IJ)J

    move-result-wide v5

    new-instance v3, Lcom/google/android/gms/internal/ads/Fy;

    invoke-direct {v3, v2, v5, v6}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    goto :goto_352

    :cond_34b
    iput-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iput-object v6, v3, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Ey;)V

    :cond_352
    :goto_352
    invoke-direct {v8, v1, v4}, Lcom/google/android/gms/internal/ads/Dy;->DW(Ljava/lang/Object;I)V

    :goto_355
    return v10

    :pswitch_356  #0x6
    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/ads/Dy;->FH(Z)V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->Hw:Lcom/google/android/gms/internal/ads/Ly;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ly;->Hw()V

    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/ads/Dy;->j6(I)V

    monitor-enter p0
    :try_end_362
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_170 .. :try_end_362} :catch_871
    .catch Ljava/io/IOException; {:try_start_170 .. :try_end_362} :catch_86f
    .catch Ljava/lang/RuntimeException; {:try_start_170 .. :try_end_362} :catch_878

    :try_start_362
    iput-boolean v10, v8, Lcom/google/android/gms/internal/ads/Dy;->aM:Z

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return v10

    :catchall_369
    move-exception v0

    move-object v1, v0

    monitor-exit p0
    :try_end_36c
    .catchall {:try_start_362 .. :try_end_36c} :catchall_369

    :try_start_36c
    throw v1

    :pswitch_36d  #0x5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->VH()V

    return v10

    :pswitch_371  #0x4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/Ny;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->Ws:Lcom/google/android/gms/internal/ads/GD;

    if-eqz v2, :cond_37e

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/GD;->j6(Lcom/google/android/gms/internal/ads/Ny;)Lcom/google/android/gms/internal/ads/Ny;

    move-result-object v1

    goto :goto_383

    :cond_37e
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->v5:Lcom/google/android/gms/internal/ads/PD;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/PD;->j6(Lcom/google/android/gms/internal/ads/Ny;)Lcom/google/android/gms/internal/ads/Ny;

    :goto_383
    iput-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->J0:Lcom/google/android/gms/internal/ads/Ny;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    invoke-virtual {v2, v11, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return v10

    :pswitch_38f  #0x3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/Gy;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    if-nez v2, :cond_3a0

    iget v2, v8, Lcom/google/android/gms/internal/ads/Dy;->gW:I

    add-int/2addr v2, v10

    iput v2, v8, Lcom/google/android/gms/internal/ads/Dy;->gW:I

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->BT:Lcom/google/android/gms/internal/ads/Gy;

    goto/16 :goto_41b

    :cond_3a0
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Gy;)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_3c4

    new-instance v1, Lcom/google/android/gms/internal/ads/Fy;

    invoke-direct {v1, v9, v3, v4}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    invoke-virtual {v2, v15, v10, v9, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    new-instance v1, Lcom/google/android/gms/internal/ads/Fy;

    invoke-direct {v1, v9, v12, v13}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    invoke-direct {v8, v15}, Lcom/google/android/gms/internal/ads/Dy;->j6(I)V

    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/Dy;->FH(Z)V

    goto :goto_41b

    :cond_3c4
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/Gy;->FH:J

    cmp-long v1, v3, v12

    if-nez v1, :cond_3cc

    const/4 v1, 0x1

    goto :goto_3cd

    :cond_3cc
    const/4 v1, 0x0

    :goto_3cd
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_3dd
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_36c .. :try_end_3dd} :catch_871
    .catch Ljava/io/IOException; {:try_start_36c .. :try_end_3dd} :catch_86f
    .catch Ljava/lang/RuntimeException; {:try_start_36c .. :try_end_3dd} :catch_878

    :try_start_3dd
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget v2, v2, Lcom/google/android/gms/internal/ads/Fy;->j6:I

    if-ne v3, v2, :cond_401

    const-wide/16 v6, 0x3e8

    div-long v11, v4, v6

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget-wide v13, v2, Lcom/google/android/gms/internal/ads/Fy;->FH:J

    div-long/2addr v13, v6
    :try_end_3ec
    .catchall {:try_start_3dd .. :try_end_3ec} :catchall_41c

    cmp-long v2, v11, v13

    if-nez v2, :cond_401

    :try_start_3f0
    new-instance v2, Lcom/google/android/gms/internal/ads/Fy;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    iput-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    invoke-virtual {v3, v15, v1, v9, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    :goto_3fd
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_400
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_3f0 .. :try_end_400} :catch_871
    .catch Ljava/io/IOException; {:try_start_3f0 .. :try_end_400} :catch_86f
    .catch Ljava/lang/RuntimeException; {:try_start_3f0 .. :try_end_400} :catch_878

    goto :goto_41b

    :cond_401
    :try_start_401
    invoke-direct {v8, v3, v4, v5}, Lcom/google/android/gms/internal/ads/Dy;->j6(IJ)J

    move-result-wide v6
    :try_end_405
    .catchall {:try_start_401 .. :try_end_405} :catchall_41c

    cmp-long v2, v4, v6

    if-eqz v2, :cond_40b

    const/4 v2, 0x1

    goto :goto_40c

    :cond_40b
    const/4 v2, 0x0

    :goto_40c
    :try_start_40c
    new-instance v4, Lcom/google/android/gms/internal/ads/Fy;

    invoke-direct {v4, v3, v6, v7}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    iput-object v4, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    or-int/2addr v1, v2

    invoke-virtual {v3, v15, v1, v9, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    goto :goto_3fd

    :goto_41b
    return v10

    :catchall_41c
    move-exception v0

    move-object v2, v0

    new-instance v6, Lcom/google/android/gms/internal/ads/Fy;

    invoke-direct {v6, v3, v4, v5}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    iput-object v6, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    invoke-virtual {v3, v15, v1, v9, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    throw v2

    :pswitch_42f  #0x2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    if-nez v1, :cond_43f

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->QX:Lcom/google/android/gms/internal/ads/AB;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/AB;->j6()V

    move-wide v13, v5

    goto/16 :goto_693

    :cond_43f
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    if-nez v1, :cond_448

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget v1, v1, Lcom/google/android/gms/internal/ads/Fy;->j6:I

    goto :goto_485

    :cond_448
    iget v1, v1, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/Ey;->u7:Z

    if-nez v2, :cond_56a

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Ey;->FH()Z

    move-result v2

    if-eqz v2, :cond_56a

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    invoke-virtual {v2, v1, v7, v9}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-result-object v2

    iget-wide v14, v2, Lcom/google/android/gms/internal/ads/Uy;->Hw:J

    cmp-long v2, v14, v12

    if-nez v2, :cond_468

    goto/16 :goto_56a

    :cond_468
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v2, :cond_479

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget v2, v2, Lcom/google/android/gms/internal/ads/Ey;->FH:I

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget v7, v7, Lcom/google/android/gms/internal/ads/Ey;->FH:I

    sub-int/2addr v2, v7

    const/16 v7, 0x64

    if-eq v2, v7, :cond_56a

    :cond_479
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/Dy;->tp:Lcom/google/android/gms/internal/ads/Vy;

    iget v15, v8, Lcom/google/android/gms/internal/ads/Dy;->lg:I

    invoke-virtual {v2, v1, v7, v14, v15}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Lcom/google/android/gms/internal/ads/Vy;I)I

    move-result v1

    :goto_485
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Sy;->FH()I

    move-result v2

    if-lt v1, v2, :cond_494

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->QX:Lcom/google/android/gms/internal/ads/AB;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/AB;->j6()V

    goto/16 :goto_56a

    :cond_494
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    if-nez v2, :cond_49d

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/Fy;->FH:J

    goto :goto_4b7

    :cond_49d
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    invoke-virtual {v2, v1, v7, v9}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    const/16 v17, 0x0

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/Dy;->tp:Lcom/google/android/gms/internal/ads/Vy;

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v16, v2

    move-object/from16 v18, v7

    invoke-virtual/range {v16 .. v21}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Vy;ZJ)Lcom/google/android/gms/internal/ads/Vy;

    if-eqz v1, :cond_4ba

    :goto_4b7
    move-wide v13, v5

    const/4 v15, 0x2

    goto :goto_4fe

    :cond_4ba
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ey;->DW()J

    move-result-wide v1

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v14, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget v14, v14, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    iget-object v15, v8, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    invoke-virtual {v7, v14, v15, v9}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-result-object v7

    iget-wide v14, v7, Lcom/google/android/gms/internal/ads/Uy;->Hw:J

    iget-wide v11, v8, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    const/4 v13, 0x0

    const-wide v19, -0x7fffffffffffffffL  # -4.9E-324

    add-long/2addr v1, v14

    sub-long/2addr v1, v11

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    move-object/from16 v1, p0

    move-object v2, v7

    move v3, v13

    move-wide v13, v5

    move-wide/from16 v4, v19

    const/4 v15, 0x2

    move-wide v6, v11

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Sy;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_56b

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move v1, v2

    :goto_4fe
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    if-nez v2, :cond_509

    const-wide/32 v5, 0x3938700

    add-long/2addr v5, v3

    :goto_506
    move-wide/from16 v22, v5

    goto :goto_51d

    :cond_509
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Ey;->DW()J

    move-result-wide v5

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget v7, v7, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    iget-object v11, v8, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    invoke-virtual {v2, v7, v11, v9}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-result-object v2

    iget-wide v11, v2, Lcom/google/android/gms/internal/ads/Uy;->Hw:J

    add-long/2addr v5, v11

    goto :goto_506

    :goto_51d
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    if-nez v2, :cond_524

    const/16 v28, 0x0

    goto :goto_529

    :cond_524
    iget v2, v2, Lcom/google/android/gms/internal/ads/Ey;->FH:I

    add-int/2addr v2, v10

    move/from16 v28, v2

    :goto_529
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/Dy;->DW(I)Z

    move-result v30

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    invoke-virtual {v2, v1, v5, v10}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    new-instance v2, Lcom/google/android/gms/internal/ads/Ey;

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/Dy;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    iget-object v6, v8, Lcom/google/android/gms/internal/ads/Dy;->DW:[Lcom/google/android/gms/internal/ads/Qy;

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/Dy;->FH:Lcom/google/android/gms/internal/ads/cD;

    iget-object v11, v8, Lcom/google/android/gms/internal/ads/Dy;->Hw:Lcom/google/android/gms/internal/ads/Ly;

    iget-object v12, v8, Lcom/google/android/gms/internal/ads/Dy;->QX:Lcom/google/android/gms/internal/ads/AB;

    iget-object v15, v8, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/Uy;->DW:Ljava/lang/Object;

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v15

    move/from16 v29, v1

    move-wide/from16 v31, v3

    invoke-direct/range {v19 .. v32}, Lcom/google/android/gms/internal/ads/Ey;-><init>([Lcom/google/android/gms/internal/ads/Oy;[Lcom/google/android/gms/internal/ads/Qy;JLcom/google/android/gms/internal/ads/cD;Lcom/google/android/gms/internal/ads/Ly;Lcom/google/android/gms/internal/ads/AB;Ljava/lang/Object;IIZJ)V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v1, :cond_55f

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    :cond_55f
    iput-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    invoke-interface {v1, v8, v3, v4}, Lcom/google/android/gms/internal/ads/yB;->j6(Lcom/google/android/gms/internal/ads/zB;J)V

    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/ads/Dy;->DW(Z)V

    goto :goto_56b

    :cond_56a
    :goto_56a
    move-wide v13, v5

    :cond_56b
    :goto_56b
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v1, :cond_582

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ey;->FH()Z

    move-result v1

    if-eqz v1, :cond_576

    goto :goto_582

    :cond_576
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v1, :cond_585

    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/Dy;->U2:Z

    if-nez v1, :cond_585

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->u7()V

    goto :goto_585

    :cond_582
    :goto_582
    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/Dy;->DW(Z)V

    :cond_585
    :goto_585
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v1, :cond_693

    :goto_589
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    if-eq v1, v2, :cond_5c4

    iget-wide v2, v8, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/Ey;->Zo:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_5c4

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ey;->j6()V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/Dy;->DW(Lcom/google/android/gms/internal/ads/Ey;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/Fy;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget v2, v2, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/Ey;->gn:J

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->Zo()V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_589

    :cond_5c4
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/Ey;->u7:Z

    if-eqz v1, :cond_5ec

    const/4 v1, 0x0

    :goto_5cb
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v3, v2

    if-ge v1, v3, :cond_693

    aget-object v2, v2, v1

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Ey;->Hw:[Lcom/google/android/gms/internal/ads/HB;

    aget-object v3, v3, v1

    if-eqz v3, :cond_5e9

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Oy;->we()Lcom/google/android/gms/internal/ads/HB;

    move-result-object v4

    if-ne v4, v3, :cond_5e9

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Oy;->gn()Z

    move-result v3

    if-eqz v3, :cond_5e9

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Oy;->u7()V

    :cond_5e9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5cb

    :cond_5ec
    const/4 v1, 0x0

    :goto_5ed
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v3, v2

    if-ge v1, v3, :cond_60d

    aget-object v2, v2, v1

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Ey;->Hw:[Lcom/google/android/gms/internal/ads/HB;

    aget-object v3, v3, v1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Oy;->we()Lcom/google/android/gms/internal/ads/HB;

    move-result-object v4

    if-ne v4, v3, :cond_693

    if-eqz v3, :cond_60a

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Oy;->gn()Z

    move-result v2

    if-nez v2, :cond_60a

    goto/16 :goto_693

    :cond_60a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5ed

    :cond_60d
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    if-eqz v1, :cond_693

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/Ey;->tp:Z

    if-eqz v1, :cond_693

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Ey;->J0:Lcom/google/android/gms/internal/ads/eD;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Ey;->we:Lcom/google/android/gms/internal/ads/Ey;

    iput-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Ey;->J0:Lcom/google/android/gms/internal/ads/eD;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/yB;->v5()J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v7, v3, v5

    if-eqz v7, :cond_63a

    const/4 v3, 0x1

    goto :goto_63b

    :cond_63a
    const/4 v3, 0x0

    :goto_63b
    const/4 v4, 0x0

    :goto_63c
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/Dy;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v6, v5

    if-ge v4, v6, :cond_693

    aget-object v5, v5, v4

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/eD;->DW:Lcom/google/android/gms/internal/ads/bD;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/bD;->j6(I)Lcom/google/android/gms/internal/ads/_C;

    move-result-object v6

    if-eqz v6, :cond_68e

    if-nez v3, :cond_68b

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Oy;->VH()Z

    move-result v6

    if-nez v6, :cond_68e

    iget-object v6, v2, Lcom/google/android/gms/internal/ads/eD;->DW:Lcom/google/android/gms/internal/ads/bD;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/bD;->j6(I)Lcom/google/android/gms/internal/ads/_C;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/eD;->Hw:[Lcom/google/android/gms/internal/ads/Ry;

    aget-object v7, v7, v4

    iget-object v11, v2, Lcom/google/android/gms/internal/ads/eD;->Hw:[Lcom/google/android/gms/internal/ads/Ry;

    aget-object v11, v11, v4

    if-eqz v6, :cond_68b

    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/Ry;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_68b

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/_C;->length()I

    move-result v7

    new-array v11, v7, [Lcom/google/android/gms/internal/ads/zzfs;

    const/4 v12, 0x0

    :goto_670
    if-ge v12, v7, :cond_67b

    invoke-interface {v6, v12}, Lcom/google/android/gms/internal/ads/_C;->j6(I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v15

    aput-object v15, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_670

    :cond_67b
    iget-object v6, v8, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/Ey;->Hw:[Lcom/google/android/gms/internal/ads/HB;

    aget-object v6, v6, v4

    iget-object v7, v8, Lcom/google/android/gms/internal/ads/Dy;->ei:Lcom/google/android/gms/internal/ads/Ey;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/Ey;->DW()J

    move-result-wide v9

    invoke-interface {v5, v11, v6, v9, v10}, Lcom/google/android/gms/internal/ads/Oy;->j6([Lcom/google/android/gms/internal/ads/zzfs;Lcom/google/android/gms/internal/ads/HB;J)V

    goto :goto_68e

    :cond_68b
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Oy;->u7()V

    :cond_68e
    :goto_68e
    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto :goto_63c

    :cond_693
    :goto_693
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    const-wide/16 v2, 0xa

    if-nez v1, :cond_6a2

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->gn()V

    invoke-direct {v8, v13, v14, v2, v3}, Lcom/google/android/gms/internal/ads/Dy;->j6(JJ)V

    :goto_69f
    const/4 v1, 0x1

    goto/16 :goto_807

    :cond_6a2
    const-string v1, "doSomeWork"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/RD;->j6(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->Zo()V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/Fy;->FH:J

    invoke-interface {v1, v4, v5}, Lcom/google/android/gms/internal/ads/yB;->FH(J)V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v4, v1
    :try_end_6b8
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_40c .. :try_end_6b8} :catch_871
    .catch Ljava/io/IOException; {:try_start_40c .. :try_end_6b8} :catch_86f
    .catch Ljava/lang/RuntimeException; {:try_start_40c .. :try_end_6b8} :catch_878

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    :goto_6bb
    if-ge v7, v4, :cond_6f2

    aget-object v9, v1, v7

    :try_start_6bf
    iget-wide v10, v8, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    iget-wide v2, v8, Lcom/google/android/gms/internal/ads/Dy;->yS:J

    invoke-interface {v9, v10, v11, v2, v3}, Lcom/google/android/gms/internal/ads/Oy;->j6(JJ)V

    if-eqz v6, :cond_6d0

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Oy;->Hw()Z

    move-result v2

    if-eqz v2, :cond_6d0

    const/4 v6, 0x1

    goto :goto_6d1

    :cond_6d0
    const/4 v6, 0x0

    :goto_6d1
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Oy;->FH()Z

    move-result v2

    if-nez v2, :cond_6e0

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Oy;->Hw()Z

    move-result v2

    if-eqz v2, :cond_6de

    goto :goto_6e0

    :cond_6de
    const/4 v2, 0x0

    goto :goto_6e1

    :cond_6e0
    :goto_6e0
    const/4 v2, 0x1

    :goto_6e1
    if-nez v2, :cond_6e6

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/Oy;->Zo()V

    :cond_6e6
    if-eqz v5, :cond_6ec

    if-eqz v2, :cond_6ec

    const/4 v5, 0x1

    goto :goto_6ed

    :cond_6ec
    const/4 v5, 0x0

    :goto_6ed
    add-int/lit8 v7, v7, 0x1

    const-wide/16 v2, 0xa

    goto :goto_6bb

    :cond_6f2
    if-nez v5, :cond_6f7

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->gn()V

    :cond_6f7
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->Ws:Lcom/google/android/gms/internal/ads/GD;

    if-eqz v1, :cond_71a

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/GD;->DW()Lcom/google/android/gms/internal/ads/Ny;

    move-result-object v1

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->J0:Lcom/google/android/gms/internal/ads/Ny;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/Ny;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_71a

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->J0:Lcom/google/android/gms/internal/ads/Ny;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->v5:Lcom/google/android/gms/internal/ads/PD;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->Ws:Lcom/google/android/gms/internal/ads/GD;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/PD;->j6(Lcom/google/android/gms/internal/ads/GD;)V

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_71a
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget v2, v2, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/Uy;->Hw:J

    if-eqz v6, :cond_74b

    const-wide v3, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v6, v1, v3

    if-eqz v6, :cond_73c

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/Fy;->FH:J

    cmp-long v6, v1, v3

    if-gtz v6, :cond_74b

    :cond_73c
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->nw:Lcom/google/android/gms/internal/ads/Ey;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/Ey;->u7:Z

    if-eqz v3, :cond_74b

    const/4 v3, 0x4

    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/ads/Dy;->j6(I)V

    :goto_746
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->v5()V

    goto/16 :goto_7ca

    :cond_74b
    iget v3, v8, Lcom/google/android/gms/internal/ads/Dy;->a8:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7b1

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v3, v3

    if-lez v3, :cond_79f

    if-eqz v5, :cond_79d

    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/Dy;->Mr:Z

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/Ey;->tp:Z

    if-nez v2, :cond_764

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/Ey;->gn:J

    goto :goto_76c

    :cond_764
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Ey;->j6:Lcom/google/android/gms/internal/ads/yB;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/yB;->VH()J

    move-result-wide v2

    :goto_76c
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-nez v6, :cond_789

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/Ey;->u7:Z

    if-eqz v2, :cond_77a

    const/4 v1, 0x1

    goto :goto_799

    :cond_77a
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->SI:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget v3, v3, Lcom/google/android/gms/internal/ads/Ey;->VH:I

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/Dy;->EQ:Lcom/google/android/gms/internal/ads/Uy;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/Uy;->Hw:J

    :cond_789
    iget-object v4, v8, Lcom/google/android/gms/internal/ads/Dy;->Hw:Lcom/google/android/gms/internal/ads/Ly;

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/Dy;->P8:Lcom/google/android/gms/internal/ads/Ey;

    iget-wide v6, v8, Lcom/google/android/gms/internal/ads/Dy;->vy:J

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/Ey;->DW()J

    move-result-wide v9

    sub-long/2addr v6, v9

    sub-long/2addr v2, v6

    invoke-interface {v4, v2, v3, v1}, Lcom/google/android/gms/internal/ads/Ly;->j6(JZ)Z

    move-result v1

    :goto_799
    if-eqz v1, :cond_79d

    const/4 v1, 0x1

    goto :goto_7a3

    :cond_79d
    const/4 v1, 0x0

    goto :goto_7a3

    :cond_79f
    invoke-direct {v8, v1, v2}, Lcom/google/android/gms/internal/ads/Dy;->DW(J)Z

    move-result v1

    :goto_7a3
    if-eqz v1, :cond_7ca

    const/4 v1, 0x3

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/Dy;->j6(I)V

    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/Dy;->j3:Z

    if-eqz v1, :cond_7ca

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->Hw()V

    goto :goto_7ca

    :cond_7b1
    const/4 v4, 0x3

    if-ne v3, v4, :cond_7ca

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v3, v3

    if-lez v3, :cond_7ba

    goto :goto_7be

    :cond_7ba
    invoke-direct {v8, v1, v2}, Lcom/google/android/gms/internal/ads/Dy;->DW(J)Z

    move-result v5

    :goto_7be
    if-nez v5, :cond_7ca

    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/Dy;->j3:Z

    iput-boolean v1, v8, Lcom/google/android/gms/internal/ads/Dy;->Mr:Z

    const/4 v1, 0x2

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/Dy;->j6(I)V

    goto/16 :goto_746

    :cond_7ca
    :goto_7ca
    iget v1, v8, Lcom/google/android/gms/internal/ads/Dy;->a8:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7dd

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v2, v1

    const/4 v9, 0x0

    :goto_7d3
    if-ge v9, v2, :cond_7dd

    aget-object v3, v1, v9

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Oy;->Zo()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_7d3

    :cond_7dd
    iget-boolean v1, v8, Lcom/google/android/gms/internal/ads/Dy;->j3:Z

    if-eqz v1, :cond_7e6

    iget v1, v8, Lcom/google/android/gms/internal/ads/Dy;->a8:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_7eb

    :cond_7e6
    iget v1, v8, Lcom/google/android/gms/internal/ads/Dy;->a8:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7f1

    :cond_7eb
    const-wide/16 v1, 0xa

    invoke-direct {v8, v13, v14, v1, v2}, Lcom/google/android/gms/internal/ads/Dy;->j6(JJ)V

    goto :goto_802

    :cond_7f1
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->XL:[Lcom/google/android/gms/internal/ads/Oy;

    array-length v1, v1

    if-eqz v1, :cond_7fc

    const-wide/16 v1, 0x3e8

    invoke-direct {v8, v13, v14, v1, v2}, Lcom/google/android/gms/internal/ads/Dy;->j6(JJ)V

    goto :goto_802

    :cond_7fc
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :goto_802
    invoke-static {}, Lcom/google/android/gms/internal/ads/RD;->j6()V

    goto/16 :goto_69f

    :goto_807
    return v1

    :pswitch_808  #0x1
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_80f

    const/4 v1, 0x0

    const/4 v15, 0x1

    goto :goto_811

    :cond_80f
    const/4 v1, 0x0

    const/4 v15, 0x0

    :goto_811
    iput-boolean v1, v8, Lcom/google/android/gms/internal/ads/Dy;->Mr:Z

    iput-boolean v15, v8, Lcom/google/android/gms/internal/ads/Dy;->j3:Z

    if-nez v15, :cond_81f

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->v5()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->Zo()V

    :cond_81d
    :goto_81d
    const/4 v1, 0x1

    goto :goto_834

    :cond_81f
    iget v1, v8, Lcom/google/android/gms/internal/ads/Dy;->a8:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_82e

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->Hw()V

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/4 v2, 0x2

    :goto_82a
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_81d

    :cond_82e
    const/4 v2, 0x2

    if-ne v1, v2, :cond_81d

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    goto :goto_82a

    :goto_834
    return v1

    :pswitch_835  #0x0
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/AB;

    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_83f

    const/4 v1, 0x1

    goto :goto_840

    :cond_83f
    const/4 v1, 0x0

    :goto_840
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v3, 0x1

    invoke-direct {v8, v3}, Lcom/google/android/gms/internal/ads/Dy;->FH(Z)V

    iget-object v3, v8, Lcom/google/android/gms/internal/ads/Dy;->Hw:Lcom/google/android/gms/internal/ads/Ly;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Ly;->j6()V

    if-eqz v1, :cond_85d

    new-instance v1, Lcom/google/android/gms/internal/ads/Fy;

    const-wide v5, -0x7fffffffffffffffL  # -4.9E-324

    invoke-direct {v1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->we:Lcom/google/android/gms/internal/ads/Fy;

    :cond_85d
    iput-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->QX:Lcom/google/android/gms/internal/ads/AB;

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/Dy;->u7:Lcom/google/android/gms/internal/ads/wy;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3, v8}, Lcom/google/android/gms/internal/ads/AB;->j6(Lcom/google/android/gms/internal/ads/wy;ZLcom/google/android/gms/internal/ads/BB;)V

    const/4 v1, 0x2

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/Dy;->j6(I)V

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_86e
    .catch Lcom/google/android/gms/internal/ads/vy; {:try_start_6bf .. :try_end_86e} :catch_871
    .catch Ljava/io/IOException; {:try_start_6bf .. :try_end_86e} :catch_86f
    .catch Ljava/lang/RuntimeException; {:try_start_6bf .. :try_end_86e} :catch_878

    return v3

    :catch_86f
    move-exception v0

    goto :goto_895

    :catch_871
    move-exception v0

    move-object v1, v0

    move-object v2, v1

    const/4 v1, 0x1

    const/16 v3, 0x8

    goto :goto_8b6

    :catch_878
    move-exception v0

    move-object v1, v0

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Internal runtime error."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/vy;->j6(Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/vy;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->VH()V

    const/4 v1, 0x1

    return v1

    :goto_895
    move-object v1, v0

    const-string v2, "ExoPlayerImplInternal"

    const-string v3, "Source error."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/vy;->j6(Ljava/io/IOException;)Lcom/google/android/gms/internal/ads/vy;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->VH()V

    const/4 v1, 0x1

    return v1

    :catch_8b1
    move-exception v0

    const/4 v1, 0x1

    const/16 v3, 0x8

    move-object v2, v0

    :goto_8b6
    const-string v4, "ExoPlayerImplInternal"

    const-string v5, "Renderer error."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/Dy;->gn:Landroid/os/Handler;

    invoke-virtual {v4, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/Dy;->VH()V

    return v1

    :pswitch_data_8ca
    .packed-switch 0x0
        :pswitch_835  #00000000
        :pswitch_808  #00000001
        :pswitch_42f  #00000002
        :pswitch_38f  #00000003
        :pswitch_371  #00000004
        :pswitch_36d  #00000005
        :pswitch_356  #00000006
        :pswitch_200  #00000007
        :pswitch_1ce  #00000008
        :pswitch_1bd  #00000009
        :pswitch_d6  #0000000a
        :pswitch_98  #0000000b
        :pswitch_1a  #0000000c
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
    .registers 5

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/IB;)V
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/yB;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Sy;IJ)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/Gy;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/Gy;-><init>(Lcom/google/android/gms/internal/ads/Sy;IJ)V

    const/4 p1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Sy;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/yB;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final j6(Z)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final varargs j6([Lcom/google/android/gms/internal/ads/zy;)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Dy;->aM:Z

    if-eqz v0, :cond_c

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Ignoring messages sent after release."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget v0, p0, Lcom/google/android/gms/internal/ads/Dy;->rN:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Dy;->rN:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Dy;->Zo:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
