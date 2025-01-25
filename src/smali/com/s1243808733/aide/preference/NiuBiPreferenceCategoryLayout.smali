.class public Lcom/s1243808733/aide/preference/NiuBiPreferenceCategoryLayout;
.super Landroid/widget/LinearLayout;
.source "NiuBiPreferenceCategoryLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 15
    const p1, -0xa0a0b

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/preference/NiuBiPreferenceCategoryLayout;->setBackgroundColor(I)V

    goto :goto_16

    .line 17
    :cond_10
    const p1, -0xddddde

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/preference/NiuBiPreferenceCategoryLayout;->setBackgroundColor(I)V

    :goto_16
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 1

    .line 24
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void
.end method
