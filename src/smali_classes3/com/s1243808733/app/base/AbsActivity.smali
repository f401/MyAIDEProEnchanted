.class public abstract Lcom/s1243808733/app/base/AbsActivity;
.super Lorg/voiddog/dragbackactivity/DragBackActivity;
.source "AbsActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lorg/voiddog/dragbackactivity/DragBackActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isApplyTheme()Z
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 10
    invoke-super {p0, p1}, Lorg/voiddog/dragbackactivity/DragBackActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    invoke-virtual {p0}, Lcom/s1243808733/app/base/AbsActivity;->isApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-static {p0}, Lcom/s1243808733/aide/application/AppTheme;->initTheme(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
