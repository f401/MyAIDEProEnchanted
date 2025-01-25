.class public Ltv/ouya/console/api/OuyaActivity;
.super Landroid/app/Activity;


# instance fields
.field private DW:J

.field private FH:J

.field private j6:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ltv/ouya/console/api/OuyaActivity;->j6:I

    return-void
.end method

.method public static j6(Landroid/app/Activity;)V
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static j6(Landroid/app/Activity;I)V
    .registers 3

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->takeKeyEvents(Z)V

    :cond_8
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_f

    invoke-static {p0}, Ltv/ouya/console/api/OuyaActivity;->j6(Landroid/app/Activity;)V

    :cond_f
    return-void
.end method

.method private j6(Z)V
    .registers 9

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    if-eqz p1, :cond_d

    iget-wide v2, p0, Ltv/ouya/console/api/OuyaActivity;->DW:J

    goto :goto_f

    :cond_d
    iget-wide v2, p0, Ltv/ouya/console/api/OuyaActivity;->FH:J

    :goto_f
    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v6, v2, v4

    if-gez v6, :cond_18

    return-void

    :cond_18
    if-eqz p1, :cond_1d

    iput-wide v0, p0, Ltv/ouya/console/api/OuyaActivity;->DW:J

    goto :goto_1f

    :cond_1d
    iput-wide v0, p0, Ltv/ouya/console/api/OuyaActivity;->FH:J

    :goto_1f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "tv.ouya.metrics.action.USER_INPUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "analog"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget v0, p0, Ltv/ouya/console/api/OuyaActivity;->j6:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_15

    invoke-static {p1}, Ltv/ouya/console/api/j;->j6(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ltv/ouya/console/api/OuyaActivity;->j6(Z)V

    invoke-static {p0, p1}, Ltv/ouya/console/api/j;->j6(Landroid/app/Activity;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_15
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    iget v0, p0, Ltv/ouya/console/api/OuyaActivity;->j6:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_15

    invoke-static {p1}, Ltv/ouya/console/api/j;->j6(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltv/ouya/console/api/OuyaActivity;->j6(Z)V

    invoke-static {p0, p1}, Ltv/ouya/console/api/j;->j6(Landroid/app/Activity;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_15
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-static {p0}, Ltv/ouya/console/api/j;->j6(Landroid/app/Activity;)V

    iget v0, p0, Ltv/ouya/console/api/OuyaActivity;->j6:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Ltv/ouya/console/api/j;->j6(Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {p0}, Ltv/ouya/console/api/j;->DW(Landroid/app/Activity;)V

    return-void
.end method

.method public setContentView(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    iget p1, p0, Ltv/ouya/console/api/OuyaActivity;->j6:I

    invoke-static {p0, p1}, Ltv/ouya/console/api/OuyaActivity;->j6(Landroid/app/Activity;I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget p1, p0, Ltv/ouya/console/api/OuyaActivity;->j6:I

    invoke-static {p0, p1}, Ltv/ouya/console/api/OuyaActivity;->j6(Landroid/app/Activity;I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget p1, p0, Ltv/ouya/console/api/OuyaActivity;->j6:I

    invoke-static {p0, p1}, Ltv/ouya/console/api/OuyaActivity;->j6(Landroid/app/Activity;I)V

    return-void
.end method
