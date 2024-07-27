.class public final Lcom/google/android/gms/internal/ads/pn;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/google/android/gms/internal/ads/nn;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Landroid/widget/FrameLayout;

.field private EQ:J

.field private final FH:Lcom/google/android/gms/internal/ads/D;

.field private final Hw:Lcom/google/android/gms/internal/ads/Gn;

.field private J0:Ljava/lang/String;

.field private J8:Landroid/graphics/Bitmap;

.field private QX:Z

.field private VH:Z

.field private Ws:Landroid/widget/ImageView;

.field private Zo:Lcom/google/android/gms/internal/ads/zzbdi;

.field private gn:Z

.field private final j6:Lcom/google/android/gms/internal/ads/Dn;

.field private tp:Z

.field private u7:Z

.field private final v5:J

.field private we:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Dn;IZLcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/internal/ads/Cn;)V
    .registers 15

    const/4 v7, -0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pn;->j6:Lcom/google/android/gms/internal/ads/Dn;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/pn;->FH:Lcom/google/android/gms/internal/ads/D;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->DW:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->DW:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Dn;->vy()Lcom/google/android/gms/ads/internal/ta;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/Dn;->vy()Lcom/google/android/gms/ads/internal/ta;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/ta;->DW:Lcom/google/android/gms/internal/ads/on;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/on;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Dn;IZLcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/internal/ads/Cn;)Lcom/google/android/gms/internal/ads/zzbdi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pn;->DW:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v7, v7, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->KD:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/pn;->J0()V

    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Ws:Landroid/widget/ImageView;

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->cb:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/pn;->v5:J

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->cn:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/pn;->tp:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pn;->FH:Lcom/google/android/gms/internal/ads/D;

    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/pn;->tp:Z

    if-eqz v0, :cond_4

    const-string v0, "1"

    :goto_0
    const-string v2, "spinner_used"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/D;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/Gn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Gn;-><init>(Lcom/google/android/gms/internal/ads/pn;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Hw:Lcom/google/android/gms/internal/ads/Gn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbdi;->j6(Lcom/google/android/gms/internal/ads/nn;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    if-nez v0, :cond_3

    const-string v0, "AdVideoUnderlay Error"

    const-string v1, "Allocating player failed."

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/pn;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    const-string v0, "0"

    goto :goto_0
.end method

.method private final QX()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Ws:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final XL()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->j6:Lcom/google/android/gms/internal/ads/Dn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Dn;->nw()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/pn;->gn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/pn;->u7:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->j6:Lcom/google/android/gms/internal/ads/Dn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Dn;->nw()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/pn;->gn:Z

    goto :goto_0
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/Dn;)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "no_video_view"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onVideoEvent"

    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/internal/ads/Sc;->j6(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/Dn;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "decoderProps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onVideoEvent"

    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/internal/ads/Sc;->j6(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/Dn;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/Dn;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "decoderProps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mimeTypes"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onVideoEvent"

    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/internal/ads/Sc;->j6(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/pn;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/pn;->j6(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private final varargs j6(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9

    const/4 v1, 0x0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "event"

    invoke-virtual {v4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v5, p2

    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, p2, v2

    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->j6:Lcom/google/android/gms/internal/ads/Dn;

    const-string v1, "onVideoEvent"

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/ads/Sc;->j6(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 3

    const-string v0, "ended"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/pn;->j6(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pn;->XL()V

    return-void
.end method

.method public final DW(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdi;->FH(I)V

    return-void
.end method

.method public final EQ()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbdi;->DW:Lcom/google/android/gms/internal/ads/Hn;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/Hn;->j6(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdi;->j6()V

    goto :goto_0
.end method

.method public final FH()V
    .registers 5

    const/4 v3, -0x1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/pn;->QX:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->J8:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pn;->QX()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Ws:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pn;->J8:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Ws:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->DW:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pn;->Ws:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->DW:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pn;->Ws:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Hw:Lcom/google/android/gms/internal/ads/Gn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Gn;->j6()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/pn;->EQ:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/pn;->we:J

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/tn;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/tn;-><init>(Lcom/google/android/gms/internal/ads/pn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final FH(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdi;->Hw(I)V

    return-void
.end method

.method public final Hw()V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/pn;->VH:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pn;->QX()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->DW:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pn;->Ws:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->J8:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/pn;->J8:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/pn;->QX:Z

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v2

    sub-long v0, v2, v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/Ek;->j6()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Spinner frame grab took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/pn;->v5:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    const-string v2, "Spinner frame grab crossed jank threshold! Suspending spinner."

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/pn;->tp:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/pn;->J8:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pn;->FH:Lcom/google/android/gms/internal/ads/D;

    if-eqz v2, :cond_3

    const-string v3, "spinner_jank"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/D;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final Hw(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdi;->v5(I)V

    return-void
.end method

.method public final J0()V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    const/4 v4, -0x2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdi;->v5()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "AdMob - "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, -0x10000

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, -0x100

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->DW:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->DW:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    const-string v2, "AdMob - "

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method final J8()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdi;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/pn;->EQ:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-string v2, "timeupdate"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "time"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    long-to-float v5, v0

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/pn;->j6(Ljava/lang/String;[Ljava/lang/String;)V

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/pn;->EQ:J

    goto :goto_0
.end method

.method public final VH()V
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->j6:Lcom/google/android/gms/internal/ads/Dn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Dn;->nw()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/pn;->gn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->j6:Lcom/google/android/gms/internal/ads/Dn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Dn;->nw()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/pn;->u7:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/pn;->u7:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->j6:Lcom/google/android/gms/internal/ads/Dn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Dn;->nw()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/pn;->gn:Z

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/pn;->VH:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Ws()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->J0:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pn;->J0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbdi;->setVideoPath(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "no_src"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/pn;->j6(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final Zo()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Hw:Lcom/google/android/gms/internal/ads/Gn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Gn;->DW()V

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/sn;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/sn;-><init>(Lcom/google/android/gms/internal/ads/pn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final finalize()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Hw:Lcom/google/android/gms/internal/ads/Gn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Gn;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    sget-object v1, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qn;->j6(Lcom/google/android/gms/internal/ads/zzbdi;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final gn()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Hw:Lcom/google/android/gms/internal/ads/Gn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Gn;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdi;->Hw()V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pn;->XL()V

    return-void
.end method

.method public final j6()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/pn;->we:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const-string v1, "canplaythrough"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "duration"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdi;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v3, "videoWidth"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbdi;->getVideoWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "videoHeight"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbdi;->getVideoHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/pn;->j6(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final j6(FF)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdi;->j6(FF)V

    :cond_0
    return-void
.end method

.method public final j6(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdi;->DW(I)V

    goto :goto_0
.end method

.method public final j6(II)V
    .registers 7

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/pn;->tp:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->sh:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int v0, p1, v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->sh:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int v0, p2, v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pn;->J8:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pn;->J8:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v0, :cond_1

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->J8:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/pn;->QX:Z

    :cond_1
    return-void
.end method

.method public final j6(IIII)V
    .registers 7

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pn;->DW:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0
.end method

.method public final j6(Landroid/view/MotionEvent;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/TextureView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public final j6(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pn;->J0:Ljava/lang/String;

    return-void
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "error"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "what"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string v3, "extra"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/pn;->j6(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method final synthetic j6(Z)V
    .registers 6

    const-string v0, "windowFocusChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "hasWindowFocus"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/pn;->j6(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Hw:Lcom/google/android/gms/internal/ads/Gn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Gn;->DW()V

    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/rn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/rn;-><init>(Lcom/google/android/gms/internal/ads/pn;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Hw:Lcom/google/android/gms/internal/ads/Gn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Gn;->j6()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/pn;->EQ:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/pn;->we:J

    goto :goto_0
.end method

.method public final onWindowVisibilityChanged(I)V
    .registers 5

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Hw:Lcom/google/android/gms/internal/ads/Gn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Gn;->DW()V

    const/4 v0, 0x1

    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/un;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/un;-><init>(Lcom/google/android/gms/internal/ads/pn;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Hw:Lcom/google/android/gms/internal/ads/Gn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Gn;->j6()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/pn;->EQ:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/pn;->we:J

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setVolume(F)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbdi;->DW:Lcom/google/android/gms/internal/ads/Hn;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/Hn;->j6(F)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdi;->j6()V

    goto :goto_0
.end method

.method public final tp()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdi;->FH()V

    goto :goto_0
.end method

.method public final u7()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdi;->DW()V

    goto :goto_0
.end method

.method public final v5()V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "pause"

    new-array v1, v2, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/pn;->j6(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pn;->XL()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/pn;->VH:Z

    return-void
.end method

.method public final v5(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdi;->Zo(I)V

    return-void
.end method

.method public final we()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pn;->Zo:Lcom/google/android/gms/internal/ads/zzbdi;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbdi;->DW:Lcom/google/android/gms/internal/ads/Hn;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/Hn;->j6(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdi;->j6()V

    goto :goto_0
.end method
