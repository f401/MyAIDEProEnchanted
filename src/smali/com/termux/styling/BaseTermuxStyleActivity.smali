.class public Lcom/termux/styling/BaseTermuxStyleActivity;
.super Lcom/s1243808733/app/base/BaseActivity;
.source "BaseTermuxStyleActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/s1243808733/app/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    const/high16 v0, -0x64fe0000

    if-ne v0, p1, :cond_1

    .line 21
    const-string v0, "color_spinner"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    :goto_0
    const v1, -0x64fdffff

    if-ne v1, v0, :cond_0

    .line 24
    const-string v0, "font_spinner"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v0

    .line 26
    :cond_0
    invoke-super {p0, v0}, Lcom/s1243808733/app/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 1

    const/high16 v0, -0x64fd0000

    if-ne v0, p1, :cond_0

    .line 13
    const-string v0, "layout"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getLayoutIdByName(Ljava/lang/String;)I

    move-result p1

    .line 15
    :cond_0
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->setContentView(I)V

    return-void
.end method
