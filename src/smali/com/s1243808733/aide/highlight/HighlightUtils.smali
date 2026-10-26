.class public Lcom/s1243808733/aide/highlight/HighlightUtils;
.super Ljava/lang/Object;
.source "HighlightUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 71
    invoke-static {}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getColorInt(Lcom/s1243808733/aide/highlight/color/Color;)I
    .locals 1

    .line 94
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getColorInt(Lcom/s1243808733/aide/highlight/color/Color;Z)I

    move-result v0

    return v0
.end method

.method public static getColorInt(Lcom/s1243808733/aide/highlight/color/Color;II)I
    .locals 1

    .line 106
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getColorInt(Lcom/s1243808733/aide/highlight/color/Color;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 116
    :goto_0
    return v0

    .line 110
    :catch_0
    move-exception v0

    invoke-static {p1}, Lcom/s1243808733/util/Utils;->getColorFromResources(I)I

    move-result v0

    goto :goto_0

    .line 114
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, v0}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getColorInt(Lcom/s1243808733/aide/highlight/color/Color;Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 116
    :catch_1
    move-exception v0

    invoke-static {p2}, Lcom/s1243808733/util/Utils;->getColorFromResources(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getColorInt(Lcom/s1243808733/aide/highlight/color/Color;Z)I
    .locals 1

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/color/Color;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getSpKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getColorByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ColorUtils;->string2Int(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 101
    :goto_0
    return v0

    .line 99
    :catchall_0
    move-exception v0

    if-eqz p1, :cond_0

    .line 101
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
    .locals 1

    .line 80
    invoke-static {}, Lcom/s1243808733/aide/application/AppTheme;->getThemeCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHSp(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getHSp(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 4

    .line 84
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isTrainerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string p0, "default"

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CodeHighlight"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->toUpperCaseFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getHighLightColor(Ljava/lang/String;ZII)I
    .locals 3

    .line 61
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getSpKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/blankj/utilcode/util/ColorUtils;->string2Int(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 66
    :goto_0
    return v0

    .line 62
    :catchall_0
    move-exception v0

    if-eqz p1, :cond_0

    .line 66
    :goto_1
    invoke-static {p2}, Lcom/s1243808733/util/Utils;->getColorFromResources(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move p2, p3

    .line 62
    goto :goto_1
.end method

.method public static getHighlightColor()Lcom/s1243808733/aide/highlight/color/Colors;
    .locals 2

    .line 23
    invoke-static {}, Lcom/s1243808733/aide/application/AppTheme;->getThemeCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 30
    new-instance v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;

    invoke-direct {v0}, Lcom/s1243808733/aide/highlight/color/ColorDefault;-><init>()V

    :goto_1
    return-object v0

    .line 23
    :sswitch_0
    const-string v1, "teal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "red"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "indigo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 28
    :pswitch_0
    new-instance v0, Lcom/s1243808733/aide/highlight/color/style/TealColor;

    invoke-direct {v0}, Lcom/s1243808733/aide/highlight/color/style/TealColor;-><init>()V

    goto :goto_1

    .line 26
    :pswitch_1
    new-instance v0, Lcom/s1243808733/aide/highlight/color/style/ColorIndigo;

    invoke-direct {v0}, Lcom/s1243808733/aide/highlight/color/style/ColorIndigo;-><init>()V

    goto :goto_1

    .line 23
    :sswitch_data_0
    .sparse-switch
        -0x4696012e -> :sswitch_2
        0x1b891 -> :sswitch_1
        0x36425c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSpKey(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[^a-z|A-Z]"

    const-string v2, "_"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 76
    const-string v0, "_light"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "_dark"

    goto :goto_0
.end method

.method public static init()V
    .locals 2

    .line 34
    new-instance v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;

    invoke-direct {v0}, Lcom/s1243808733/aide/highlight/color/ColorDefault;-><init>()V

    const-string v1, "default"

    invoke-static {v0, v1}, Lcom/s1243808733/aide/highlight/HighlightUtils;->initKey(Lcom/s1243808733/aide/highlight/color/Colors;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;

    invoke-direct {v0}, Lcom/s1243808733/aide/highlight/color/ColorDefault;-><init>()V

    const-string v1, "default_dark"

    invoke-static {v0, v1}, Lcom/s1243808733/aide/highlight/HighlightUtils;->initKey(Lcom/s1243808733/aide/highlight/color/Colors;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/s1243808733/aide/highlight/color/style/ColorIndigo;

    invoke-direct {v0}, Lcom/s1243808733/aide/highlight/color/style/ColorIndigo;-><init>()V

    const-string v1, "indigo"

    invoke-static {v0, v1}, Lcom/s1243808733/aide/highlight/HighlightUtils;->initKey(Lcom/s1243808733/aide/highlight/color/Colors;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/s1243808733/aide/highlight/color/style/TealColor;

    invoke-direct {v0}, Lcom/s1243808733/aide/highlight/color/style/TealColor;-><init>()V

    const-string v1, "teal"

    invoke-static {v0, v1}, Lcom/s1243808733/aide/highlight/HighlightUtils;->initKey(Lcom/s1243808733/aide/highlight/color/Colors;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/s1243808733/aide/highlight/color/style/RedColor;

    invoke-direct {v0}, Lcom/s1243808733/aide/highlight/color/style/RedColor;-><init>()V

    const-string v1, "red"

    invoke-static {v0, v1}, Lcom/s1243808733/aide/highlight/HighlightUtils;->initKey(Lcom/s1243808733/aide/highlight/color/Colors;Ljava/lang/String;)V

    return-void
.end method

.method public static initKey(Lcom/s1243808733/aide/highlight/color/Colors;Ljava/lang/String;)V
    .locals 10

    const/4 v1, 0x0

    .line 44
    invoke-static {p1}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHSp(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 45
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 46
    invoke-virtual {p0}, Lcom/s1243808733/aide/highlight/color/Colors;->values()[Lcom/s1243808733/aide/highlight/color/Color;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_2

    aget-object v6, v4, v0

    .line 47
    iget-object v7, v6, Lcom/s1243808733/aide/highlight/color/Color;->name:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getSpKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 48
    iget-object v8, v6, Lcom/s1243808733/aide/highlight/color/Color;->name:Ljava/lang/String;

    invoke-static {v8, v1}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getSpKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 49
    invoke-interface {v2, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 50
    iget-object v9, v6, Lcom/s1243808733/aide/highlight/color/Color;->lightColor:Ljava/lang/String;

    invoke-interface {v3, v7, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 52
    :cond_0
    invoke-interface {v2, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 53
    iget-object v6, v6, Lcom/s1243808733/aide/highlight/color/Color;->darkColor:Ljava/lang/String;

    invoke-interface {v3, v8, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_2
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
