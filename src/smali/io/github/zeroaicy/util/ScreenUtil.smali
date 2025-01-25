.class public Lio/github/zeroaicy/util/ScreenUtil;
.super Ljava/lang/Object;
.source "ScreenUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBrightness(Landroid/content/Context;)I
    .registers 3

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_brightness"

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static hideSystemBars(Landroid/app/Activity;)V
    .registers 3

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 17
    :cond_7
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    .line 22
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2a

    .line 24
    invoke-static {p0}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object p0

    .line 25
    invoke-static {}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m()I

    move-result v0

    invoke-static {}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m$1()I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m$2()I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsetsController;I)V

    goto :goto_33

    .line 29
    :cond_2a
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1706

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_33
    return-void
.end method
