.class final Lcom/google/android/gms/measurement/internal/zzdu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final zzare:Lcom/google/android/gms/measurement/internal/zzda;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzda;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdu;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzda;Lcom/google/android/gms/measurement/internal/zzdb;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzdu;-><init>(Lcom/google/android/gms/measurement/internal/zzda;)V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 9

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdu;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "onActivityCreated"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_c7

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_c7

    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_b7

    if-eqz v2, :cond_c7

    const-string v2, "auto"

    if-nez p2, :cond_47

    :try_start_25
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzdu;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzda;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzdu;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzda;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzfy;->zzc(Landroid/content/Intent;)Z

    move-result v0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_38} :catch_b7

    if-eqz v0, :cond_3d

    const-string v0, "gs"

    goto :goto_3e

    :cond_3d
    move-object v0, v2

    :goto_3e
    if-eqz v3, :cond_47

    :try_start_40
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzdu;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    const-string v5, "_cmp"

    invoke-virtual {v4, v0, v5, v3}, Lcom/google/android/gms/measurement/internal/zzda;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_47
    const-string v0, "referrer"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_54

    return-void

    :cond_54
    const-string v1, "gclid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_87

    const-string v1, "utm_campaign"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_85

    const-string v1, "utm_source"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_85

    const-string v1, "utm_medium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_85

    const-string v1, "utm_term"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_85

    const-string v1, "utm_content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_87

    :cond_85
    const/4 v1, 0x1

    goto :goto_88

    :cond_87
    const/4 v1, 0x0

    :goto_88
    if-nez v1, :cond_9a

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdu;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v1, "Activity created with data \'referrer\' param without gclid and at least one utm field"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    return-void

    :cond_9a
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdu;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjn()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v4, "Activity created with referrer"

    invoke-virtual {v1, v4, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c7

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdu;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    const-string v4, "_ldl"

    invoke-virtual {v1, v2, v4, v0, v3}, Lcom/google/android/gms/measurement/internal/zzda;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_b6} :catch_b7

    goto :goto_c7

    :catch_b7
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdu;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzda;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v1

    const-string v2, "Throwable caught in onActivityCreated"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c7
    :goto_c7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdu;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgm()Lcom/google/android/gms/measurement/internal/zzdy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzdy;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdu;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgm()Lcom/google/android/gms/measurement/internal/zzdy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzdy;->onActivityDestroyed(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdu;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgm()Lcom/google/android/gms/measurement/internal/zzdy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzdy;->onActivityPaused(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdu;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzda;->zzgo()Lcom/google/android/gms/measurement/internal/zzfd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfd;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzfi;

    invoke-direct {v3, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfi;-><init>(Lcom/google/android/gms/measurement/internal/zzfd;J)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdu;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgm()Lcom/google/android/gms/measurement/internal/zzdy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzdy;->onActivityResumed(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdu;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzda;->zzgo()Lcom/google/android/gms/measurement/internal/zzfd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfd;->zzbx()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfd;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-direct {v3, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzfh;-><init>(Lcom/google/android/gms/measurement/internal/zzfd;J)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdu;->zzare:Lcom/google/android/gms/measurement/internal/zzda;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzda;->zzgm()Lcom/google/android/gms/measurement/internal/zzdy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzdy;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
