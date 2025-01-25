.class public final Lcom/google/android/gms/internal/ads/hh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/dh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dh<",
        "Lcom/google/android/gms/internal/ads/Mo;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/ads/internal/gmsg/zzaa;

.field private final FH:Lcom/google/android/gms/internal/ads/na;

.field private final Hw:Landroid/content/Context;

.field private final VH:Lcom/google/android/gms/internal/ads/ix;

.field private final Zo:Lcom/google/android/gms/ads/internal/C;

.field private gn:Ljava/lang/String;

.field private j6:Lcom/google/android/gms/internal/ads/Hm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Hm<",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Lcom/google/android/gms/internal/ads/zzbbi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/C;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/zzbbi;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Webview loading for native ads."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hh;->Hw:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hh;->Zo:Lcom/google/android/gms/ads/internal/C;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/hh;->VH:Lcom/google/android/gms/internal/ads/ix;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/hh;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/hh;->gn:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Zo()Lcom/google/android/gms/internal/ads/So;

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->qU:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/a;->vy()Lcom/google/android/gms/ads/internal/ta;

    move-result-object v1

    invoke-static {p1, p5, v0, p4, v1}, Lcom/google/android/gms/internal/ads/So;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/ads/internal/ta;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object p4

    new-instance p5, Lcom/google/android/gms/ads/internal/gmsg/zzaa;

    invoke-direct {p5, p1}, Lcom/google/android/gms/ads/internal/gmsg/zzaa;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/hh;->DW:Lcom/google/android/gms/ads/internal/gmsg/zzaa;

    new-instance p1, Lcom/google/android/gms/internal/ads/na;

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/na;-><init>(Lcom/google/android/gms/internal/ads/ja;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hh;->FH:Lcom/google/android/gms/internal/ads/na;

    new-instance p1, Lcom/google/android/gms/internal/ads/ih;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/ih;-><init>(Lcom/google/android/gms/internal/ads/hh;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/Mm;->DW:Ljava/util/concurrent/Executor;

    invoke-static {p4, p1, p2}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/qm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hh;->j6:Lcom/google/android/gms/internal/ads/Hm;

    const-string p2, "WebViewNativeAdsUtil.constructor"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/tm;->j6(Lcom/google/android/gms/internal/ads/Hm;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/hh;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/hh;->gn:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final DW(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh;->j6:Lcom/google/android/gms/internal/ads/Hm;

    new-instance v1, Lcom/google/android/gms/internal/ads/jh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/jh;-><init>(Lcom/google/android/gms/internal/ads/hh;Lorg/json/JSONObject;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/qm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object p1

    return-object p1
.end method

.method final synthetic DW(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/Mo;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 5

    const-string v0, "ads_id"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hh;->gn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "google.afma.nativeAds.handleImpressionPing"

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/qd;->DW(Ljava/lang/String;Lorg/json/JSONObject;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object p1

    return-object p1
.end method

.method public final DW(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/B<",
            "-",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh;->j6:Lcom/google/android/gms/internal/ads/Hm;

    new-instance v1, Lcom/google/android/gms/internal/ads/qh;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/qh;-><init>(Lcom/google/android/gms/internal/ads/hh;Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/sm;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final FH(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh;->j6:Lcom/google/android/gms/internal/ads/Hm;

    new-instance v1, Lcom/google/android/gms/internal/ads/mh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/mh;-><init>(Lcom/google/android/gms/internal/ads/hh;Lorg/json/JSONObject;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/qm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object p1

    return-object p1
.end method

.method final synthetic FH(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/Mo;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 5

    const-string v0, "ads_id"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hh;->gn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "google.afma.nativeAds.handleClickGmsg"

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/qd;->DW(Ljava/lang/String;Lorg/json/JSONObject;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object p1

    return-object p1
.end method

.method public final Hw(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh;->j6:Lcom/google/android/gms/internal/ads/Hm;

    new-instance v1, Lcom/google/android/gms/internal/ads/lh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/lh;-><init>(Lcom/google/android/gms/internal/ads/hh;Lorg/json/JSONObject;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/qm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object p1

    return-object p1
.end method

.method final synthetic Hw(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/Mo;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 6

    const-string v0, "ads_id"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hh;->gn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Rm;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/nh;

    invoke-direct {v1, p0, p2, v0}, Lcom/google/android/gms/internal/ads/nh;-><init>(Lcom/google/android/gms/internal/ads/hh;Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/Rm;)V

    const-string v2, "/nativeAdPreProcess"

    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v1, "google.afma.nativeAds.preProcessJsonGmsg"

    invoke-interface {p2, v1, p1}, Lcom/google/android/gms/internal/ads/qd;->DW(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method

.method final synthetic j6(Lcom/google/android/gms/internal/ads/Mo;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 14

    const-string v0, "Javascript has loaded for native ads."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v1

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/hh;->Zo:Lcom/google/android/gms/ads/internal/C;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/google/android/gms/ads/internal/ua;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh;->Hw:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v9, v0, v2, v2}, Lcom/google/android/gms/ads/internal/ua;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Wj;Lcom/google/android/gms/internal/ads/zzaso;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v6

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    invoke-interface/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/tp;->j6(Lcom/google/android/gms/internal/ads/WG;Lcom/google/android/gms/ads/internal/gmsg/i;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/gmsg/k;Lcom/google/android/gms/ads/internal/overlay/s;ZLcom/google/android/gms/ads/internal/gmsg/F;Lcom/google/android/gms/ads/internal/ua;Lcom/google/android/gms/internal/ads/ag;Lcom/google/android/gms/internal/ads/Wj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh;->DW:Lcom/google/android/gms/ads/internal/gmsg/zzaa;

    const-string v1, "/logScionEvent"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh;->FH:Lcom/google/android/gms/internal/ads/na;

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object p1

    return-object p1
.end method

.method public final j6(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh;->j6:Lcom/google/android/gms/internal/ads/Hm;

    new-instance v1, Lcom/google/android/gms/internal/ads/kh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/kh;-><init>(Lcom/google/android/gms/internal/ads/hh;Lorg/json/JSONObject;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/qm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object p1

    return-object p1
.end method

.method final synthetic j6(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/Mo;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 5

    const-string v0, "ads_id"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hh;->gn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "google.afma.nativeAds.handleDownloadedImpressionPing"

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/qd;->DW(Ljava/lang/String;Lorg/json/JSONObject;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object p1

    return-object p1
.end method

.method public final j6()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh;->j6:Lcom/google/android/gms/internal/ads/Hm;

    new-instance v1, Lcom/google/android/gms/internal/ads/sh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/sh;-><init>(Lcom/google/android/gms/internal/ads/hh;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/sm;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/B<",
            "-",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh;->j6:Lcom/google/android/gms/internal/ads/Hm;

    new-instance v1, Lcom/google/android/gms/internal/ads/ph;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/ph;-><init>(Lcom/google/android/gms/internal/ads/hh;Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/sm;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final j6(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hh;->j6:Lcom/google/android/gms/internal/ads/Hm;

    new-instance v1, Lcom/google/android/gms/internal/ads/rh;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/rh;-><init>(Lcom/google/android/gms/internal/ads/hh;Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/sm;Ljava/util/concurrent/Executor;)V

    return-void
.end method
