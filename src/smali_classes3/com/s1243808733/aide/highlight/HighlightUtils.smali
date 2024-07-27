.class public Lcom/s1243808733/aide/highlight/HighlightUtils;
.super Ljava/lang/Object;
.source "HighlightUtils.java"


# annotations
.annotation runtime Landroid/support/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorByKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 69
    invoke-static {}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getColorInt(Lcom/s1243808733/aide/highlight/color/Color;)I
    .registers 2

    .line 92
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getColorInt(Lcom/s1243808733/aide/highlight/color/Color;Z)I

    move-result v0

    return v0
.end method

.method public static getColorInt(Lcom/s1243808733/aide/highlight/color/Color;II)I
    .registers 4

    .line 104
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getColorInt(Lcom/s1243808733/aide/highlight/color/Color;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 114
    :goto_0
    return v0

    .line 106
    :catch_0
    move-exception v0

    .line 108
    invoke-static {p1}, Lcom/s1243808733/util/Utils;->getColorFromResources(I)I

    move-result v0

    goto :goto_0

    .line 112
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, v0}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getColorInt(Lcom/s1243808733/aide/highlight/color/Color;Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 114
    invoke-static {p2}, Lcom/s1243808733/util/Utils;->getColorFromResources(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getColorInt(Lcom/s1243808733/aide/highlight/color/Color;Z)I
    .registers 3

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/color/Color;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getSpKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getColorByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ColorUtils;->string2Int(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 99
    :goto_0
    return v0

    .line 97
    :catch_0
    move-exception v0

    .line 99
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/s1243808733/aide/highlight/color/Color;->lightColor:Ljava/lang/String;

    :goto_1
    invoke-static {v0}, Lcom/blankj/utilcode/util/ColorUtils;->string2Int(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/color/Color;->darkColor:Ljava/lang/String;

    goto :goto_1
.end method

.method public static getHSp()Landroid/content/SharedPreferences;
    .registers 1

    .line 78
    invoke-static {}, Lcom/s1243808733/aide/application/AppTheme;->getThemeCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHSp(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getHSp(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 5

    .line 82
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isTrainerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string p0, "default"

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "CodeHighlight"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->toUpperCaseFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getHighLightColor(Ljava/lang/String;ZII)I
    .registers 7

    .line 59
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHSp()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getSpKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/blankj/utilcode/util/ColorUtils;->string2Int(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 64
    :goto_0
    return v0

    .line 60
    :catch_0
    move-exception v0

    .line 64
    if-eqz p1, :cond_0

    move p3, p2

    :cond_0
    invoke-static {p3}, Lcom/s1243808733/util/Utils;->getColorFromResources(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getHighlightColor()Lcom/s1243808733/aide/highlight/color/Colors;
    .registers 3

    const/4 v2, 0x1

    .line 23
    invoke-static {}, Lcom/s1243808733/aide/application/AppTheme;->getThemeCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "indigo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 26
    :cond_0
    new-instance v0, Lcom/s1243808733/aide/highlight/color/style/ColorIndigo;

    invoke-direct {v0}, Lcom/s1243808733/aide/highlight/color/style/ColorIndigo;-><init>()V

    .line 30
    :goto_0
    return-object v0

    .line 23
    :cond_1
    const-string v1, "red"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_0

    .line 26
    const-string v1, "teal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 28
    new-instance v0, Lcom/s1243808733/aide/highlight/color/style/TealColor;

    invoke-direct {v0}, Lcom/s1243808733/aide/highlight/color/style/TealColor;-><init>()V

    goto :goto_0

    .line 30
    :cond_2
    new-instance v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;

    invoke-direct {v0}, Lcom/s1243808733/aide/highlight/color/ColorDefault;-><init>()V

    goto :goto_0
.end method

.method public static getSpKey(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    .line 73
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[^a-z|A-Z]"

    const-string v2, "_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string v0, "_light"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "_dark"

    goto :goto_0
.end method

.method public static init()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;

    invoke-direct {v0}, Lcom/s1243808733/aide/highlight/color/ColorDefault;-><init>()V

    const-string v1, "default"

    invoke-static {v0, v1}, Lcom/s1243808733/aide/highlight/HighlightUtils;->initKey(Lcom/s1243808733/aide/highlight/color/Colors;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/s1243808733/aide/highlight/color/style/ColorIndigo;

    invoke-direct {v0}, Lcom/s1243808733/aide/highlight/color/style/ColorIndigo;-><init>()V

    const-string v1, "indigo"

    invoke-static {v0, v1}, Lcom/s1243808733/aide/highlight/HighlightUtils;->initKey(Lcom/s1243808733/aide/highlight/color/Colors;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/s1243808733/aide/highlight/color/style/TealColor;

    invoke-direct {v0}, Lcom/s1243808733/aide/highlight/color/style/TealColor;-><init>()V

    const-string v1, "teal"

    invoke-static {v0, v1}, Lcom/s1243808733/aide/highlight/HighlightUtils;->initKey(Lcom/s1243808733/aide/highlight/color/Colors;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/s1243808733/aide/highlight/color/style/RedColor;

    invoke-direct {v0}, Lcom/s1243808733/aide/highlight/color/style/RedColor;-><init>()V

    const-string v1, "red"

    invoke-static {v0, v1}, Lcom/s1243808733/aide/highlight/HighlightUtils;->initKey(Lcom/s1243808733/aide/highlight/color/Colors;Ljava/lang/String;)V

    return-void
.end method

.method public static initKey(Lcom/s1243808733/aide/highlight/color/Colors;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/aide/highlight/color/Colors;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 42
    invoke-static {p1}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHSp(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 43
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 44
    invoke-virtual {p0}, Lcom/s1243808733/aide/highlight/color/Colors;->values()[Lcom/s1243808733/aide/highlight/color/Color;

    move-result-object v4

    move v0, v1

    .line 51
    :goto_0
    array-length v5, v4

    if-lt v0, v5, :cond_0

    .line 54
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    .line 44
    :cond_0
    aget-object v5, v4, v0

    .line 45
    iget-object v6, v5, Lcom/s1243808733/aide/highlight/color/Color;->name:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getSpKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 46
    iget-object v7, v5, Lcom/s1243808733/aide/highlight/color/Color;->name:Ljava/lang/String;

    invoke-static {v7, v1}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getSpKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 47
    invoke-interface {v2, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 48
    iget-object v8, v5, Lcom/s1243808733/aide/highlight/color/Color;->lightColor:Ljava/lang/String;

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50
    :cond_1
    invoke-interface {v2, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 51
    iget-object v5, v5, Lcom/s1243808733/aide/highlight/color/Color;->darkColor:Ljava/lang/String;

    invoke-interface {v3, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
