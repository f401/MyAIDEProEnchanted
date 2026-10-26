.class public Lorg/voiddog/dragbackactivity/DragBackActivity;
.super Landroid/app/Activity;
.source "DragBackActivity.java"


# instance fields
.field private mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected isDisableDrag()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 47
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackActivity;->mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-virtual {v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 25
    new-instance v1, Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-direct {v1, p0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lorg/voiddog/dragbackactivity/DragBackActivity;->mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    .line 26
    invoke-virtual {p0}, Lorg/voiddog/dragbackactivity/DragBackActivity;->isDisableDrag()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableDragBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->setEnableDragBack(Z)V

    .line 28
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackActivity;->mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-virtual {v0, p1}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->onPostCreate(Landroid/os/Bundle;)V

    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/voiddog/dragbackactivity/DragBackActivity;->mDragBackDelegate:Lorg/voiddog/dragbackactivity/DragBackDelegate;

    invoke-virtual {v0}, Lorg/voiddog/dragbackactivity/DragBackDelegate;->snapshot()V

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
