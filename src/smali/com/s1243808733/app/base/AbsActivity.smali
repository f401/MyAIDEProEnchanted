.class public abstract Lcom/s1243808733/app/base/AbsActivity;
.super Lorg/voiddog/dragbackactivity/DragBackActivity;
.source "AbsActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lorg/voiddog/dragbackactivity/DragBackActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isApplyTheme()Z
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 10
    invoke-super {p0, p1}, Lorg/voiddog/dragbackactivity/DragBackActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    invoke-virtual {p0}, Lcom/s1243808733/app/base/AbsActivity;->isApplyTheme()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 12
    invoke-static {p0}, Lcom/s1243808733/aide/application/AppTheme;->initTheme(Landroid/app/Activity;)V

    :cond_c
    return-void
.end method
