.class public Lcom/s1243808733/util/DialogHelper;
.super Ljava/lang/Object;
.source "DialogHelper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static customDialog(Landroid/app/Dialog;)V
    .registers 4

    .line 20
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 22
    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 23
    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 24
    const/16 v2, 0x51

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_25

    .line 26
    :cond_1b
    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 27
    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 29
    :goto_25
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 31
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 32
    const v1, 0x1010031

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 33
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static showBottomDialog(Landroid/app/Dialog;)V
    .registers 1

    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 15
    invoke-static {p0}, Lcom/s1243808733/util/DialogHelper;->customDialog(Landroid/app/Dialog;)V

    return-void
.end method
