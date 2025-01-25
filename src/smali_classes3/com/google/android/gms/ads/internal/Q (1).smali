.class public final Lcom/google/android/gms/ads/internal/Q;
.super Lcom/google/android/gms/internal/ads/JH;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/zzwf;

.field private final FH:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/google/android/gms/internal/ads/ix;",
            ">;"
        }
    .end annotation
.end field

.field private final Hw:Landroid/content/Context;

.field private VH:Lcom/google/android/gms/internal/ads/xH;

.field private Zo:Landroid/webkit/WebView;

.field private gn:Lcom/google/android/gms/internal/ads/ix;

.field private final j6:Lcom/google/android/gms/internal/ads/zzbbi;

.field private u7:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Lcom/google/android/gms/ads/internal/W;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbi;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/JH;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/Q;->Hw:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/Q;->j6:Lcom/google/android/gms/internal/ads/zzbbi;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/Q;->DW:Lcom/google/android/gms/internal/ads/zzwf;

    new-instance p2, Landroid/webkit/WebView;

    invoke-direct {p2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/Q;->Zo:Landroid/webkit/WebView;

    new-instance p1, Lcom/google/android/gms/ads/internal/U;

    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/internal/U;-><init>(Lcom/google/android/gms/ads/internal/Q;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/Q;->FH:Ljava/util/concurrent/Future;

    new-instance p1, Lcom/google/android/gms/ads/internal/W;

    invoke-direct {p1, p3}, Lcom/google/android/gms/ads/internal/W;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/Q;->v5:Lcom/google/android/gms/ads/internal/W;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/Q;->J0(I)V

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/Q;->Zo:Landroid/webkit/WebView;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/Q;->Zo:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/Q;->Zo:Landroid/webkit/WebView;

    new-instance p2, Lcom/google/android/gms/ads/internal/S;

    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/internal/S;-><init>(Lcom/google/android/gms/ads/internal/Q;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/Q;->Zo:Landroid/webkit/WebView;

    new-instance p2, Lcom/google/android/gms/ads/internal/T;

    invoke-direct {p2, p0}, Lcom/google/android/gms/ads/internal/T;-><init>(Lcom/google/android/gms/ads/internal/Q;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/ads/internal/Q;)Lcom/google/android/gms/internal/ads/ix;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/Q;->gn:Lcom/google/android/gms/internal/ads/ix;

    return-object p0
.end method

.method static synthetic DW(Lcom/google/android/gms/ads/internal/Q;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/Q;->ef(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic FH(Lcom/google/android/gms/ads/internal/Q;)Lcom/google/android/gms/internal/ads/zzbbi;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/Q;->j6:Lcom/google/android/gms/internal/ads/zzbbi;

    return-object p0
.end method

.method static synthetic Hw(Lcom/google/android/gms/ads/internal/Q;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/Q;->Hw:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic Zo(Lcom/google/android/gms/ads/internal/Q;)Landroid/webkit/WebView;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/Q;->Zo:Landroid/webkit/WebView;

    return-object p0
.end method

.method private final ef(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/Q;->Hw:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/ads/internal/Q;Lcom/google/android/gms/internal/ads/ix;)Lcom/google/android/gms/internal/ads/ix;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/Q;->gn:Lcom/google/android/gms/internal/ads/ix;

    return-object p1
.end method

.method static synthetic j6(Lcom/google/android/gms/ads/internal/Q;)Lcom/google/android/gms/internal/ads/xH;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/Q;->VH:Lcom/google/android/gms/internal/ads/xH;

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/ads/internal/Q;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/Q;->sG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final sG(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Q;->gn:Lcom/google/android/gms/internal/ads/ix;

    if-nez v0, :cond_5

    return-object p1

    :cond_5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Q;->gn:Lcom/google/android/gms/internal/ads/ix;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/Q;->Hw:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lcom/google/android/gms/internal/ads/ix;->j6(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p1
    :try_end_12
    .catch Lcom/google/android/gms/internal/ads/jx; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_19

    :catch_13
    move-exception v0

    const-string v1, "Unable to process ad data"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_19
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic v5(Lcom/google/android/gms/ads/internal/Q;)Ljava/util/concurrent/Future;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/Q;->FH:Ljava/util/concurrent/Future;

    return-object p0
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/xH;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/Q;->VH:Lcom/google/android/gms/internal/ads/xH;

    return-void
.end method

.method public final Ej()Lcom/google/android/gms/internal/ads/zzwf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Q;->DW:Lcom/google/android/gms/internal/ads/zzwf;

    return-object v0
.end method

.method public final FH()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final GK()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final J0(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Q;->Zo:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/Q;->Zo:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method final K3()Ljava/lang/String;
    .registers 6

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/p;->jn:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/Q;->v5:Lcom/google/android/gms/ads/internal/W;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/W;->j6()Ljava/lang/String;

    move-result-object v1

    const-string v2, "query"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/Q;->v5:Lcom/google/android/gms/ads/internal/W;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/W;->FH()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pubId"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/Q;->v5:Lcom/google/android/gms/ads/internal/W;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/W;->Hw()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3e

    :cond_54
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/Q;->gn:Lcom/google/android/gms/internal/ads/ix;

    if-eqz v1, :cond_69

    :try_start_5c
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/Q;->Hw:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/ix;->j6(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0
    :try_end_62
    .catch Lcom/google/android/gms/internal/ads/jx; {:try_start_5c .. :try_end_62} :catch_63

    goto :goto_69

    :catch_63
    move-exception v1

    const-string v2, "Unable to process ad data"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_69
    :goto_69
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/Q;->OM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final OM()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Q;->v5:Lcom/google/android/gms/ads/internal/W;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/W;->DW()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v0, "www.google.com"

    :cond_e
    sget-object v1, Lcom/google/android/gms/internal/ads/p;->jn:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Of()Lcom/google/android/gms/internal/ads/xH;
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getIAdListener not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final Ws(Z)V
    .registers 2

    return-void
.end method

.method public final aX()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final cb()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d8()Labcd/ox;
    .registers 2

    const-string v0, "getAdFrame must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Q;->Zo:Landroid/webkit/WebView;

    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v0

    return-object v0
.end method

.method public final destroy()V
    .registers 3

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Q;->u7:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Q;->FH:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Q;->Zo:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/Q;->Zo:Landroid/webkit/WebView;

    return-void
.end method

.method final dx(Ljava/lang/String;)I
    .registers 4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "height"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    return v1

    :cond_12
    :try_start_12
    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Q;->Hw:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/Zl;->j6(Landroid/content/Context;I)I

    move-result p1
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_1f} :catch_20

    return p1

    :catch_20
    move-exception p1

    return v1
.end method

.method public final e9()Landroid/os/Bundle;
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final er()V
    .registers 2

    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/kI;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final gn(Z)V
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unused method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final hp()Lcom/google/android/gms/internal/ads/QH;
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getIAppEventListener not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j3(Ljava/lang/String;)V
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unused method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/J;)V
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unused method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/NH;)V
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unused method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/QH;)V
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unused method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/WH;)V
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unused method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/jj;)V
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unused method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/lg;)V
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unused method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/qg;Ljava/lang/String;)V
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unused method"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/tH;)V
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unused method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzwf;)V
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "AdSize must be set before initialization"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzyv;)V
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unused method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzzw;)V
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unused method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzwb;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Q;->Zo:Landroid/webkit/WebView;

    const-string v1, "This Search Ad has already been torn down"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/Q;->v5:Lcom/google/android/gms/ads/internal/W;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/Q;->j6:Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/internal/W;->j6(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzbbi;)V

    new-instance p1, Lcom/google/android/gms/ads/internal/V;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/ads/internal/V;-><init>(Lcom/google/android/gms/ads/internal/Q;Lcom/google/android/gms/ads/internal/S;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/Q;->u7:Landroid/os/AsyncTask;

    const/4 p1, 0x1

    return p1
.end method

.method public final nw(Ljava/lang/String;)V
    .registers 3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unused method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final oy()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final pause()V
    .registers 2

    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public final showInterstitial()V
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final stopLoading()V
    .registers 1

    return-void
.end method

.method public final ys()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAdUnitId not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
