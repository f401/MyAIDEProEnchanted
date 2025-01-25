.class public final Lcom/google/android/gms/internal/ads/tz;
.super Lcom/google/android/gms/internal/ads/OA;

# interfaces
.implements Lcom/google/android/gms/internal/ads/GD;


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
            "Lcom/google/android/gms/internal/ads/Jz<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/tz;-><init>(Lcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/Jz;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/_y;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/Jz;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/_y;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/RA;",
            "Lcom/google/android/gms/internal/ads/Jz<",
            "Ljava/lang/Object;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/internal/ads/_y;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 p2, 0x0

    new-array v7, p2, [Lcom/google/android/gms/internal/ads/Yy;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/tz;-><init>(Lcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/Jz;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/_y;Lcom/google/android/gms/internal/ads/Xy;[Lcom/google/android/gms/internal/ads/Yy;)V

    return-void
.end method

.method private varargs constructor <init>(Lcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/Jz;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/_y;Lcom/google/android/gms/internal/ads/Xy;[Lcom/google/android/gms/internal/ads/Yy;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/RA;",
            "Lcom/google/android/gms/internal/ads/Jz<",
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

    const/4 p4, 0x1

    invoke-direct {p0, p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/OA;-><init>(ILcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/Jz;Z)V

    new-instance p1, Lcom/google/android/gms/internal/ads/hz;

    new-instance p2, Lcom/google/android/gms/internal/ads/vz;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/vz;-><init>(Lcom/google/android/gms/internal/ads/tz;Lcom/google/android/gms/internal/ads/uz;)V

    invoke-direct {p1, p3, p7, p2}, Lcom/google/android/gms/internal/ads/hz;-><init>(Lcom/google/android/gms/internal/ads/Xy;[Lcom/google/android/gms/internal/ads/Yy;Lcom/google/android/gms/internal/ads/nz;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    new-instance p1, Lcom/google/android/gms/internal/ads/az;

    invoke-direct {p1, p3, p3}, Lcom/google/android/gms/internal/ads/az;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/_y;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tz;->x9:Lcom/google/android/gms/internal/ads/az;

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/tz;)Lcom/google/android/gms/internal/ads/az;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/tz;->x9:Lcom/google/android/gms/internal/ads/az;

    return-object p0
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
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/tz;->kQ:Z

    return p1
.end method

.method private final j6(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/hz;->j6(Ljava/lang/String;)Z

    move-result p1

    return p1
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

    if-eqz v0, :cond_15

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzfs;->Mr:I

    goto :goto_16

    :cond_15
    const/4 v0, 0x2

    :goto_16
    iput v0, p0, Lcom/google/android/gms/internal/ads/tz;->OW:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/tz;->br:I

    return-void
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

    if-nez v0, :cond_11

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/OA;->FH()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    return v0

    :cond_11
    :goto_11
    const/4 v0, 0x1

    return v0
.end method

.method public final Hw()Z
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/OA;->Hw()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hz;->v5()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
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
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/qz; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
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
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_23

    :try_start_5
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/OA;->aM()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Dz;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->x9:Lcom/google/android/gms/internal/ads/az;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/az;->DW(Lcom/google/android/gms/internal/ads/Dz;)V

    return-void

    :catchall_15
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Dz;->j6()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tz;->x9:Lcom/google/android/gms/internal/ads/az;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/az;->DW(Lcom/google/android/gms/internal/ads/Dz;)V

    throw v0

    :catchall_23
    move-exception v0

    :try_start_24
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/OA;->aM()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_34

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Dz;->j6()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tz;->x9:Lcom/google/android/gms/internal/ads/az;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/az;->DW(Lcom/google/android/gms/internal/ads/Dz;)V

    throw v0

    :catchall_34
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Dz;->j6()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tz;->x9:Lcom/google/android/gms/internal/ads/az;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/az;->DW(Lcom/google/android/gms/internal/ads/Dz;)V

    throw v0
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/zzfs;)I
    .registers 9

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/HD;->j6(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    sget v1, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_13

    const/16 v1, 0x10

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/tz;->j6(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_25

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/RA;->j6()Lcom/google/android/gms/internal/ads/NA;

    move-result-object v4

    if-eqz v4, :cond_25

    or-int/lit8 p1, v1, 0x4

    or-int/2addr p1, v5

    return p1

    :cond_25
    invoke-interface {p1, v0, v2}, Lcom/google/android/gms/internal/ads/RA;->j6(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/NA;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_2d

    return v0

    :cond_2d
    sget v4, Lcom/google/android/gms/internal/ads/TD;->j6:I

    if-lt v4, v3, :cond_46

    iget v3, p2, Lcom/google/android/gms/internal/ads/zzfs;->j3:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3c

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/NA;->j6(I)Z

    move-result v3

    if-eqz v3, :cond_47

    :cond_3c
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzfs;->aM:I

    if-eq p2, v4, :cond_46

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/NA;->DW(I)Z

    move-result p1

    if-eqz p1, :cond_47

    :cond_46
    const/4 v2, 0x1

    :cond_47
    if-eqz v2, :cond_4a

    goto :goto_4b

    :cond_4a
    const/4 v5, 0x2

    :goto_4b
    or-int/lit8 p1, v1, 0x4

    or-int/2addr p1, v5

    return p1
.end method

.method public final j6()J
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/tz;->Hw()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hz;->j6(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_20

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/tz;->kQ:Z

    if-eqz v2, :cond_15

    goto :goto_1b

    :cond_15
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/tz;->XX:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_1b
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/tz;->XX:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/tz;->kQ:Z

    :cond_20
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/tz;->XX:J

    return-wide v0
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/zzfs;Z)Lcom/google/android/gms/internal/ads/NA;
    .registers 5

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/tz;->j6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/RA;->j6()Lcom/google/android/gms/internal/ads/NA;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/tz;->sy:Z

    return-object v0

    :cond_12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/tz;->sy:Z

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/OA;->j6(Lcom/google/android/gms/internal/ads/RA;Lcom/google/android/gms/internal/ads/zzfs;Z)Lcom/google/android/gms/internal/ads/NA;

    move-result-object p1

    return-object p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Ny;)Lcom/google/android/gms/internal/ads/Ny;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/hz;->j6(Lcom/google/android/gms/internal/ads/Ny;)Lcom/google/android/gms/internal/ads/Ny;

    move-result-object p1

    return-object p1
.end method

.method public final j6(ILjava/lang/Object;)V
    .registers 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    const/4 v0, 0x3

    if-eq p1, v0, :cond_a

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/ty;->j6(ILjava/lang/Object;)V

    return-void

    :cond_a
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/hz;->j6(I)V

    return-void

    :cond_16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/hz;->j6(F)V

    return-void
.end method

.method protected final j6(JZ)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/OA;->j6(JZ)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/hz;->Hw()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/tz;->XX:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/tz;->kQ:Z

    return-void
.end method

.method protected final j6(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 12

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tz;->lp:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    const/4 v1, 0x1

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    if-eqz v1, :cond_11

    const-string v2, "mime"

    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_13

    :cond_11
    const-string p1, "audio/raw"

    :goto_13
    move-object v3, p1

    if-eqz v1, :cond_18

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/tz;->lp:Landroid/media/MediaFormat;

    :cond_18
    const-string p1, "channel-count"

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    const-string p1, "sample-rate"

    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/tz;->aj:Z

    if-eqz p1, :cond_3a

    const/4 p1, 0x6

    if-ne v4, p1, :cond_3a

    iget p2, p0, Lcom/google/android/gms/internal/ads/tz;->br:I

    if-ge p2, p1, :cond_3a

    new-array p1, p2, [I

    :goto_31
    iget p2, p0, Lcom/google/android/gms/internal/ads/tz;->br:I

    if-ge v0, p2, :cond_3b

    aput v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_3a
    const/4 p1, 0x0

    :cond_3b
    move-object v8, p1

    :try_start_3c
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    iget v6, p0, Lcom/google/android/gms/internal/ads/tz;->OW:I

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/hz;->j6(Ljava/lang/String;IIII[I)V
    :try_end_44
    .catch Lcom/google/android/gms/internal/ads/lz; {:try_start_3c .. :try_end_44} :catch_45

    return-void

    :catch_45
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->Ws()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/vy;->j6(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/vy;

    move-result-object p1

    goto :goto_50

    :goto_4f
    throw p1

    :goto_50
    goto :goto_4f
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/NA;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzfs;Landroid/media/MediaCrypto;)V
    .registers 8

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/NA;->j6:Ljava/lang/String;

    sget p4, Lcom/google/android/gms/internal/ads/TD;->j6:I

    const/16 v0, 0x18

    const/4 v1, 0x0

    if-ge p4, v0, :cond_3b

    const-string p4, "OMX.SEC.aac.dec"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    const-string p1, "samsung"

    sget-object p4, Lcom/google/android/gms/internal/ads/TD;->FH:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    sget-object p1, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    const-string p4, "zeroflte"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_39

    sget-object p1, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    const-string p4, "herolte"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_39

    sget-object p1, Lcom/google/android/gms/internal/ads/TD;->DW:Ljava/lang/String;

    const-string p4, "heroqlte"

    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3b

    :cond_39
    const/4 p1, 0x1

    goto :goto_3c

    :cond_3b
    const/4 p1, 0x0

    :goto_3c
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/tz;->aj:Z

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/tz;->sy:Z

    const/4 p4, 0x0

    if-eqz p1, :cond_5d

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfs;->DW()Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/tz;->lp:Landroid/media/MediaFormat;

    const-string v0, "audio/raw"

    const-string v2, "mime"

    invoke-virtual {p1, v2, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tz;->lp:Landroid/media/MediaFormat;

    invoke-virtual {p2, p1, p4, p4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tz;->lp:Landroid/media/MediaFormat;

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzfs;->Zo:Ljava/lang/String;

    invoke-virtual {p1, v2, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5d
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfs;->DW()Landroid/media/MediaFormat;

    move-result-object p1

    invoke-virtual {p2, p1, p4, p4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/tz;->lp:Landroid/media/MediaFormat;

    return-void
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
    .registers 3

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/OA;->j6(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tz;->x9:Lcom/google/android/gms/internal/ads/az;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/az;->j6(Lcom/google/android/gms/internal/ads/Dz;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->j3()Lcom/google/android/gms/internal/ads/Ry;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/Ry;->DW:I

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/hz;->DW(I)V

    return-void

    :cond_18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hz;->tp()V

    return-void
.end method

.method protected final j6(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .registers 12

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/tz;->sy:Z

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_e

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_e

    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return p3

    :cond_e
    if-eqz p11, :cond_20

    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    iget p2, p1, Lcom/google/android/gms/internal/ads/Dz;->v5:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/android/gms/internal/ads/Dz;->v5:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/hz;->Zo()V

    return p3

    :cond_20
    :try_start_20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/tz;->Qq:Lcom/google/android/gms/internal/ads/hz;

    invoke-virtual {p1, p6, p9, p10}, Lcom/google/android/gms/internal/ads/hz;->j6(Ljava/nio/ByteBuffer;J)Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-virtual {p5, p7, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/OA;->ca:Lcom/google/android/gms/internal/ads/Dz;

    iget p2, p1, Lcom/google/android/gms/internal/ads/Dz;->Hw:I

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/android/gms/internal/ads/Dz;->Hw:I
    :try_end_32
    .catch Lcom/google/android/gms/internal/ads/mz; {:try_start_20 .. :try_end_32} :catch_36
    .catch Lcom/google/android/gms/internal/ads/qz; {:try_start_20 .. :try_end_32} :catch_34

    return p3

    :cond_33
    return p2

    :catch_34
    move-exception p1

    goto :goto_37

    :catch_36
    move-exception p1

    :goto_37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ty;->Ws()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/vy;->j6(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/vy;

    move-result-object p1

    throw p1
.end method
