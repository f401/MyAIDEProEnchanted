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
        "Lcom/google/android/gms/ads/internal/gmsg/B<",
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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/_f;-><init>(Lcom/google/android/gms/internal/ads/Mo;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Zf;->u7:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/Zf;->tp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/Zf;->we:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/Zf;->J0:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/Zf;->J8:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/Zf;->Ws:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Zf;->FH:Lcom/google/android/gms/internal/ads/Mo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Zf;->Hw:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Zf;->Zo:Lcom/google/android/gms/internal/ads/zzzy;

    const-string p1, "window"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Zf;->v5:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final j6(II)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zf;->Hw:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Zf;->Hw:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/Nk;->FH(Landroid/app/Activity;)[I

    move-result-object v0

    aget v1, v0, v1

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zf;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zf;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yp;->v5()Z

    move-result v0

    if-nez v0, :cond_4b

    :cond_29
    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zf;->Hw:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Zf;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Mo;->getWidth()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Zf;->J8:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zf;->Hw:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Zf;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Mo;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/Zf;->Ws:I

    :cond_4b
    sub-int v0, p2, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/Zf;->J8:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/Zf;->Ws:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/_f;->DW(IIII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Zf;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/tp;->j6(II)V

    return-void
.end method

.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 11

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Zf;->VH:Landroid/util/DisplayMetrics;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Zf;->v5:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Zf;->VH:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Zf;->VH:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/Zf;->gn:F

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/Zf;->EQ:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Zf;->VH:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/Zf;->u7:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Zf;->VH:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/util/DisplayMetrics;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/Zf;->tp:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Zf;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->nw()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_69

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_49

    goto :goto_69

    :cond_49
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/app/Activity;)[I

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zf;->VH:Landroid/util/DisplayMetrics;

    aget v2, p1, v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/util/DisplayMetrics;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/Zf;->we:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zf;->VH:Landroid/util/DisplayMetrics;

    aget p1, p1, p2

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/util/DisplayMetrics;I)I

    move-result p1

    goto :goto_6f

    :cond_69
    :goto_69
    iget p1, p0, Lcom/google/android/gms/internal/ads/Zf;->u7:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/Zf;->we:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/Zf;->tp:I

    :goto_6f
    iput p1, p0, Lcom/google/android/gms/internal/ads/Zf;->J0:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Zf;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->gW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/yp;->v5()Z

    move-result p1

    if-eqz p1, :cond_86

    iget p1, p0, Lcom/google/android/gms/internal/ads/Zf;->u7:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/Zf;->J8:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/Zf;->tp:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/Zf;->Ws:I

    goto :goto_8b

    :cond_86
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Zf;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {p1, v0, v0}, Lcom/google/android/gms/internal/ads/Mo;->measure(II)V

    :goto_8b
    iget v2, p0, Lcom/google/android/gms/internal/ads/Zf;->u7:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/Zf;->tp:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/Zf;->we:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/Zf;->J0:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/Zf;->gn:F

    iget v7, p0, Lcom/google/android/gms/internal/ads/Zf;->EQ:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/_f;->j6(IIIIFI)V

    new-instance p1, Lcom/google/android/gms/internal/ads/Yf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/Yf;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zf;->Zo:Lcom/google/android/gms/internal/ads/zzzy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzzy;->j6()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/Yf;->v5(Z)Lcom/google/android/gms/internal/ads/Yf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zf;->Zo:Lcom/google/android/gms/internal/ads/zzzy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzzy;->DW()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/Yf;->Hw(Z)Lcom/google/android/gms/internal/ads/Yf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zf;->Zo:Lcom/google/android/gms/internal/ads/zzzy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzzy;->Hw()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/Yf;->j6(Z)Lcom/google/android/gms/internal/ads/Yf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Zf;->Zo:Lcom/google/android/gms/internal/ads/zzzy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzzy;->FH()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/Yf;->DW(Z)Lcom/google/android/gms/internal/ads/Yf;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Yf;->FH(Z)Lcom/google/android/gms/internal/ads/Yf;

    new-instance v1, Lcom/google/android/gms/internal/ads/Wf;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/Wf;-><init>(Lcom/google/android/gms/internal/ads/Yf;Lcom/google/android/gms/internal/ads/Xf;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Zf;->FH:Lcom/google/android/gms/internal/ads/Mo;

    const-string v2, "onDeviceFeaturesReceived"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Wf;->j6()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lcom/google/android/gms/internal/ads/Sc;->j6(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x2

    new-array v1, p1, [I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Zf;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/Mo;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Zf;->Hw:Landroid/content/Context;

    aget v0, v1, v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/content/Context;I)I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->j6()Lcom/google/android/gms/internal/ads/Zl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Zf;->Hw:Landroid/content/Context;

    aget p2, v1, p2

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/ads/Zl;->DW(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/Zf;->j6(II)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->j6(I)Z

    move-result p1

    if-eqz p1, :cond_104

    const-string p1, "Dispatching Ready Event."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    :cond_104
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Zf;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Mo;->j3()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/_f;->DW(Ljava/lang/String;)V

    return-void
.end method
