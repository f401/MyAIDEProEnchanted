.class final Lcom/google/android/gms/measurement/internal/zzeg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzagg:Lcom/google/android/gms/internal/measurement/h;

.field private final zzaqk:Lcom/google/android/gms/measurement/internal/zzk;

.field private final zzasi:Lcom/google/android/gms/measurement/internal/zzeb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzeb;Lcom/google/android/gms/measurement/internal/zzk;Lcom/google/android/gms/internal/measurement/h;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzaqk:Lcom/google/android/gms/measurement/internal/zzk;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzagg:Lcom/google/android/gms/internal/measurement/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const-string v0, "Failed to get app instance id"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzeb;->zzd(Lcom/google/android/gms/measurement/internal/zzeb;)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v2

    if-nez v2, :cond_24

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_18} :catch_48
    .catchall {:try_start_3 .. :try_end_18} :catchall_46

    :goto_18
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzagg:Lcom/google/android/gms/internal/measurement/h;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzb(Lcom/google/android/gms/internal/measurement/h;Ljava/lang/String;)V

    return-void

    :cond_24
    :try_start_24
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzaqk:Lcom/google/android/gms/measurement/internal/zzk;

    invoke-interface {v2, v3}, Lcom/google/android/gms/measurement/internal/zzaj;->zzc(Lcom/google/android/gms/measurement/internal/zzk;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_40

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgj()Lcom/google/android/gms/measurement/internal/zzda;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzda;->zzcp(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzbd;->zzanh:Lcom/google/android/gms/measurement/internal/zzbi;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzbi;->zzcd(Ljava/lang/String;)V

    :cond_40
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzeb;->zze(Lcom/google/android/gms/measurement/internal/zzeb;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_45} :catch_48
    .catchall {:try_start_24 .. :try_end_45} :catchall_46

    goto :goto_18

    :catchall_46
    move-exception v0

    goto :goto_57

    :catch_48
    move-exception v2

    :try_start_49
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_56
    .catchall {:try_start_49 .. :try_end_56} :catchall_46

    goto :goto_18

    :goto_57
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzeg;->zzagg:Lcom/google/android/gms/internal/measurement/h;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzfy;->zzb(Lcom/google/android/gms/internal/measurement/h;Ljava/lang/String;)V

    goto :goto_64

    :goto_63
    throw v0

    :goto_64
    goto :goto_63
.end method
