.class final Lcom/google/android/gms/measurement/internal/zzbo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final val$context:Landroid/content/Context;

.field private final zzaoe:Lcom/google/android/gms/measurement/internal/zzbw;

.field private final zzaof:Lcom/google/android/gms/measurement/internal/zzas;

.field private final zzaog:J

.field private final zzaoh:Landroid/os/Bundle;

.field private final zzrf:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbm;Lcom/google/android/gms/measurement/internal/zzbw;JLandroid/os/Bundle;Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzas;Landroid/content/BroadcastReceiver$PendingResult;)V
    .registers 9

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaoe:Lcom/google/android/gms/measurement/internal/zzbw;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaog:J

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaoh:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzbo;->val$context:Landroid/content/Context;

    iput-object p7, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaof:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzrf:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaoe:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzanf:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaog:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_20

    cmp-long v6, v2, v0

    if-gez v6, :cond_1c

    cmp-long v6, v2, v4

    if-gtz v6, :cond_20

    :cond_1c
    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    :cond_20
    cmp-long v0, v2, v4

    if-lez v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaoh:Landroid/os/Bundle;

    const-string v1, "click_timestamp"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaoh:Landroid/os/Bundle;

    const-string v1, "_cis"

    const-string v2, "referrer broadcast"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbo;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbw;->zza(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzan;)Lcom/google/android/gms/measurement/internal/zzbw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgj()Lcom/google/android/gms/measurement/internal/zzda;

    move-result-object v0

    const-string v1, "_cmp"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaoh:Landroid/os/Bundle;

    const-string v3, "auto"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzda;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzaof:Lcom/google/android/gms/measurement/internal/zzas;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Install campaign recorded"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbo;->zzrf:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    :cond_5a
    return-void
.end method
