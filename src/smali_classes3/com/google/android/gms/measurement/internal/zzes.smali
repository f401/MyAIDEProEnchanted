.class public final Lcom/google/android/gms/measurement/internal/zzes;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/gms/common/internal/c$a;
.implements Lcom/google/android/gms/common/internal/c$b;


# instance fields
.field final zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

.field private volatile zzaso:Z

.field private volatile zzasp:Lcom/google/android/gms/measurement/internal/zzar;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/zzeb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzes;Z)Z
    .registers 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzaso:Z

    return p1
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 4

    const-string p1, "MeasurementServiceConnection.onConnected"

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_6
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasp:Lcom/google/android/gms/measurement/internal/zzar;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/c;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzaj;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzev;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzev;-><init>(Lcom/google/android/gms/measurement/internal/zzes;Lcom/google/android/gms/measurement/internal/zzaj;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V
    :try_end_1c
    .catch Landroid/os/DeadObjectException; {:try_start_6 .. :try_end_1c} :catch_21
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_1c} :catch_1f
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1d

    goto :goto_28

    :catchall_1d
    move-exception p1

    goto :goto_2a

    :catch_1f
    move-exception p1

    goto :goto_22

    :catch_21
    move-exception p1

    :goto_22
    const/4 p1, 0x0

    :try_start_23
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasp:Lcom/google/android/gms/measurement/internal/zzar;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzaso:Z

    :goto_28
    monitor-exit p0

    return-void

    :goto_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_1d

    throw p1
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    const-string v0, "MeasurementServiceConnection.onConnectionFailed"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzcr;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzkj()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjj()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Service connection failed"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    monitor-enter p0

    const/4 p1, 0x0

    :try_start_1a
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzaso:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasp:Lcom/google/android/gms/measurement/internal/zzar;

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_2f

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzex;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzex;-><init>(Lcom/google/android/gms/measurement/internal/zzes;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V

    return-void

    :catchall_2f
    move-exception p1

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .registers 3

    const-string p1, "MeasurementServiceConnection.onConnectionSuspended"

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v0, "Service connection suspended"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzew;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzew;-><init>(Lcom/google/android/gms/measurement/internal/zzes;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    const-string p1, "MeasurementServiceConnection.onServiceConnected"

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    monitor-enter p0

    const/4 p1, 0x0

    if-nez p2, :cond_1f

    :try_start_9
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzaso:Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string p2, "Service connected with null binder"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception p1

    goto/16 :goto_9d

    :cond_1f
    const/4 v0, 0x0

    :try_start_20
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    if-nez p2, :cond_2f

    goto :goto_43

    :cond_2f
    const-string v1, "com.google.android.gms.measurement.internal.IMeasurementService"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/measurement/internal/zzaj;

    if-eqz v2, :cond_3d

    check-cast v1, Lcom/google/android/gms/measurement/internal/zzaj;

    :goto_3b
    move-object v0, v1

    goto :goto_43

    :cond_3d
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzal;

    invoke-direct {v1, p2}, Lcom/google/android/gms/measurement/internal/zzal;-><init>(Landroid/os/IBinder;)V

    goto :goto_3b

    :goto_43
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v1, "Bound to IMeasurementService interface"

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    goto :goto_73

    :cond_53
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v2, "Got binder with a wrong descriptor"

    invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_62} :catch_63
    .catchall {:try_start_20 .. :try_end_62} :catchall_1c

    goto :goto_73

    :catch_63
    move-exception p2

    :try_start_64
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p2

    const-string v1, "Service connect failed to get IMeasurementService"

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    :goto_73
    if-nez v0, :cond_8d

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzaso:Z
    :try_end_77
    .catchall {:try_start_64 .. :try_end_77} :catchall_1c

    :try_start_77
    invoke-static {}, Lcom/google/android/gms/common/stats/a;->j6()Lcom/google/android/gms/common/stats/a;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzeb;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zza(Lcom/google/android/gms/measurement/internal/zzeb;)Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/common/stats/a;->j6(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_8a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_77 .. :try_end_8a} :catch_8b
    .catchall {:try_start_77 .. :try_end_8a} :catchall_1c

    goto :goto_9b

    :catch_8b
    move-exception p1

    goto :goto_9b

    :cond_8d
    :try_start_8d
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzet;

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/measurement/internal/zzet;-><init>(Lcom/google/android/gms/measurement/internal/zzes;Lcom/google/android/gms/measurement/internal/zzaj;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V

    :goto_9b
    monitor-exit p0

    return-void

    :goto_9d
    monitor-exit p0
    :try_end_9e
    .catchall {:try_start_8d .. :try_end_9e} :catchall_1c

    goto :goto_a0

    :goto_9f
    throw p1

    :goto_a0
    goto :goto_9f
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const-string v0, "MeasurementServiceConnection.onServiceDisconnected"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Service disconnected"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzeu;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzeu;-><init>(Lcom/google/android/gms/measurement/internal/zzes;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzb(Landroid/content/Intent;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeb;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/common/stats/a;->j6()Lcom/google/android/gms/common/stats/a;

    move-result-object v1

    monitor-enter p0

    :try_start_10
    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzaso:Z

    if-eqz v2, :cond_25

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object p1

    const-string v0, "Connection attempt already in progress"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_25
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v3, "Using local app measurement service"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzaso:Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzeb;->zza(Lcom/google/android/gms/measurement/internal/zzeb;)Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    const/16 v3, 0x81

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/google/android/gms/common/stats/a;->j6(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    monitor-exit p0

    return-void

    :catchall_44
    move-exception p1

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_10 .. :try_end_46} :catchall_44

    throw p1
.end method

.method public final zzlk()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasp:Lcom/google/android/gms/measurement/internal/zzar;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasp:Lcom/google/android/gms/measurement/internal/zzar;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/c;->isConnected()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasp:Lcom/google/android/gms/measurement/internal/zzar;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/c;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasp:Lcom/google/android/gms/measurement/internal/zzar;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/c;->disconnect()V

    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasp:Lcom/google/android/gms/measurement/internal/zzar;

    return-void
.end method

.method public final zzll()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzaf()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeb;->getContext()Landroid/content/Context;

    move-result-object v0

    monitor-enter p0

    :try_start_c
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzaso:Z

    if-eqz v1, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Connection attempt already in progress"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_21
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasp:Lcom/google/android/gms/measurement/internal/zzar;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasp:Lcom/google/android/gms/measurement/internal/zzar;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/c;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasp:Lcom/google/android/gms/measurement/internal/zzar;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/c;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_46

    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Already awaiting connection attempt"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_46
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzar;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0, p0}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasp:Lcom/google/android/gms/measurement/internal/zzar;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Connecting to remote service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzaso:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzes;->zzasp:Lcom/google/android/gms/measurement/internal/zzar;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/c;->checkAvailabilityAndConnect()V

    monitor-exit p0

    return-void

    :catchall_6a
    move-exception v0

    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_c .. :try_end_6c} :catchall_6a

    throw v0
.end method
