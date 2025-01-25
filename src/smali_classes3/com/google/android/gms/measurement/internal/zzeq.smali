.class final Lcom/google/android/gms/measurement/internal/zzeq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzads:Ljava/lang/String;

.field private final zzadz:Ljava/lang/String;

.field private final zzaeg:Z

.field private final zzagg:Lcom/google/android/gms/internal/measurement/h;

.field private final zzaqk:Lcom/google/android/gms/measurement/internal/zzk;

.field private final zzasi:Lcom/google/android/gms/measurement/internal/zzeb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzeb;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzk;Lcom/google/android/gms/internal/measurement/h;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzads:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzadz:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzaeg:Z

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzaqk:Lcom/google/android/gms/measurement/internal/zzk;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzagg:Lcom/google/android/gms/internal/measurement/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    const-string v0, "Failed to get user properties"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :try_start_7
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzeb;->zzd(Lcom/google/android/gms/measurement/internal/zzeb;)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v2

    if-nez v2, :cond_2c

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzads:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzadz:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_20} :catch_44
    .catchall {:try_start_7 .. :try_end_20} :catchall_42

    :goto_20
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzagg:Lcom/google/android/gms/internal/measurement/h;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Lcom/google/android/gms/internal/measurement/h;Landroid/os/Bundle;)V

    return-void

    :cond_2c
    :try_start_2c
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzads:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzadz:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzaeg:Z

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzaqk:Lcom/google/android/gms/measurement/internal/zzk;

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzk;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzfy;->zzd(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzeb;->zze(Lcom/google/android/gms/measurement/internal/zzeb;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_41} :catch_44
    .catchall {:try_start_2c .. :try_end_41} :catchall_42

    goto :goto_20

    :catchall_42
    move-exception v0

    goto :goto_55

    :catch_44
    move-exception v2

    :try_start_45
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzads:Ljava/lang/String;

    invoke-virtual {v3, v0, v4, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_54
    .catchall {:try_start_45 .. :try_end_54} :catchall_42

    goto :goto_20

    :goto_55
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzeq;->zzagg:Lcom/google/android/gms/internal/measurement/h;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Lcom/google/android/gms/internal/measurement/h;Landroid/os/Bundle;)V

    goto :goto_62

    :goto_61
    throw v0

    :goto_62
    goto :goto_61
.end method
