.class public Lcom/s1243808733/aide/highlight/HighlightUtils;
.super Ljava/lang/Object;
.source "HighlightUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorByKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 71
    invoke-static {}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getColorInt(Lcom/s1243808733/aide/highlight/color/Color;)I
    .registers 2

    .line 94
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getColorInt(Lcom/s1243808733/aide/highlight/color/Color;Z)I

    move-result p0

    return p0
.end method

.method public static getColorInt(Lcom/s1243808733/aide/highlight/color/Color;II)I
    .registers 4

    .line 106
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 108
    const/4 p2, 0x1

    :try_start_7
    invoke-static {p0, p2}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getColorInt(Lcom/s1243808733/aide/highlight/color/Color;Z)I

    move-result p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_c

    return p0

    .line 110
    :catch_c
    move-exception p0

    invoke-static {p1}, Lcom/s1243808733/util/Utils;->getColorFromResources(I)I

    move-result p0

    return p0

    .line 114
    :cond_12
    const/4 p1, 0x0

    :try_start_13
    invoke-static {p0, p1}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getColorInt(Lcom/s1243808733/aide/highlight/color/Color;Z)I

    move-result p0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_17} :catch_18

    return p0

    .line 116
    :catch_18
    move-exception p0

    invoke-static {p2}, Lcom/s1243808733/util/Utils;->getColorFromResources(I)I

    move-result p0

    return p0
.end method

.method public static getColorInt(Lcom/s1243808733/aide/highlight/color/Color;Z)I
    .registers 3

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/color/Color;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getSpKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getColorByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ColorUtils;->string2Int(Ljava/lang/String;)I

    move-result p0
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    return p0

    :catchall_f
    move-exception v0

    if-eqz p1, :cond_15

    .line 101
    iget-object p0, p0, Lcom/s1243808733/aide/highlight/color/Color;->lightColor:Ljava/lang/String;

    goto :goto_17

    :cond_15
    iget-object p0, p0, Lcom/s1243808733/aide/highlight/color/Color;->darkColor:Ljava/lang/String;

    :goto_17
    invoke-static {p0}, Lcom/blankj/utilcode/util/ColorUtils;->string2Int(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getHSp()Landroid/content/SharedPreferences;
    .registers 1

    .line 80
    invoke-static {}, Lcom/s1243808733/aide/application/AppTheme;->getThemeCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHSp(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getHSp(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 4

    .line 84
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isTrainerMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 85
    const-string p0, "default"

    .line 87
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 88
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CodeHighlight"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/s1243808733/util/Utils;->toUpperCaseFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getHighLightColor(Ljava/lang/String;ZII)I
    .registers 6

    .line 61
    :try_start_0
    invoke-static {}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getSpKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 62
    invoke-static {p0}, Lcom/blankj/utilcode/util/ColorUtils;->string2Int(Ljava/lang/String;)I

    move-result p0
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    return p0

    :catchall_12
    move-exception p0

    if-eqz p1, :cond_16

    goto :goto_17

    :cond_16
    move p2, p3

    .line 66
    :goto_17
    invoke-static {p2}, Lcom/s1243808733/util/Utils;->getColorFromResources(I)I

    move-result p0

    return p0
.end method

.method public static getHighlightColor()Lcom/s1243808733/aide/highlight/color/Colors;
    .registers 2

    .line 23
    invoke-static {}, Lcom/s1243808733/aide/application/AppTheme;->getThemeCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_46

    :goto_e
    goto :goto_30

    :sswitch_f
    const-string v1, "teal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_e

    :cond_18
    const/4 v0, 0x2

    goto :goto_31

    :sswitch_1a
    const-string v1, "red"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_e

    :cond_23
    const/4 v0, 0x1

    goto :goto_31

    :sswitch_25
    const-string v1, "indigo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_e

    :cond_2e
    const/4 v0, 0x0

    goto :goto_31

    :goto_30
    const/4 v0, -0x1

    :goto_31
    packed-switch v0, :pswitch_data_54

    .line 30
    new-instance v0, Lcom/s1243808733/aide/highlight/color/ColorDefault;

    invoke-direct {v0}, Lcom/s1243808733/aide/highlight/color/ColorDefault;-><init>()V

    return-object v0

    .line 28
    :pswitch_3a  #0x2
    new-instance v0, Lcom/s1243808733/aide/highlight/color/style/TealColor;

    invoke-direct {v0}, Lcom/s1243808733/aide/highlight/color/style/TealColor;-><init>()V

    return-object v0

    .line 26
    :pswitch_40  #0x0, 0x1
    new-instance v0, Lcom/s1243808733/aide/highlight/color/style/ColorIndigo;

    invoke-direct {v0}, Lcom/s1243808733/aide/highlight/color/style/ColorIndigo;-><init>()V

    return-object v0

    :sswitch_data_46
    .sparse-switch
        -0x4696012e -> :sswitch_25
        0x1b891 -> :sswitch_1a
        0x36425c -> :sswitch_f
    .end sparse-switch

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_40  #00000000
        :pswitch_40  #00000001
        :pswitch_3a  #00000002
    .end packed-switch
.end method

.method public static getSpKey(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[^a-z|A-Z]"

    const-string v2, "_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1b

    .line 76
    const-string p0, "_light"

    goto :goto_1d

    :cond_1b
    const-string p0, "_dark"

    :goto_1d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init()V
    .registers 2

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
    .registers 10

    .line 44
    invoke-static {p1}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHSp(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 45
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/s1243808733/aide/highlight/color/Colors;->values()[Lcom/s1243808733/aide/highlight/color/Color;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_39

    aget-object v4, p0, v3

    .line 47
    iget-object v5, v4, Lcom/s1243808733/aide/highlight/color/Color;->name:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getSpKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 48
    iget-object v6, v4, Lcom/s1243808733/aide/highlight/color/Color;->name:Ljava/lang/String;

    invoke-static {v6, v2}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getSpKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 49
    invoke-interface {p1, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2b

    .line 50
    iget-object v7, v4, Lcom/s1243808733/aide/highlight/color/Color;->lightColor:Ljava/lang/String;

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 52
    :cond_2b
    invoke-interface {p1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 53
    iget-object v4, v4, Lcom/s1243808733/aide/highlight/color/Color;->darkColor:Ljava/lang/String;

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 56
    :cond_39
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
