.class public final Lcom/google/android/gms/internal/ads/Zf;
.super Lcom/google/android/gms/internal/ads/_f;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/B;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/_f;",
        "Lcom/google/android/gms/ads/internal/gmsg/B",
        "<",
        "Lcom/google/android/gms/internal/ads/Mo;",
        ">;"
    }
.end annotation


# instance fields
.field private EQ:I

.field private final FH:Lcom/google/android/gms/internal/ads/Mo;

.field private final Hw:Landroid/content/Context;

.field private J0:I

.field private J8:I

.field private VH:Landroid/util/DisplayMetrics;

.field private Ws:I

.field private final Zo:Lcom/google/android/gms/internal/ads/zzzy;

.field private gn:F

.field private tp:I

.field private u7:I

.field private final v5:Landroid/view/WindowManager;

.field private we:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Mo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzzy;)V
    .registers 5

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/_f;-><init>(Lcom/google/android/gms/internal/ads/Mo;)V

    iput v0, p0, Lcom/google/android/gms/internal/ads/Zf;->u7:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/Zf;->tp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/Zf;->we:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/Zf;->J0:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/Zf;->J8:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/Zf;->Ws:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Zf;->FH:Lcom/google/android/gms/internal/ads/Mo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Zf;->Hw:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Zf;->Zo:Lcom/google/android/gms/internal/ads/zzzy;

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Zf;->v5:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final j6(II)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zf;->Hw:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zf;->Hw:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/Nk;->FH(Landroid/app/Activity;)[I

    move-result-object v0

    aget v0, v0, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zf;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zf;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/yp;->v5()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zf;->Hw:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Zf;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Mo;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Zf;->J8:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zf;->Hw:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Zf;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Mo;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Zf;->Ws:I

    :cond_1
    sub-int v0, p2, v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/Zf;->J8:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/Zf;->Ws:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/_f;->DW(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zf;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/tp;->j6(II)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 13

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Zf;->VH:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zf;->v5:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zf;->VH:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zf;->VH:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/Zf;->gn:F

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Zf;->EQ:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zf;->VH:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Zf;->u7:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zf;->VH:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Zf;->tp:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zf;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->nw()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/Zf;->u7:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/Zf;->we:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/Zf;->tp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/Zf;->J0:I

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zf;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yp;->v5()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/Zf;->u7:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/Zf;->J8:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/Zf;->tp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/Zf;->Ws:I

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/Zf;->u7:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/Zf;->tp:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/Zf;->we:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/Zf;->J0:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/Zf;->gn:F

    iget v6, p0, Lcom/google/android/gms/internal/ads/Zf;->EQ:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/_f;->j6(IIIIFI)V

    new-instance v0, Lcom/google/android/gms/internal/ads/Yf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Yf;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zf;->Zo:Lcom/google/android/gms/internal/ads/zzzy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzzy;->j6()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Yf;->v5(Z)Lcom/google/android/gms/internal/ads/Yf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zf;->Zo:Lcom/google/android/gms/internal/ads/zzzy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzzy;->DW()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Yf;->Hw(Z)Lcom/google/android/gms/internal/ads/Yf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zf;->Zo:Lcom/google/android/gms/internal/ads/zzzy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzzy;->Hw()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Yf;->j6(Z)Lcom/google/android/gms/internal/ads/Yf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zf;->Zo:Lcom/google/android/gms/internal/ads/zzzy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzzy;->FH()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Yf;->DW(Z)Lcom/google/android/gms/internal/ads/Yf;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/Yf;->FH(Z)Lcom/google/android/gms/internal/ads/Yf;

    new-instance v1, Lcom/google/android/gms/internal/ads/Wf;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Wf;-><init>(Lcom/google/android/gms/internal/ads/Yf;Lcom/google/android/gms/internal/ads/Xf;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zf;->FH:Lcom/google/android/gms/internal/ads/Mo;

    const-string v2, "onDeviceFeaturesReceived"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Wf;->j6()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Sc;->j6(Ljava/lang/String;Lorg/json/JSONObject;)V

    new-array v0, v9, [I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zf;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/Mo;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zf;->Hw:Landroid/content/Context;

    aget v2, v0, v7

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Zf;->Hw:Landroid/content/Context;

    aget v0, v0, v8

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/Zf;->j6(II)V

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/jm;->j6(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Dispatching Ready Event."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zf;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->j3()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/_f;->DW(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zf;->VH:Landroid/util/DisplayMetrics;

    aget v2, v0, v7

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Zf;->we:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zf;->VH:Landroid/util/DisplayMetrics;

    aget v0, v0, v8

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/util/DisplayMetrics;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Zf;->J0:I

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zf;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0, v7, v7}, Lcom/google/android/gms/internal/ads/Mo;->measure(II)V

    goto/16 :goto_1
.end method
