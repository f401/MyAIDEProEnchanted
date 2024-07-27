.class public final Lcom/google/android/gms/internal/ads/Tc;
.super Lcom/google/android/gms/internal/ads/ed;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ad;
.implements Lcom/google/android/gms/internal/ads/gd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/ed",
        "<",
        "Lcom/google/android/gms/internal/ads/Qd;",
        ">;",
        "Lcom/google/android/gms/internal/ads/ad;",
        "Lcom/google/android/gms/internal/ads/gd;"
    }
.end annotation


# instance fields
.field private final FH:Lcom/google/android/gms/internal/ads/Lp;

.field private Hw:Lcom/google/android/gms/internal/ads/hd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/ed;-><init>()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/Lp;

    new-instance v1, Lcom/google/android/gms/internal/ads/_c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/_c;-><init>(Lcom/google/android/gms/internal/ads/Tc;Lcom/google/android/gms/internal/ads/Xc;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Lp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Jp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Tc;->FH:Lcom/google/android/gms/internal/ads/Lp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tc;->FH:Lcom/google/android/gms/internal/ads/Lp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tc;->FH:Lcom/google/android/gms/internal/ads/Lp;

    new-instance v1, Lcom/google/android/gms/internal/ads/Zc;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/Zc;-><init>(Lcom/google/android/gms/internal/ads/dd;Lcom/google/android/gms/internal/ads/Xc;)V

    const-string v2, "GoogleJsInterface"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Lp;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Tc;->FH:Lcom/google/android/gms/internal/ads/Lp;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    invoke-super {p0, p0}, Lcom/google/android/gms/internal/ads/ed;->j6(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/ads/Wo;

    const-string v2, "Init failed."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/Wo;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Tc;)Lcom/google/android/gms/internal/ads/hd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tc;->Hw:Lcom/google/android/gms/internal/ads/hd;

    return-object v0
.end method


# virtual methods
.method public final DW(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/Wc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/Wc;-><init>(Lcom/google/android/gms/internal/ads/Tc;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final DW(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bd;->j6(Lcom/google/android/gms/internal/ads/ad;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method final synthetic FH(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tc;->FH:Lcom/google/android/gms/internal/ads/Lp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Lp;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final Hw(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/Vc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/Vc;-><init>(Lcom/google/android/gms/internal/ads/Tc;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic VH(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tc;->FH:Lcom/google/android/gms/internal/ads/Lp;

    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/Lp;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final Zo(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/Uc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/Uc;-><init>(Lcom/google/android/gms/internal/ads/Tc;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final destroy()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tc;->FH:Lcom/google/android/gms/internal/ads/Lp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Lp;->destroy()V

    return-void
.end method

.method public final isDestroyed()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tc;->FH:Lcom/google/android/gms/internal/ads/Lp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Lp;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method public final j6()Lcom/google/android/gms/internal/ads/Rd;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/Sd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Sd;-><init>(Lcom/google/android/gms/internal/ads/Qd;)V

    return-object v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/hd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Tc;->Hw:Lcom/google/android/gms/internal/ads/hd;

    return-void
.end method

.method final synthetic j6(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tc;->FH:Lcom/google/android/gms/internal/ads/Lp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Lp;->DW(Ljava/lang/String;)V

    return-void
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bd;->j6(Lcom/google/android/gms/internal/ads/ad;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final j6(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bd;->j6(Lcom/google/android/gms/internal/ads/ad;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final j6(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bd;->DW(Lcom/google/android/gms/internal/ads/ad;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final v5(Ljava/lang/String;)V
    .registers 5

    const-string v0, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head></html>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Tc;->Zo(Ljava/lang/String;)V

    return-void
.end method
