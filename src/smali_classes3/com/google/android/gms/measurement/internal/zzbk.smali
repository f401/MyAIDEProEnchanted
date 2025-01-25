.class public final Lcom/google/android/gms/measurement/internal/zzbk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final packageName:Ljava/lang/String;

.field final zzanz:Lcom/google/android/gms/measurement/internal/zzbj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbj;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbk;->zzanz:Lcom/google/android/gms/measurement/internal/zzbj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbk;->packageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzbk;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzbk;->packageName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    if-nez p2, :cond_14

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbk;->zzanz:Lcom/google/android/gms/measurement/internal/zzbj;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbj;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "Install Referrer connection returned with null binder"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return-void

    :cond_14
    :try_start_14
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/Rb;->j6(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/qb;

    move-result-object p1

    if-nez p1, :cond_2c

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbk;->zzanz:Lcom/google/android/gms/measurement/internal/zzbj;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbj;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "Install Referrer Service implementation was not found"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return-void

    :cond_2c
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbk;->zzanz:Lcom/google/android/gms/measurement/internal/zzbj;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzbj;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjm()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v0, "Install Referrer Service connected"

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbk;->zzanz:Lcom/google/android/gms/measurement/internal/zzbj;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzbj;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbl;

    invoke-direct {v0, p0, p1, p0}, Lcom/google/android/gms/measurement/internal/zzbl;-><init>(Lcom/google/android/gms/measurement/internal/zzbk;Lcom/google/android/gms/internal/measurement/qb;Landroid/content/ServiceConnection;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_4d} :catch_4e

    return-void

    :catch_4e
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbk;->zzanz:Lcom/google/android/gms/measurement/internal/zzbj;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzbj;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v0, "Exception occurred while calling Install Referrer API"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbk;->zzanz:Lcom/google/android/gms/measurement/internal/zzbj;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzbj;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjm()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v0, "Install Referrer Service disconnected"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return-void
.end method
