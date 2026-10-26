.class public Lcom/s1243808733/aide/application/AppTheme;
.super Ljava/lang/Object;
.source "AppTheme.java"


# static fields
.field public static final THEME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/s1243808733/aide/application/AppTheme;->THEME:Ljava/util/Map;

    .line 31
    invoke-static {}, Lcom/s1243808733/aide/application/AppTheme;->init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyBlurStyle(Landroid/app/Activity;I)V
    .locals 2

    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 173
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableBlurDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_0
    return-void
.end method

.method public static customList(Landroid/widget/ListView;)V
    .locals 1

    if-nez p0, :cond_0

    .line 46
    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static customTabView(Landroid/app/ActionBar;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 56
    :try_start_0
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const-string v1, "mTabScrollView"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 58
    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    const-string v1, "mTabLayout"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 61
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    const/4 v1, 0x0

    move v3, v4

    :goto_0
    if-le v5, v3, :cond_2

    .line 63
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 64
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v7, "TabView"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 64
    :cond_0
    if-nez v1, :cond_3

    .line 66
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mTextView"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 67
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 69
    :goto_2
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 70
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isTabTextLowercase()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 71
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 73
    :cond_1
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 74
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 76
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_4

    .line 77
    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 78
    invoke-virtual {v1}, Landroid/view/View;->isClickable()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 79
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const v9, 0x101030e

    aput v9, v7, v8

    invoke-virtual {v6, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 82
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 85
    invoke-static {v1, v7}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    .line 95
    new-array v1, v10, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    move-object v2, v1

    goto :goto_2

    :cond_4
    move-object v1, v2

    goto :goto_1
.end method

.method public static getThemeCode()Ljava/lang/String;
    .locals 3

    .line 100
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "theme_code"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init()V
    .locals 3

    .line 36
    sget-object v1, Lcom/s1243808733/aide/application/AppTheme;->THEME:Ljava/util/Map;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u7d20\u8863"

    :goto_0
    const-string v2, "default"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u6697\u7ef8"

    :goto_1
    const-string v2, "default_dark"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u58a8\u975b\u7c89"

    :goto_2
    const-string v2, "indigo"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u9e2d\u7eff"

    :goto_3
    const-string v2, "teal"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u65b0\u5e74\u7ea2"

    :goto_4
    const-string v2, "red"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 36
    :cond_0
    const-string v0, "Light"

    goto :goto_0

    .line 37
    :cond_1
    const-string v0, "Dark"

    goto :goto_1

    .line 39
    :cond_2
    const-string v0, "Indigo"

    goto :goto_2

    .line 40
    :cond_3
    const-string v0, "Teal"

    goto :goto_3

    .line 41
    :cond_4
    const-string v0, "Red"

    goto :goto_4
.end method

.method public static initTheme(Landroid/app/Activity;)V
    .locals 6

    const v5, 0x7f0e004f

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 108
    invoke-static {}, Lcom/s1243808733/aide/application/AppTheme;->getThemeCode()Ljava/lang/String;

    move-result-object v0

    .line 109
    const-string v1, "default_dark"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "default"

    .line 114
    :cond_0
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v1

    .line 116
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isTrainerMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setTheme(I)V

    .line 118
    const-string v0, "Style.Dialog.Blur.Light"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getStyleIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/s1243808733/aide/application/AppTheme;->applyBlurStyle(Landroid/app/Activity;I)V

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 120
    invoke-static {p0, v3}, Lcom/s1243808733/util/Utils;->setSystemStatusBarLight(Landroid/app/Activity;Z)V

    .line 122
    :cond_1
    sput-boolean v4, Lcom/s1243808733/util/Toasty;->enable:Z

    .line 154
    :goto_0
    if-eqz v1, :cond_9

    .line 163
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->getDefaultMaker()Lcom/blankj/utilcode/util/ToastUtils;

    move-result-object v0

    const-string v1, "light"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->setMode(Ljava/lang/String;)Lcom/blankj/utilcode/util/ToastUtils;

    .line 165
    :goto_1
    return-void

    .line 122
    :cond_2
    if-eqz v1, :cond_4

    .line 127
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setTheme(I)V

    .line 128
    const-string v2, "Style.Dialog.Blur.Light"

    invoke-static {v2}, Lcom/blankj/utilcode/util/ResourceUtils;->getStyleIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/s1243808733/aide/application/AppTheme;->applyBlurStyle(Landroid/app/Activity;I)V

    .line 130
    invoke-static {p0, v3}, Lcom/s1243808733/util/Utils;->setSystemStatusBarLight(Landroid/app/Activity;Z)V

    .line 147
    :goto_2
    if-eqz v1, :cond_3

    .line 153
    const-string v2, "default"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 154
    :cond_3
    sput-boolean v3, Lcom/s1243808733/util/Toasty;->enable:Z

    goto :goto_0

    .line 133
    :cond_4
    const-string v2, "indigo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 134
    const v2, 0x7f0e0051

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTheme(I)V

    .line 135
    const-string v2, "Style.Dialog.Blur.Indigo"

    invoke-static {v2}, Lcom/blankj/utilcode/util/ResourceUtils;->getStyleIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/s1243808733/aide/application/AppTheme;->applyBlurStyle(Landroid/app/Activity;I)V

    goto :goto_2

    .line 137
    :cond_5
    const-string v2, "teal"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 138
    const-string v2, "MyAppThemeDark_Teal"

    invoke-static {v2}, Lcom/blankj/utilcode/util/ResourceUtils;->getStyleIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTheme(I)V

    .line 139
    const-string v2, "Style.Dialog.Blur.Teal"

    invoke-static {v2}, Lcom/blankj/utilcode/util/ResourceUtils;->getStyleIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/s1243808733/aide/application/AppTheme;->applyBlurStyle(Landroid/app/Activity;I)V

    goto :goto_2

    .line 141
    :cond_6
    const-string v2, "red"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 142
    const-string v2, "MyAppThemeDark_Red"

    invoke-static {v2}, Lcom/blankj/utilcode/util/ResourceUtils;->getStyleIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTheme(I)V

    .line 143
    const-string v2, "Style.Dialog.Blur.Red"

    invoke-static {v2}, Lcom/blankj/utilcode/util/ResourceUtils;->getStyleIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/s1243808733/aide/application/AppTheme;->applyBlurStyle(Landroid/app/Activity;I)V

    goto :goto_2

    .line 146
    :cond_7
    const v2, 0x7f0e0050

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTheme(I)V

    .line 147
    const-string v2, "Style.Dialog.Blur.Dark"

    invoke-static {v2}, Lcom/blankj/utilcode/util/ResourceUtils;->getStyleIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/s1243808733/aide/application/AppTheme;->applyBlurStyle(Landroid/app/Activity;I)V

    goto :goto_2

    .line 156
    :cond_8
    sput-boolean v4, Lcom/s1243808733/util/Toasty;->enable:Z

    goto/16 :goto_0

    .line 165
    :cond_9
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->getDefaultMaker()Lcom/blankj/utilcode/util/ToastUtils;

    move-result-object v0

    const-string v1, "dark"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->setMode(Ljava/lang/String;)Lcom/blankj/utilcode/util/ToastUtils;

    goto/16 :goto_1
.end method

.method public static setThemeCode(Ljava/lang/String;)V
    .locals 2

    .line 104
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "theme_code"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
