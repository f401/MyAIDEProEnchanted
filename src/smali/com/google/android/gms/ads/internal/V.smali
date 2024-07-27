.class final Lcom/google/android/gms/ads/internal/V;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final j6:Lcom/google/android/gms/ads/internal/Q;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/Q;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/V;->j6:Lcom/google/android/gms/ads/internal/Q;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/Q;Lcom/google/android/gms/ads/internal/S;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/V;-><init>(Lcom/google/android/gms/ads/internal/Q;)V

    return-void
.end method

.method private final varargs j6([Ljava/lang/Void;)Ljava/lang/String;
    .registers 8

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/V;->j6:Lcom/google/android/gms/ads/internal/Q;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/V;->j6:Lcom/google/android/gms/ads/internal/Q;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/Q;->v5(Lcom/google/android/gms/ads/internal/Q;)Ljava/util/concurrent/Future;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->ee:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ix;

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/Q;->j6(Lcom/google/android/gms/ads/internal/Q;Lcom/google/android/gms/internal/ads/ix;)Lcom/google/android/gms/internal/ads/ix;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/V;->j6:Lcom/google/android/gms/ads/internal/Q;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/Q;->K3()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/V;->j6([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/V;->j6:Lcom/google/android/gms/ads/internal/Q;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/Q;->Zo(Lcom/google/android/gms/ads/internal/Q;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/V;->j6:Lcom/google/android/gms/ads/internal/Q;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/Q;->Zo(Lcom/google/android/gms/ads/internal/Q;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
