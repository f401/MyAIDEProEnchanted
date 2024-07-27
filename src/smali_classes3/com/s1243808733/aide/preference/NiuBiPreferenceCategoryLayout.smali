.class public Lcom/s1243808733/aide/preference/NiuBiPreferenceCategoryLayout;
.super Landroid/widget/LinearLayout;
.source "NiuBiPreferenceCategoryLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    const v0, -0xa0a0b

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/preference/NiuBiPreferenceCategoryLayout;->setBackgroundColor(I)V

    .line 17
    :goto_0
    return-void

    :cond_0
    const v0, -0xddddde

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/preference/NiuBiPreferenceCategoryLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 24
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    return-void
.end method
