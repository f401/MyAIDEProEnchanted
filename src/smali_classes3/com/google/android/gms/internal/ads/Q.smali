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
            "Ljava/lang/ref/WeakReference<",
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

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Q;->Hw:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Q;->v5:Ljava/lang/Long;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Q;->Zo:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_a

    return-void

    :cond_a
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Q;->Zo:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_15

    return-void

    :cond_15
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Q;)Lcom/google/android/gms/internal/ads/xb;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/Q;->DW:Lcom/google/android/gms/internal/ads/xb;

    return-object p0
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

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Q;->v5:Ljava/lang/Long;

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Q;->FH()V

    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Q;->DW:Lcom/google/android/gms/internal/ads/xb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/xb;->oT()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/xb;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Q;->DW:Lcom/google/android/gms/internal/ads/xb;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Q;->FH:Lcom/google/android/gms/ads/internal/gmsg/B;

    const-string v0, "/unconfirmedClick"

    if-eqz p1, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Q;->j6:Lcom/google/android/gms/internal/ads/dh;

    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/ads/dh;->DW(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    :cond_d
    new-instance p1, Lcom/google/android/gms/internal/ads/S;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/S;-><init>(Lcom/google/android/gms/internal/ads/Q;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Q;->FH:Lcom/google/android/gms/ads/internal/gmsg/B;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Q;->j6:Lcom/google/android/gms/internal/ads/dh;

    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/ads/dh;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Q;->Zo:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_b

    goto :goto_4c

    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Q;->Hw:Ljava/lang/String;

    if-eqz p1, :cond_49

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Q;->v5:Ljava/lang/Long;

    if-nez p1, :cond_14

    goto :goto_49

    :cond_14
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_19
    const-string v0, "id"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Q;->Hw:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "time_interval"

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Q;->v5:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "messageType"

    const-string v1, "onePointFiveClick"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Q;->j6:Lcom/google/android/gms/internal/ads/dh;

    const-string v1, "sendMessageToNativeJs"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/dh;->j6(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_42} :catch_43

    goto :goto_49

    :catch_43
    move-exception p1

    const-string v0, "Unable to dispatch sendMessageToNativeJs event"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_49
    :goto_49
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Q;->FH()V

    :cond_4c
    :goto_4c
    return-void
.end method
