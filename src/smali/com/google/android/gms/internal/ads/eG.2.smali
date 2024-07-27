.class public final Lcom/google/android/gms/internal/ads/eG;
.super Ljava/lang/Object;


# instance fields
.field private DW:I

.field private FH:I

.field private final Hw:Lcom/google/android/gms/internal/ads/zzur;

.field private final j6:[B


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzur;[B)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eG;->Hw:Lcom/google/android/gms/internal/ads/zzur;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/eG;->j6:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzur;[BLcom/google/android/gms/internal/ads/dG;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/eG;-><init>(Lcom/google/android/gms/internal/ads/zzur;[B)V

    return-void
.end method


# virtual methods
.method public final DW(I)Lcom/google/android/gms/internal/ads/eG;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/eG;->FH:I

    return-object p0
.end method

.method public final j6(I)Lcom/google/android/gms/internal/ads/eG;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/eG;->DW:I

    return-object p0
.end method

.method public final j6()V
    .registers 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eG;->Hw:Lcom/google/android/gms/internal/ads/zzur;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzur;->DW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eG;->Hw:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzur;->j6:Lcom/google/android/gms/internal/ads/qy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/eG;->j6:[B

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/qy;->j6([B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eG;->Hw:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzur;->j6:Lcom/google/android/gms/internal/ads/qy;

    iget v1, p0, Lcom/google/android/gms/internal/ads/eG;->DW:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/qy;->tp(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eG;->Hw:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzur;->j6:Lcom/google/android/gms/internal/ads/qy;

    iget v1, p0, Lcom/google/android/gms/internal/ads/eG;->FH:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/qy;->we(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eG;->Hw:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzur;->j6:Lcom/google/android/gms/internal/ads/qy;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/qy;->j6([I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eG;->Hw:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzur;->j6:Lcom/google/android/gms/internal/ads/qy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/qy;->fh()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Clearcut log failed"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
