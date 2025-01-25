.class public final Lcom/google/android/gms/internal/ads/Eg;
.super Lcom/google/android/gms/internal/ads/Bg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private EQ:Z

.field private tp:Landroid/widget/PopupWindow;

.field private u7:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/Ag;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/Bg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/Ag;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Eg;->u7:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Eg;->EQ:Z

    return-void
.end method

.method private final Hw()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Eg;->u7:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Eg;->EQ:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tg;->DW:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tg;->DW:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_19

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Eg;->tp:Landroid/widget/PopupWindow;

    :cond_19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Eg;->tp:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Eg;->tp:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_28
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Eg;->tp:Landroid/widget/PopupWindow;

    :cond_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_2c

    throw v1
.end method


# virtual methods
.method protected final DW()V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/tg;->DW:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, v2

    :goto_f
    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_18

    goto :goto_6d

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/tg;->DW:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_23

    return-void

    :cond_23
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/tg;->DW:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/tg;->FH:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Mo;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3, v4, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Eg;->u7:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3f
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/Eg;->EQ:Z

    if-eqz v5, :cond_45

    monitor-exit v3

    return-void

    :cond_45
    new-instance v5, Landroid/widget/PopupWindow;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v5, v1, v7, v7, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/Eg;->tp:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Eg;->tp:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const-string v1, "Displaying the 1x1 popup off the screen."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_3f .. :try_end_5b} :catchall_6a

    :try_start_5b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Eg;->tp:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0, v6, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_64} :catch_65
    .catchall {:try_start_5b .. :try_end_64} :catchall_6a

    goto :goto_68

    :catch_65
    move-exception v0

    :try_start_66
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Eg;->tp:Landroid/widget/PopupWindow;

    :goto_68
    monitor-exit v3

    return-void

    :catchall_6a
    move-exception v0

    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_66 .. :try_end_6c} :catchall_6a

    throw v0

    :cond_6d
    :goto_6d
    return-void
.end method

.method public final cancel()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Eg;->Hw()V

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/tg;->cancel()V

    return-void
.end method

.method protected final j6(I)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Eg;->Hw()V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/tg;->j6(I)V

    return-void
.end method
