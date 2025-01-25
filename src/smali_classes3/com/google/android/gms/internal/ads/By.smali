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
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
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
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/TD;->v5:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Init ExoPlayerLib/2.4.2 ["

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ExoPlayerImpl"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_35

    const/4 v0, 0x1

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/CD;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, [Lcom/google/android/gms/internal/ads/Oy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->j6:[Lcom/google/android/gms/internal/ads/Oy;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/CD;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/cD;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/By;->DW:Lcom/google/android/gms/internal/ads/cD;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/By;->tp:Z

    iput v1, p0, Lcom/google/android/gms/internal/ads/By;->EQ:I

    iput v4, p0, Lcom/google/android/gms/internal/ads/By;->we:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Lcom/google/android/gms/internal/ads/bD;

    array-length v2, p1

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/_C;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/bD;-><init>([Lcom/google/android/gms/internal/ads/_C;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->FH:Lcom/google/android/gms/internal/ads/bD;

    sget-object v2, Lcom/google/android/gms/internal/ads/Sy;->j6:Lcom/google/android/gms/internal/ads/Sy;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    new-instance v2, Lcom/google/android/gms/internal/ads/Vy;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/Vy;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/By;->VH:Lcom/google/android/gms/internal/ads/Vy;

    new-instance v2, Lcom/google/android/gms/internal/ads/Uy;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/Uy;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/By;->gn:Lcom/google/android/gms/internal/ads/Uy;

    sget-object v2, Lcom/google/android/gms/internal/ads/NB;->j6:Lcom/google/android/gms/internal/ads/NB;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/By;->aM:Lcom/google/android/gms/internal/ads/NB;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->j3:Lcom/google/android/gms/internal/ads/bD;

    sget-object v0, Lcom/google/android/gms/internal/ads/Ny;->j6:Lcom/google/android/gms/internal/ads/Ny;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_87

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_8b

    :cond_87
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_8b
    new-instance v8, Lcom/google/android/gms/internal/ads/Cy;

    invoke-direct {v8, p0, v0}, Lcom/google/android/gms/internal/ads/Cy;-><init>(Lcom/google/android/gms/internal/ads/By;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/By;->Hw:Landroid/os/Handler;

    new-instance v9, Lcom/google/android/gms/internal/ads/Fy;

    const-wide/16 v2, 0x0

    invoke-direct {v9, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Fy;-><init>(IJ)V

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/By;->U2:Lcom/google/android/gms/internal/ads/Fy;

    new-instance v0, Lcom/google/android/gms/internal/ads/Dy;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/By;->tp:Z

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v10, p0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/Dy;-><init>([Lcom/google/android/gms/internal/ads/Oy;Lcom/google/android/gms/internal/ads/cD;Lcom/google/android/gms/internal/ads/Ly;ZILandroid/os/Handler;Lcom/google/android/gms/internal/ads/Fy;Lcom/google/android/gms/internal/ads/wy;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->v5:Lcom/google/android/gms/internal/ads/Dy;

    return-void
.end method

.method private final DW()I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Sy;->j6()Z

    move-result v0

    if-nez v0, :cond_1a

    iget v0, p0, Lcom/google/android/gms/internal/ads/By;->J0:I

    if-lez v0, :cond_d

    goto :goto_1a

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/By;->U2:Lcom/google/android/gms/internal/ads/Fy;

    iget v1, v1, Lcom/google/android/gms/internal/ads/Fy;->j6:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/By;->gn:Lcom/google/android/gms/internal/ads/Uy;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    return v3

    :cond_1a
    :goto_1a
    iget v0, p0, Lcom/google/android/gms/internal/ads/By;->a8:I

    return v0
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

    if-nez v0, :cond_29

    iget v0, p0, Lcom/google/android/gms/internal/ads/By;->J0:I

    if-lez v0, :cond_d

    goto :goto_29

    :cond_d
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

    return-wide v0

    :cond_29
    :goto_29
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/By;->rN:J

    return-wide v0
.end method

.method public final getDuration()J
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Sy;->j6()Z

    move-result v0

    if-eqz v0, :cond_e

    const-wide v0, -0x7fffffffffffffffL  # -4.9E-324

    return-wide v0

    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/By;->DW()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/By;->VH:Lcom/google/android/gms/internal/ads/Vy;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Vy;ZJ)Lcom/google/android/gms/internal/ads/Vy;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/Vy;->u7:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/uy;->j6(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final iW()J
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Sy;->j6()Z

    move-result v0

    if-nez v0, :cond_29

    iget v0, p0, Lcom/google/android/gms/internal/ads/By;->J0:I

    if-lez v0, :cond_d

    goto :goto_29

    :cond_d
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

    return-wide v0

    :cond_29
    :goto_29
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/By;->rN:J

    return-wide v0
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
    .registers 13

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/By;->DW()I

    move-result v6

    if-ltz v6, :cond_a9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Sy;->j6()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Sy;->DW()I

    move-result v0

    if-ge v6, v0, :cond_a9

    :cond_16
    iget v0, p0, Lcom/google/android/gms/internal/ads/By;->J0:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/By;->J0:I

    iput v6, p0, Lcom/google/android/gms/internal/ads/By;->a8:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Sy;->j6()Z

    move-result v0

    const-wide v7, -0x7fffffffffffffffL  # -4.9E-324

    const/4 v9, 0x0

    if-eqz v0, :cond_2f

    iput v9, p0, Lcom/google/android/gms/internal/ads/By;->lg:I

    goto :goto_75

    :cond_2f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/By;->VH:Lcom/google/android/gms/internal/ads/Vy;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Vy;ZJ)Lcom/google/android/gms/internal/ads/Vy;

    cmp-long v0, p1, v7

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->VH:Lcom/google/android/gms/internal/ads/Vy;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/Vy;->gn:J

    goto :goto_47

    :cond_43
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/uy;->DW(J)J

    move-result-wide v0

    :goto_47
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/By;->VH:Lcom/google/android/gms/internal/ads/Vy;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/Vy;->tp:J

    add-long/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/By;->gn:Lcom/google/android/gms/internal/ads/Uy;

    invoke-virtual {v0, v9, v1, v9}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/Uy;->Hw:J

    const/4 v4, 0x0

    :goto_57
    cmp-long v5, v0, v7

    if-eqz v5, :cond_73

    cmp-long v5, v2, v0

    if-ltz v5, :cond_73

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/By;->VH:Lcom/google/android/gms/internal/ads/Vy;

    iget v5, v5, Lcom/google/android/gms/internal/ads/Vy;->VH:I

    if-ge v4, v5, :cond_73

    sub-long/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    add-int/lit8 v4, v4, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/By;->gn:Lcom/google/android/gms/internal/ads/Uy;

    invoke-virtual {v0, v4, v1, v9}, Lcom/google/android/gms/internal/ads/Sy;->j6(ILcom/google/android/gms/internal/ads/Uy;Z)Lcom/google/android/gms/internal/ads/Uy;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/Uy;->Hw:J

    goto :goto_57

    :cond_73
    iput v4, p0, Lcom/google/android/gms/internal/ads/By;->lg:I

    :goto_75
    cmp-long v0, p1, v7

    if-nez v0, :cond_85

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/By;->rN:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/By;->v5:Lcom/google/android/gms/internal/ads/Dy;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    invoke-virtual {p1, p2, v6, v7, v8}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Sy;IJ)V

    return-void

    :cond_85
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/By;->rN:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->v5:Lcom/google/android/gms/internal/ads/Dy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/uy;->DW(J)J

    move-result-wide p1

    invoke-virtual {v0, v1, v6, p1, p2}, Lcom/google/android/gms/internal/ads/Dy;->j6(Lcom/google/android/gms/internal/ads/Sy;IJ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_98
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/xy;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/xy;->j6()V

    goto :goto_98

    :cond_a8
    return-void

    :cond_a9
    new-instance v0, Lcom/google/android/gms/internal/ads/Ky;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    invoke-direct {v0, v1, v6, p1, p2}, Lcom/google/android/gms/internal/ads/Ky;-><init>(Lcom/google/android/gms/internal/ads/Sy;IJ)V

    goto :goto_b2

    :goto_b1
    throw v0

    :goto_b2
    goto :goto_b1
.end method

.method final j6(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_146

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_c  #0x8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/vy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/xy;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/xy;->j6(Lcom/google/android/gms/internal/ads/vy;)V

    goto :goto_16

    :cond_26
    return-void

    :pswitch_27  #0x7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/Ny;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Ny;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fe

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/By;->Mr:Lcom/google/android/gms/internal/ads/Ny;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/xy;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/xy;->j6(Lcom/google/android/gms/internal/ads/Ny;)V

    goto :goto_3b

    :cond_4b
    return-void

    :pswitch_4c  #0x6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/Hy;

    iget v0, p0, Lcom/google/android/gms/internal/ads/By;->J0:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/Hy;->Hw:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/By;->J0:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/By;->J8:I

    if-nez v0, :cond_fe

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Hy;->j6:Lcom/google/android/gms/internal/ads/Sy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Hy;->DW:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->XL:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Hy;->FH:Lcom/google/android/gms/internal/ads/Fy;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/By;->U2:Lcom/google/android/gms/internal/ads/Fy;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/xy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/By;->XL:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/xy;->j6(Lcom/google/android/gms/internal/ads/Sy;Ljava/lang/Object;)V

    goto :goto_6d

    :cond_81
    return-void

    :pswitch_82  #0x5
    iget v0, p0, Lcom/google/android/gms/internal/ads/By;->J0:I

    if-nez v0, :cond_fe

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/Fy;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/By;->U2:Lcom/google/android/gms/internal/ads/Fy;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_92
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/xy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/xy;->j6()V

    goto :goto_92

    :cond_a2
    return-void

    :pswitch_a3  #0x4
    iget v0, p0, Lcom/google/android/gms/internal/ads/By;->J0:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/By;->J0:I

    if-nez v0, :cond_fe

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/Fy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->U2:Lcom/google/android/gms/internal/ads/Fy;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_fe

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ba
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ca

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/xy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/xy;->j6()V

    goto :goto_ba

    :cond_ca
    return-void

    :pswitch_cb  #0x3
    iget v0, p0, Lcom/google/android/gms/internal/ads/By;->J8:I

    if-nez v0, :cond_fe

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/eD;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/By;->u7:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/eD;->j6:Lcom/google/android/gms/internal/ads/NB;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->aM:Lcom/google/android/gms/internal/ads/NB;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/eD;->DW:Lcom/google/android/gms/internal/ads/bD;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->j3:Lcom/google/android/gms/internal/ads/bD;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->DW:Lcom/google/android/gms/internal/ads/cD;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/eD;->FH:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/cD;->j6(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_ea
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fe

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/xy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/By;->aM:Lcom/google/android/gms/internal/ads/NB;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/By;->j3:Lcom/google/android/gms/internal/ads/bD;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/xy;->j6(Lcom/google/android/gms/internal/ads/NB;Lcom/google/android/gms/internal/ads/bD;)V

    goto :goto_ea

    :cond_fe
    return-void

    :pswitch_ff  #0x2
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_104

    goto :goto_105

    :cond_104
    const/4 v1, 0x0

    :goto_105
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/By;->Ws:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/xy;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/By;->Ws:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/xy;->j6(Z)V

    goto :goto_10d

    :cond_11f
    return-void

    :pswitch_120  #0x1
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/By;->we:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/xy;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/By;->tp:Z

    iget v2, p0, Lcom/google/android/gms/internal/ads/By;->we:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/xy;->j6(ZI)V

    goto :goto_12a

    :cond_13e
    return-void

    :pswitch_13f  #0x0
    iget p1, p0, Lcom/google/android/gms/internal/ads/By;->J8:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/By;->J8:I

    return-void

    nop

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_13f  #00000000
        :pswitch_120  #00000001
        :pswitch_ff  #00000002
        :pswitch_cb  #00000003
        :pswitch_a3  #00000004
        :pswitch_82  #00000005
        :pswitch_4c  #00000006
        :pswitch_27  #00000007
        :pswitch_c  #00000008
    .end packed-switch
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/AB;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Sy;->j6()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->XL:Ljava/lang/Object;

    if-eqz v0, :cond_2d

    :cond_d
    sget-object v0, Lcom/google/android/gms/internal/ads/Sy;->j6:Lcom/google/android/gms/internal/ads/Sy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/By;->XL:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/xy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/By;->QX:Lcom/google/android/gms/internal/ads/Sy;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/By;->XL:Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/ads/xy;->j6(Lcom/google/android/gms/internal/ads/Sy;Ljava/lang/Object;)V

    goto :goto_19

    :cond_2d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/By;->u7:Z

    if-eqz v0, :cond_5b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/By;->u7:Z

    sget-object v0, Lcom/google/android/gms/internal/ads/NB;->j6:Lcom/google/android/gms/internal/ads/NB;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->aM:Lcom/google/android/gms/internal/ads/NB;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->FH:Lcom/google/android/gms/internal/ads/bD;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/By;->j3:Lcom/google/android/gms/internal/ads/bD;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->DW:Lcom/google/android/gms/internal/ads/cD;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cD;->j6(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/xy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/By;->aM:Lcom/google/android/gms/internal/ads/NB;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/By;->j3:Lcom/google/android/gms/internal/ads/bD;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/xy;->j6(Lcom/google/android/gms/internal/ads/NB;Lcom/google/android/gms/internal/ads/bD;)V

    goto :goto_47

    :cond_5b
    iget v0, p0, Lcom/google/android/gms/internal/ads/By;->J8:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/By;->J8:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->v5:Lcom/google/android/gms/internal/ads/Dy;

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

    if-eq v0, p1, :cond_23

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/By;->tp:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->v5:Lcom/google/android/gms/internal/ads/Dy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Dy;->j6(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/By;->Zo:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/xy;

    iget v2, p0, Lcom/google/android/gms/internal/ads/By;->we:I

    invoke-interface {v1, p1, v2}, Lcom/google/android/gms/internal/ads/xy;->j6(ZI)V

    goto :goto_11

    :cond_23
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
