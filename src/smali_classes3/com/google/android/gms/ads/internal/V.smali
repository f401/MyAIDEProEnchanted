.class final Lcom/google/android/gms/ads/internal/V;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
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
    .registers 6

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/V;->j6:Lcom/google/android/gms/ads/internal/Q;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/Q;->v5(Lcom/google/android/gms/ads/internal/Q;)Ljava/util/concurrent/Future;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->ee:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ix;

    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/Q;->j6(Lcom/google/android/gms/ads/internal/Q;Lcom/google/android/gms/internal/ads/ix;)Lcom/google/android/gms/internal/ads/ix;
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_21} :catch_26
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_21} :catch_24
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_2c

    :catch_22
    move-exception p1

    goto :goto_27

    :catch_24
    move-exception p1

    goto :goto_27

    :catch_26
    move-exception p1

    :goto_27
    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2c
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/V;->j6:Lcom/google/android/gms/ads/internal/Q;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/Q;->K3()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/V;->j6([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/V;->j6:Lcom/google/android/gms/ads/internal/Q;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/Q;->Zo(Lcom/google/android/gms/ads/internal/Q;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/V;->j6:Lcom/google/android/gms/ads/internal/Q;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/Q;->Zo(Lcom/google/android/gms/ads/internal/Q;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_15
    return-void
.end method
