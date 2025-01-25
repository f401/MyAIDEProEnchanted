.class public Lcom/s1243808733/aide/application/AppTheme;
.super Ljava/lang/Object;
.source "AppTheme.java"


# static fields
.field public static final THEME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/s1243808733/aide/application/AppTheme;->THEME:Ljava/util/Map;

    .line 31
    invoke-static {}, Lcom/s1243808733/aide/application/AppTheme;->init()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyBlurStyle(Landroid/app/Activity;I)V
    .registers 4

    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_14

    .line 173
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableBlurDialog()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_14
    return-void
.end method

.method public static customList(Landroid/widget/ListView;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    .line 46
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static customTabView(Landroid/app/ActionBar;)V
    .registers 9

    .line 56
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    const-string v2, "mTabScrollView"

    invoke-virtual {p0, v2}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_94

    .line 58
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    const-string v2, "mTabLayout"

    invoke-virtual {p0, v2}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    .line 61
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_28
    if-le v2, v4, :cond_9d

    .line 63
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 64
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "TabView"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3f

    goto :goto_91

    :cond_3f
    if-nez v3, :cond_4e

    .line 66
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v6, "mTextView"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 67
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 69
    :cond_4e
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 70
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isTabTextLowercase()Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 71
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 73
    :cond_5d
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 74
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 76
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_91

    .line 77
    invoke-virtual {v5}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 78
    invoke-virtual {v5}, Landroid/view/View;->isClickable()Z

    move-result v6

    if-eqz v6, :cond_91

    .line 79
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x101030e

    filled-new-array {v7}, [I

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 82
    invoke-virtual {v6, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 85
    invoke-static {v5, v7}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_91} :catch_95

    :cond_91
    :goto_91
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_94
    return-void

    :catch_95
    move-exception p0

    .line 95
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    :cond_9d
    return-void
.end method

.method public static getThemeCode()Ljava/lang/String;
    .registers 3

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
    .registers 3

    .line 36
    sget-object v0, Lcom/s1243808733/aide/application/AppTheme;->THEME:Ljava/util/Map;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "素衣"

    goto :goto_d

    :cond_b
    const-string v1, "Light"

    :goto_d
    const-string v2, "default"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "暗绸"

    goto :goto_1d

    :cond_1b
    const-string v1, "Dark"

    :goto_1d
    const-string v2, "default_dark"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "墨靛粉"

    goto :goto_2d

    :cond_2b
    const-string v1, "Indigo"

    :goto_2d
    const-string v2, "indigo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string v1, "鸭绿"

    goto :goto_3d

    :cond_3b
    const-string v1, "Teal"

    :goto_3d
    const-string v2, "teal"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_4b

    const-string v1, "新年红"

    goto :goto_4d

    :cond_4b
    const-string v1, "Red"

    :goto_4d
    const-string v2, "red"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static initTheme(Landroid/app/Activity;)V
    .registers 9

    .line 108
    invoke-static {}, Lcom/s1243808733/aide/application/AppTheme;->getThemeCode()Ljava/lang/String;

    move-result-object v0

    .line 109
    const-string v1, "default_dark"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "default"

    if-eqz v1, :cond_f

    move-object v0, v2

    .line 114
    :cond_f
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v1

    .line 116
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isTrainerMode()Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "Style.Dialog.Blur.Light"

    const v6, 0x7f0e004f

    const/4 v7, 0x1

    if-eqz v3, :cond_37

    .line 117
    invoke-virtual {p0, v6}, Landroid/app/Activity;->setTheme(I)V

    .line 118
    invoke-static {v5}, Lcom/blankj/utilcode/util/ResourceUtils;->getStyleIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/s1243808733/aide/application/AppTheme;->applyBlurStyle(Landroid/app/Activity;I)V

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_33

    .line 120
    invoke-static {p0, v7}, Lcom/s1243808733/util/Utils;->setSystemStatusBarLight(Landroid/app/Activity;Z)V

    .line 122
    :cond_33
    sput-boolean v4, Lcom/s1243808733/util/Toasty;->enable:Z

    goto/16 :goto_b2

    :cond_37
    if-eqz v1, :cond_47

    .line 127
    invoke-virtual {p0, v6}, Landroid/app/Activity;->setTheme(I)V

    .line 128
    invoke-static {v5}, Lcom/blankj/utilcode/util/ResourceUtils;->getStyleIdByName(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v3}, Lcom/s1243808733/aide/application/AppTheme;->applyBlurStyle(Landroid/app/Activity;I)V

    .line 130
    invoke-static {p0, v7}, Lcom/s1243808733/util/Utils;->setSystemStatusBarLight(Landroid/app/Activity;Z)V

    goto :goto_a4

    .line 133
    :cond_47
    const-string v3, "indigo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 134
    const v3, 0x7f0e0051

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTheme(I)V

    .line 135
    const-string v3, "Style.Dialog.Blur.Indigo"

    invoke-static {v3}, Lcom/blankj/utilcode/util/ResourceUtils;->getStyleIdByName(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v3}, Lcom/s1243808733/aide/application/AppTheme;->applyBlurStyle(Landroid/app/Activity;I)V

    goto :goto_a4

    .line 137
    :cond_5f
    const-string v3, "teal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 138
    const-string v3, "MyAppThemeDark_Teal"

    invoke-static {v3}, Lcom/blankj/utilcode/util/ResourceUtils;->getStyleIdByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTheme(I)V

    .line 139
    const-string v3, "Style.Dialog.Blur.Teal"

    invoke-static {v3}, Lcom/blankj/utilcode/util/ResourceUtils;->getStyleIdByName(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v3}, Lcom/s1243808733/aide/application/AppTheme;->applyBlurStyle(Landroid/app/Activity;I)V

    goto :goto_a4

    .line 141
    :cond_7a
    const-string v3, "red"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 142
    const-string v3, "MyAppThemeDark_Red"

    invoke-static {v3}, Lcom/blankj/utilcode/util/ResourceUtils;->getStyleIdByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTheme(I)V

    .line 143
    const-string v3, "Style.Dialog.Blur.Red"

    invoke-static {v3}, Lcom/blankj/utilcode/util/ResourceUtils;->getStyleIdByName(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v3}, Lcom/s1243808733/aide/application/AppTheme;->applyBlurStyle(Landroid/app/Activity;I)V

    goto :goto_a4

    .line 146
    :cond_95
    const v3, 0x7f0e0050

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTheme(I)V

    .line 147
    const-string v3, "Style.Dialog.Blur.Dark"

    invoke-static {v3}, Lcom/blankj/utilcode/util/ResourceUtils;->getStyleIdByName(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v3}, Lcom/s1243808733/aide/application/AppTheme;->applyBlurStyle(Landroid/app/Activity;I)V

    :goto_a4
    if-eqz v1, :cond_b0

    .line 153
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ad

    goto :goto_b0

    .line 156
    :cond_ad
    sput-boolean v4, Lcom/s1243808733/util/Toasty;->enable:Z

    goto :goto_b2

    .line 154
    :cond_b0
    :goto_b0
    sput-boolean v7, Lcom/s1243808733/util/Toasty;->enable:Z

    :goto_b2
    if-eqz v1, :cond_be

    .line 163
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->getDefaultMaker()Lcom/blankj/utilcode/util/ToastUtils;

    move-result-object p0

    const-string v0, "light"

    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils;->setMode(Ljava/lang/String;)Lcom/blankj/utilcode/util/ToastUtils;

    goto :goto_c7

    .line 165
    :cond_be
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->getDefaultMaker()Lcom/blankj/utilcode/util/ToastUtils;

    move-result-object p0

    const-string v0, "dark"

    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils;->setMode(Ljava/lang/String;)Lcom/blankj/utilcode/util/ToastUtils;

    :goto_c7
    return-void
.end method

.method public static setThemeCode(Ljava/lang/String;)V
    .registers 3

    .line 104
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "theme_code"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
