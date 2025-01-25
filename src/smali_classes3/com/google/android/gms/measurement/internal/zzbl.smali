.class final Lcom/google/android/gms/measurement/internal/zzbl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzaoa:Lcom/google/android/gms/internal/measurement/qb;

.field private final zzaob:Landroid/content/ServiceConnection;

.field private final zzaoc:Lcom/google/android/gms/measurement/internal/zzbk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbk;Lcom/google/android/gms/internal/measurement/qb;Landroid/content/ServiceConnection;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbl;->zzaoc:Lcom/google/android/gms/measurement/internal/zzbk;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzbl;->zzaoa:Lcom/google/android/gms/internal/measurement/qb;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzbl;->zzaob:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbl;->zzaoc:Lcom/google/android/gms/measurement/internal/zzbk;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzbk;->zzanz:Lcom/google/android/gms/measurement/internal/zzbj;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbk;->zza(Lcom/google/android/gms/measurement/internal/zzbk;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbl;->zzaoa:Lcom/google/android/gms/internal/measurement/qb;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzbl;->zzaob:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzbj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/qb;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzbj;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbr;->zzaf()V

    if-eqz v0, :cond_12f

    const-string v2, "install_begin_timestamp_seconds"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    cmp-long v2, v6, v4

    if-nez v2, :cond_3c

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzbj;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v2, "Service response is missing Install Referrer install timestamp"

    :goto_37
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzby(Ljava/lang/String;)V

    goto/16 :goto_12f

    :cond_3c
    const-string v2, "install_referrer"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_121

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4c

    goto/16 :goto_121

    :cond_4c
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzbj;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v10

    const-string v11, "InstallReferrer API result"

    invoke-virtual {v10, v11, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzbj;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgr()Lcom/google/android/gms/measurement/internal/zzfy;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    const-string v12, "?"

    if-eqz v11, :cond_72

    invoke-virtual {v12, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_77

    :cond_72
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_77
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/google/android/gms/measurement/internal/zzfy;->zza(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_8e

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzbj;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v2, "No campaign params defined in install referrer result"

    goto :goto_37

    :cond_8e
    const-string v10, "medium"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a8

    const-string v11, "(not set)"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a8

    const-string v11, "organic"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a8

    const/4 v10, 0x1

    goto :goto_a9

    :cond_a8
    const/4 v10, 0x0

    :goto_a9
    if-eqz v10, :cond_ca

    const-string v10, "referrer_click_timestamp_seconds"

    invoke-virtual {v0, v10, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    mul-long v10, v10, v8

    cmp-long v0, v10, v4

    if-nez v0, :cond_c5

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzbj;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v2, "Install Referrer is missing click timestamp for ad campaign"

    goto/16 :goto_37

    :cond_c5
    const-string v0, "click_timestamp"

    invoke-virtual {v2, v0, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_ca
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzbj;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzang:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbg;->get()J

    move-result-wide v4

    cmp-long v0, v6, v4

    if-nez v0, :cond_ed

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzbj;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzbj;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v2, "Campaign has already been logged"

    goto/16 :goto_37

    :cond_ed
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzbj;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgu()Lcom/google/android/gms/measurement/internal/zzbd;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzbd;->zzang:Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzbg;->set(J)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzbj;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgw()Lcom/google/android/gms/measurement/internal/zzn;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzbj;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v4, "Logging Install Referrer campaign from sdk with "

    const-string v5, "referrer API"

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "_cis"

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzbj;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgj()Lcom/google/android/gms/measurement/internal/zzda;

    move-result-object v0

    const-string v4, "auto"

    const-string v5, "_cmp"

    invoke-virtual {v0, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzda;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_12f

    :cond_121
    :goto_121
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzbj;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v0

    const-string v2, "No referrer defined in install referrer response"

    goto/16 :goto_37

    :cond_12f
    :goto_12f
    if-eqz v3, :cond_13e

    invoke-static {}, Lcom/google/android/gms/common/stats/a;->j6()Lcom/google/android/gms/common/stats/a;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzbj;->zzada:Lcom/google/android/gms/measurement/internal/zzbw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbw;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/common/stats/a;->j6(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    :cond_13e
    return-void
.end method
