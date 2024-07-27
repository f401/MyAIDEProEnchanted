.class public final Lcom/google/android/gms/internal/ads/tz;
.super Lcom/google/android/gms/internal/ads/OA;

# interfaces
.implements Lcom/google/android/gms/internal/ads/GD;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private OW:I

.field private final Qq:Lcom/google/android/gms/internal/ads/hz;

.field private XX:J

.field private aj:Z

.field private br:I

.field private kQ:Z

.field private lp:Landroid/media/MediaFormat;

.field private sy:Z

.field private final x9:Lcom/google/android/gms/internal/ads/az;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/RA;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/tz;-><init>(Lcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/Jz;Z)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/Jz;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/RA;",
            "Lcom/google/android/gms/internal/ads/Jz",
            "<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/tz;-><init>(Lcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/Jz;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/_y;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/Jz;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/_y;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/RA;",
            "Lcom/google/android/gms/internal/ads/Jz",
            "<",
            "Ljava/lang/Object;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/internal/ads/_y;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    new-array v7, v0, [Lcom/google/android/gms/internal/ads/Yy;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/tz;-><init>(Lcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/Jz;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/_y;Lcom/google/android/gms/internal/ads/Xy;[Lcom/google/android/gms/internal/ads/Yy;)V

    return-void
.end method

.method private varargs constructor <init>(Lcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/Jz;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/_y;Lcom/google/android/gms/internal/ads/Xy;[Lcom/google/android/gms/internal/ads/Yy;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/RA;",
            "Lcom/google/android/gms/internal/ads/Jz",
            "<",
            "Ljava/lang/Object;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/internal/ads/_y;",
            "Lcom/google/android/gms/internal/ads/Xy;",
            "[",
            "Lcom/google/android/gms/internal/ads/Yy;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/OA;-><init>(ILcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/Jz;Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/hz;

    new-instance v1, Lcom/google/android/gms/internal/ads/vz;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/vz;-><init>(Lcom/google/android/gms/internal/ads/tz;Lcom/google/android/gms/internal/ads/uz;)V

    invoke-direct {v0, v2, p7, v1}, Lcom/google/android/gms/internal/ads/hz;-><init>(Lcom/google/android/gms/internal/ads/Xy;[Lcom/google/android/gms/internal/ads/Yy;Lcom/google/android/gms/internal/ads/nz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    new-instance v0, Lcom/google/android/gms/internal/ads/az;

    invoke-direct {v0, v2, v2}, Lcom/google/android/gms/internal/ads/az;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/_y;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->x9:Lcom/google/android/gms/internal/ads/az;

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/tz;)Lcom/google/android/gms/internal/ads/az;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->x9:Lcom/google/android/gms/internal/ads/az;

    return-object v0
.end method

.method protected static j6(I)V
    .registers 1

    return-void
.end method

.method protected static j6(IJJ)V
    .registers 5

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/tz;Z)Z
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/tz;->kQ:Z

    return v0
.end method

.method private final j6(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/hz;->j6(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected static yS()V
    .registers 0

    return-void
.end method


# virtual methods
.method public final DW()Lcom/google/android/gms/internal/ads/Ny;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hz;->u7()Lcom/google/android/gms/internal/ads/Ny;

    move-result-object v0

    return-object v0
.end method

.method protected final DW(Lcom/google/android/gms/internal/ads/zzfs;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/OA;->DW(Lcom/google/android/gms/internal/ads/zzfs;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->x9:Lcom/google/android/gms/internal/ads/az;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/az;->j6(Lcom/google/android/gms/internal/ads/zzfs;)V

    const-string v0, "audio/raw"

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzfs;->Mr:I

    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/tz;->OW:I

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/tz;->br:I

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public final EQ()Lcom/google/android/gms/internal/ads/GD;
    .registers 1

    return-object p0
.end method

.method public final FH()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hz;->gn()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/OA;->FH()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Hw()Z
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/OA;->Hw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hz;->v5()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final QX()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/OA;->QX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hz;->DW()V

    return-void
.end method

.method protected final U2()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hz;->VH()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/qz; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->Ws()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/vy;->j6(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/vy;

    move-result-object v0

    throw v0
.end method

.method protected final XL()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hz;->j6()V

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/OA;->XL()V

    return-void
.end method

.method protected final aM()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hz;->FH()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/OA;->aM()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Dz;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->x9:Lcom/google/android/gms/internal/ads/az;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/az;->DW(Lcom/google/android/gms/internal/ads/Dz;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Dz;->j6()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tz;->x9:Lcom/google/android/gms/internal/ads/az;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/az;->DW(Lcom/google/android/gms/internal/ads/Dz;)V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/OA;->aM()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Dz;->j6()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tz;->x9:Lcom/google/android/gms/internal/ads/az;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/az;->DW(Lcom/google/android/gms/internal/ads/Dz;)V

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Dz;->j6()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tz;->x9:Lcom/google/android/gms/internal/ads/az;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/az;->DW(Lcom/google/android/gms/internal/ads/Dz;)V

    throw v0
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/zzfs;)I
    .registers 11

    const/16 v7, 0x15

    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v1, 0x0

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/HD;->j6(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/TD;->j6:I

    if-lt v0, v7, :cond_1

    const/16 v0, 0x10

    :goto_1
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/tz;->j6(Ljava/lang/String;)Z

    move-result v5

    const/4 v2, 0x3

    if-eqz v5, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/RA;->j6()Lcom/google/android/gms/internal/ads/NA;

    move-result-object v5

    if-eqz v5, :cond_2

    or-int/lit8 v0, v0, 0x4

    or-int/lit8 v1, v0, 0x3

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    invoke-interface {p1, v4, v1}, Lcom/google/android/gms/internal/ads/RA;->j6(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/NA;

    move-result-object v4

    if-nez v4, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    sget v5, Lcom/google/android/gms/internal/ads/TD;->j6:I

    if-lt v5, v7, :cond_5

    iget v5, p2, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    if-eq v5, v6, :cond_4

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/NA;->j6(I)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_4
    iget v5, p2, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    if-eq v5, v6, :cond_5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/NA;->DW(I)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    :goto_2
    if-eqz v3, :cond_7

    move v1, v2

    :goto_3
    or-int/lit8 v0, v0, 0x4

    or-int/2addr v1, v0

    goto :goto_0

    :cond_6
    move v3, v1

    goto :goto_2

    :cond_7
    const/4 v1, 0x2

    goto :goto_3
.end method

.method public final j6()J
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/tz;->Hw()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hz;->j6(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/tz;->kQ:Z

    if-eqz v2, :cond_1

    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/tz;->XX:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/tz;->kQ:Z

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/tz;->XX:J

    return-wide v0

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/tz;->XX:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/zzfs;Z)Lcom/google/android/gms/internal/ads/NA;
    .registers 6

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/tz;->j6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/RA;->j6()Lcom/google/android/gms/internal/ads/NA;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/tz;->sy:Z

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/tz;->sy:Z

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/OA;->j6(Lcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/zzfs;Z)Lcom/google/android/gms/internal/ads/NA;

    move-result-object v0

    goto :goto_0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Ny;)Lcom/google/android/gms/internal/ads/Ny;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/hz;->j6(Lcom/google/android/gms/internal/ads/Ny;)Lcom/google/android/gms/internal/ads/Ny;

    move-result-object v0

    return-object v0
.end method

.method public final j6(ILjava/lang/Object;)V
    .registers 5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ty;->j6(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/hz;->j6(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hz;->j6(F)V

    goto :goto_0
.end method

.method protected final j6(JZ)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/OA;->j6(JZ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hz;->Hw()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/tz;->XX:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/tz;->kQ:Z

    return-void
.end method

.method protected final j6(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 10

    const/4 v5, 0x6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tz;->lp:Landroid/media/MediaFormat;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tz;->lp:Landroid/media/MediaFormat;

    const-string v3, "mime"

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/tz;->lp:Landroid/media/MediaFormat;

    :cond_0
    const-string v2, "channel-count"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-string v3, "sample-rate"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/tz;->aj:Z

    if-eqz v4, :cond_3

    if-ne v2, v5, :cond_3

    iget v4, p0, Lcom/google/android/gms/internal/ads/tz;->br:I

    if-ge v4, v5, :cond_3

    new-array v6, v4, [I

    :goto_2
    iget v4, p0, Lcom/google/android/gms/internal/ads/tz;->br:I

    if-ge v0, v4, :cond_4

    aput v0, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    const-string v1, "audio/raw"

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    iget v4, p0, Lcom/google/android/gms/internal/ads/tz;->OW:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/hz;->j6(Ljava/lang/String;IIII[I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/lz; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->Ws()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/vy;->j6(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/vy;

    move-result-object v0

    throw v0
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/NA;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzfs;Landroid/media/MediaCrypto;)V
    .registers 10

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/NA;->j6:Ljava/lang/String;

    sget v2, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_1

    const-string v2, "OMX.SEC.aac.dec"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "samsung"

    sget-object v2, Lcom/google/android/gms/internal/ads/TD;->FH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    const-string v2, "zeroflte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    const-string v2, "herolte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    const-string v2, "heroqlte"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/tz;->aj:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/tz;->sy:Z

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfs;->DW()Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->lp:Landroid/media/MediaFormat;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->lp:Landroid/media/MediaFormat;

    const-string v2, "mime"

    const-string v3, "audio/raw"

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->lp:Landroid/media/MediaFormat;

    invoke-virtual {p2, v0, v4, v4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->lp:Landroid/media/MediaFormat;

    const-string v1, "mime"

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfs;->DW()Landroid/media/MediaFormat;

    move-result-object v0

    invoke-virtual {p2, v0, v4, v4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/tz;->lp:Landroid/media/MediaFormat;

    goto :goto_1
.end method

.method protected final j6(Ljava/lang/String;JJ)V
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->x9:Lcom/google/android/gms/internal/ads/az;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/az;->j6(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected final j6(Z)V
    .registers 4

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/OA;->j6(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->x9:Lcom/google/android/gms/internal/ads/az;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/az;->j6(Lcom/google/android/gms/internal/ads/Dz;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->j3()Lcom/google/android/gms/internal/ads/Ry;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/Ry;->DW:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/hz;->DW(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hz;->tp()V

    goto :goto_0
.end method

.method protected final j6(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .registers 15

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/tz;->sy:Z

    if-eqz v2, :cond_0

    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_0

    invoke-virtual {p5, p7, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :goto_0
    return v0

    :cond_0
    if-eqz p11, :cond_1

    invoke-virtual {p5, p7, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    iget v2, v1, Lcom/google/android/gms/internal/ads/Dz;->v5:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/ads/Dz;->v5:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hz;->Zo()V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    invoke-virtual {v2, p6, p9, p10}, Lcom/google/android/gms/internal/ads/hz;->j6(Ljava/nio/ByteBuffer;J)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p5, p7, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    iget v2, v1, Lcom/google/android/gms/internal/ads/Dz;->Hw:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/ads/Dz;->Hw:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/mz; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/internal/ads/qz; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->Ws()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/vy;->j6(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/vy;

    move-result-object v0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
