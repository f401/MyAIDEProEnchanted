.class public final Lcom/google/android/gms/internal/ads/Q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Lcom/google/android/gms/internal/ads/xb;

.field private FH:Lcom/google/android/gms/ads/internal/gmsg/B;

.field Hw:Ljava/lang/String;

.field Zo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Lcom/google/android/gms/internal/ads/dh;

.field v5:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/dh;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Q;->j6:Lcom/google/android/gms/internal/ads/dh;

    return-void
.end method

.method private final FH()V
    .registers 4

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Q;->Hw:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Q;->v5:Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Q;->Zo:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Q;->Zo:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Q;)Lcom/google/android/gms/internal/ads/xb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Q;->DW:Lcom/google/android/gms/internal/ads/xb;

    return-object v0
.end method


# virtual methods
.method public final DW()Lcom/google/android/gms/internal/ads/xb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Q;->DW:Lcom/google/android/gms/internal/ads/xb;

    return-object v0
.end method

.method public final j6()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Q;->DW:Lcom/google/android/gms/internal/ads/xb;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Q;->v5:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Q;->FH()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Q;->DW:Lcom/google/android/gms/internal/ads/xb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/xb;->oT()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/xb;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Q;->DW:Lcom/google/android/gms/internal/ads/xb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Q;->FH:Lcom/google/android/gms/ads/internal/gmsg/B;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Q;->j6:Lcom/google/android/gms/internal/ads/dh;

    const-string v2, "/unconfirmedClick"

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ads/dh;->DW(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/S;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/S;-><init>(Lcom/google/android/gms/internal/ads/Q;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Q;->FH:Lcom/google/android/gms/ads/internal/gmsg/B;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Q;->j6:Lcom/google/android/gms/internal/ads/dh;

    const-string v1, "/unconfirmedClick"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Q;->FH:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dh;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Q;->Zo:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Q;->Hw:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Q;->v5:Ljava/lang/Long;

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Q;->FH()V

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Q;->Hw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "time_interval"

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Q;->v5:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "messageType"

    const-string v2, "onePointFiveClick"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Q;->j6:Lcom/google/android/gms/internal/ads/dh;

    const-string v2, "sendMessageToNativeJs"

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ads/dh;->j6(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Unable to dispatch sendMessageToNativeJs event"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
