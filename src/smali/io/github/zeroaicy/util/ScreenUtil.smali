.class public Lio/github/zeroaicy/util/ScreenUtil;
.super Ljava/lang/Object;
.source "ScreenUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBrightness(Landroid/content/Context;)I
    .locals 3

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static hideSystemBars(Landroid/app/Activity;)V
    .locals 3

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 17
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 22
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_2

    .line 24
    invoke-static {v0}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object v0

    .line 25
    invoke-static {}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m()I

    move-result v1

    invoke-static {}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m$1()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m$2()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsetsController;I)V

    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method
