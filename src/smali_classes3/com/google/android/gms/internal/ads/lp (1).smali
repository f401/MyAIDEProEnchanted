.class public Lcom/google/android/gms/internal/ads/lp;
.super Lcom/google/android/gms/internal/ads/No;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/YF;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/No;-><init>(Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/YF;Z)V

    return-void
.end method


# virtual methods
.method protected final j6(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Mo;

    if-nez v0, :cond_b

    const-string p1, "Tried to intercept request from a WebView that wasn\'t an AdWebView."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/ads/Mo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/No;->er:Lcom/google/android/gms/internal/ads/Wj;

    if-eqz v0, :cond_15

    const/4 v1, 0x1

    invoke-interface {v0, p2, p3, v1}, Lcom/google/android/gms/internal/ads/Wj;->j6(Ljava/lang/String;Ljava/util/Map;I)V

    :cond_15
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mraid.js"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    if-nez p3, :cond_2c

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p3

    :cond_2c
    invoke-super {p0, p2, p3}, Lcom/google/android/gms/internal/ads/No;->j6(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_31
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object p2

    if-eqz p2, :cond_3e

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/tp;->v5()V

    :cond_3e
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/yp;->v5()Z

    move-result p2

    if-eqz p2, :cond_55

    sget-object p2, Lcom/google/android/gms/internal/ads/p;->aj:Lcom/google/android/gms/internal/ads/e;

    :goto_4a
    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_61

    :cond_55
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->Mr()Z

    move-result p2

    if-eqz p2, :cond_5e

    sget-object p2, Lcom/google/android/gms/internal/ads/p;->sy:Lcom/google/android/gms/internal/ads/e;

    goto :goto_4a

    :cond_5e
    sget-object p2, Lcom/google/android/gms/internal/ads/p;->Qq:Lcom/google/android/gms/internal/ads/e;

    goto :goto_4a

    :goto_61
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->j3()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    invoke-static {p3, p1, p2}, Lcom/google/android/gms/internal/ads/Nk;->FH(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
