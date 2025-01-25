.class final Lcom/google/android/gms/measurement/internal/zzei;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzasa:Lcom/google/android/gms/measurement/internal/zzdx;

.field private final zzasi:Lcom/google/android/gms/measurement/internal/zzeb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzeb;Lcom/google/android/gms/measurement/internal/zzdx;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzasa:Lcom/google/android/gms/measurement/internal/zzdx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzd(Lcom/google/android/gms/measurement/internal/zzeb;)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v1

    if-nez v1, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Failed to send current screen to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return-void

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzasa:Lcom/google/android/gms/measurement/internal/zzdx;

    if-nez v0, :cond_2e

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeb;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    :goto_2a
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzaj;->zza(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    :cond_2e
    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzdx;->zzaro:J

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzasa:Lcom/google/android/gms/measurement/internal/zzdx;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzdx;->zzuw:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzasa:Lcom/google/android/gms/measurement/internal/zzdx;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzdx;->zzarn:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzeb;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_2a

    :goto_43
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzeb;->zze(Lcom/google/android/gms/measurement/internal/zzeb;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_48} :catch_49

    return-void

    :catch_49
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzei;->zzasi:Lcom/google/android/gms/measurement/internal/zzeb;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzeb;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Failed to send current screen to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
