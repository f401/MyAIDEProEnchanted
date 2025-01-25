.class final Lcom/google/android/gms/internal/ads/sj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/zzwb;

.field private final FH:Lcom/google/android/gms/internal/ads/yj;

.field private final Hw:Lcom/google/android/gms/internal/ads/qj;

.field private final j6:Lcom/google/android/gms/internal/ads/Je;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qj;Lcom/google/android/gms/internal/ads/Je;Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/yj;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sj;->Hw:Lcom/google/android/gms/internal/ads/qj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/sj;->j6:Lcom/google/android/gms/internal/ads/Je;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/sj;->DW:Lcom/google/android/gms/internal/ads/zzwb;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/sj;->FH:Lcom/google/android/gms/internal/ads/yj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sj;->j6:Lcom/google/android/gms/internal/ads/Je;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sj;->Hw:Lcom/google/android/gms/internal/ads/qj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/qj;->j6(Lcom/google/android/gms/internal/ads/qj;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/sj;->DW:Lcom/google/android/gms/internal/ads/zzwb;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/sj;->FH:Lcom/google/android/gms/internal/ads/yj;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/sj;->Hw:Lcom/google/android/gms/internal/ads/qj;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/qj;->DW(Lcom/google/android/gms/internal/ads/qj;)Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Je;->j6(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwb;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Fj;Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/sj;->Hw:Lcom/google/android/gms/internal/ads/qj;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/qj;->Hw:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Fail to initialize adapter "

    if-eqz v2, :cond_31

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_36

    :cond_31
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_36
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sj;->Hw:Lcom/google/android/gms/internal/ads/qj;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/qj;->Hw:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/qj;->j6(Ljava/lang/String;I)V

    return-void
.end method
