.class public Lcom/s1243808733/aide/preference/NiuBiPreferenceCategory;
.super Landroid/preference/PreferenceCategory;
.source "NiuBiPreferenceCategory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 13
    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/s1243808733/aide/preference/NiuBiPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 17
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NiuBiPreferenceCategoryLightStyle"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getStyleIdByName(Ljava/lang/String;)I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void

    :cond_0
    const-string v0, "NiuBiPreferenceCategoryStyle"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getStyleIdByName(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
