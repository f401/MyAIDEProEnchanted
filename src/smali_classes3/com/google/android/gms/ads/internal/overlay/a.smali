.class public final Lcom/google/android/gms/ads/internal/overlay/a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static j6(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/s;)Z
    .registers 6

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_c} :catch_2a

    const-string v2, "Launching an intent: "

    if-eqz v1, :cond_15

    :try_start_10
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_15
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Landroid/content/Intent;)V

    if-eqz p2, :cond_28

    invoke-interface {p2}, Lcom/google/android/gms/ads/internal/overlay/s;->tv()V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_10 .. :try_end_28} :catch_2a

    :cond_28
    const/4 p0, 0x1

    return p0

    :catch_2a
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static j6(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/ads/internal/overlay/s;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_9

    const-string p0, "No intent data for launcher overlay."

    :goto_5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return v0

    :cond_9
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/p;->j6(Landroid/content/Context;)V

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->gn:Landroid/content/Intent;

    if-eqz v1, :cond_15

    invoke-static {p0, v1, p2}, Lcom/google/android/gms/ads/internal/overlay/a;->j6(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/s;)Z

    move-result p0

    return p0

    :cond_15
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->DW:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    const-string p0, "Open GMSG did not contain a URL."

    goto :goto_5

    :cond_25
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->FH:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->DW:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->FH:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_42

    :cond_39
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->DW:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_42
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->Hw:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_54

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->Hw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_54
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->v5:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_8c

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->v5:Ljava/lang/String;

    const-string v4, "/"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    if-ge v4, v5, :cond_85

    iget-object p0, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->v5:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const-string p2, "Could not parse component name from open GMSG: "

    if-eqz p1, :cond_7c

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_81

    :cond_7c
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_81
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return v0

    :cond_85
    aget-object v4, v2, v0

    aget-object v2, v2, v3

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_8c
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/zzc;->Zo:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a2

    :try_start_94
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_98
    .catch Ljava/lang/NumberFormatException; {:try_start_94 .. :try_end_98} :catch_99

    goto :goto_9f

    :catch_99
    move-exception p1

    const-string p1, "Could not parse intent flags."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :goto_9f
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_a2
    sget-object p1, Lcom/google/android/gms/internal/ads/p;->UF:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_bf

    const/high16 p1, 0x10000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "android.support.customtabs.extra.user_opt_out"

    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_d7

    :cond_bf
    sget-object p1, Lcom/google/android/gms/internal/ads/p;->jD:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d7

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ads/Nk;->DW(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_d7
    :goto_d7
    invoke-static {p0, v1, p2}, Lcom/google/android/gms/ads/internal/overlay/a;->j6(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/s;)Z

    move-result p0

    return p0
.end method
