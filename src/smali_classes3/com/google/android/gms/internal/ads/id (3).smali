.class public final Lcom/google/android/gms/internal/ads/id;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/ad;
.implements Lcom/google/android/gms/internal/ads/gd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Landroid/content/Context;

.field private final j6:Lcom/google/android/gms/internal/ads/Mo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/ads/internal/ta;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/id;->DW:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Zo()Lcom/google/android/gms/internal/ads/So;

    invoke-static {}, Lcom/google/android/gms/internal/ads/yp;->DW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/ads/YF;->j6()Lcom/google/android/gms/internal/ads/YF;

    move-result-object v10

    move-object v0, p1

    move-object v5, p3

    move-object v6, p2

    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/So;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yp;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/P;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/YF;)Lcom/google/android/gms/internal/ads/Mo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/id;->j6:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/id;)Lcom/google/android/gms/internal/ads/Mo;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/id;->j6:Lcom/google/android/gms/internal/ads/Mo;

    return-object p0
.end method

.method private static j6(Ljava/lang/Runnable;)V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    invoke-static {}, Lcom/google/android/gms/internal/ads/Zl;->DW()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_d
    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final DW(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/jd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/jd;-><init>(Lcom/google/android/gms/internal/ads/id;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/id;->j6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final DW(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/B<",
            "-",
            "Lcom/google/android/gms/internal/ads/Qd;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/id;->j6:Lcom/google/android/gms/internal/ads/Mo;

    new-instance v1, Lcom/google/android/gms/internal/ads/kd;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/kd;-><init>(Lcom/google/android/gms/ads/internal/gmsg/B;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/common/util/p;)V

    return-void
.end method

.method public final DW(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/bd;->j6(Lcom/google/android/gms/internal/ads/ad;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final Hw(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/od;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/od;-><init>(Lcom/google/android/gms/internal/ads/id;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/id;->j6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final Zo(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/nd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/nd;-><init>(Lcom/google/android/gms/internal/ads/id;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/id;->j6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final destroy()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/id;->j6:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->destroy()V

    return-void
.end method

.method public final isDestroyed()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/id;->j6:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->isDestroyed()Z

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
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/id;->j6:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ld;->j6(Lcom/google/android/gms/internal/ads/hd;)Lcom/google/android/gms/internal/ads/vp;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/tp;->j6(Lcom/google/android/gms/internal/ads/vp;)V

    return-void
.end method

.method final synthetic j6(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/id;->j6:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->DW(Ljava/lang/String;)V

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
            "Lcom/google/android/gms/internal/ads/Qd;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/id;->j6:Lcom/google/android/gms/internal/ads/Mo;

    new-instance v1, Lcom/google/android/gms/internal/ads/pd;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/pd;-><init>(Lcom/google/android/gms/internal/ads/id;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

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

    new-instance v0, Lcom/google/android/gms/internal/ads/md;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/md;-><init>(Lcom/google/android/gms/internal/ads/id;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/id;->j6(Ljava/lang/Runnable;)V

    return-void
.end method
