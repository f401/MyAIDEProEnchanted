.class final Lcom/google/android/gms/measurement/internal/zzej;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzagg:Lcom/google/android/gms/internal/measurement/h;

.field private final zzagi:Lcom/google/android/gms/measurement/internal/zzag;

.field private final zzagj:Ljava/lang/String;

.field private final zzasi:Lcom/google/android/gms/measurement/internal/zzeb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzeb;Lcom/google/android/gms/measurement/internal/zzag;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/h;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzagi:Lcom/google/android/gms/measurement/internal/zzag;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzagj:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzagg:Lcom/google/android/gms/internal/measurement/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzeb;->zzd(Lcom/google/android/gms/measurement/internal/zzeb;)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Discarding data. Failed to send event to service to bundle"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_34
    .catchall {:try_start_1 .. :try_end_18} :catchall_32

    :goto_18
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzagg:Lcom/google/android/gms/internal/measurement/h;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Lcom/google/android/gms/internal/measurement/h;[B)V

    return-void

    :cond_24
    :try_start_24
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzagi:Lcom/google/android/gms/measurement/internal/zzag;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzagj:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Lcom/google/android/gms/measurement/internal/zzag;Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzeb;->zze(Lcom/google/android/gms/measurement/internal/zzeb;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_31} :catch_34
    .catchall {:try_start_24 .. :try_end_31} :catchall_32

    goto :goto_18

    :catchall_32
    move-exception v1

    goto :goto_45

    :catch_34
    move-exception v1

    :try_start_35
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v3, "Failed to send event to the service to bundle"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_44
    .catchall {:try_start_35 .. :try_end_44} :catchall_32

    goto :goto_18

    :goto_45
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzej;->zzagg:Lcom/google/android/gms/internal/measurement/h;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Lcom/google/android/gms/internal/measurement/h;[B)V

    goto :goto_52

    :goto_51
    throw v1

    :goto_52
    goto :goto_51
.end method
