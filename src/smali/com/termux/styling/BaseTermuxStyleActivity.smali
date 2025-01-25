.class public Lcom/termux/styling/BaseTermuxStyleActivity;
.super Lcom/s1243808733/app/base/BaseActivity;
.source "BaseTermuxStyleActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcom/s1243808733/app/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    const/high16 v0, -0x64fe0000

    if-ne v0, p1, :cond_a

    .line 21
    const-string p1, "color_spinner"

    invoke-static {p1}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result p1

    :cond_a
    const v0, -0x64fdffff

    if-ne v0, p1, :cond_15

    .line 24
    const-string p1, "font_spinner"

    invoke-static {p1}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result p1

    .line 26
    :cond_15
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setContentView(I)V
    .registers 3

    const/high16 v0, -0x64fd0000

    if-ne v0, p1, :cond_a

    .line 13
    const-string p1, "layout"

    invoke-static {p1}, Lcom/blankj/utilcode/util/ResourceUtils;->getLayoutIdByName(Ljava/lang/String;)I

    move-result p1

    .line 15
    :cond_a
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->setContentView(I)V

    return-void
.end method
