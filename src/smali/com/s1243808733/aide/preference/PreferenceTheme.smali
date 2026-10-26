.class public Lcom/s1243808733/aide/preference/PreferenceTheme;
.super Landroid/preference/Preference;
.source "PreferenceTheme.java"


# static fields
.field private static final LAUNCHER:Ljava/util/Map;
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


# instance fields
.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSwitch(Lcom/s1243808733/aide/preference/PreferenceTheme;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/aide/preference/PreferenceTheme;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$msetIndigoIcon(Lcom/s1243808733/aide/preference/PreferenceTheme;)V
    .locals 0

    invoke-direct {p0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->setIndigoIcon()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetRedIcon(Lcom/s1243808733/aide/preference/PreferenceTheme;)V
    .locals 0

    invoke-direct {p0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->setRedIcon()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTealIcon(Lcom/s1243808733/aide/preference/PreferenceTheme;)V
    .locals 0

    invoke-direct {p0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->setTealIcon()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/s1243808733/aide/preference/PreferenceTheme;->LAUNCHER:Ljava/util/Map;

    .line 37
    const-string v1, "Light"

    const-string v2, "com.s1243808733.aide.application.activity.LightLaunchActivity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "Dark"

    const-string v2, "com.aide.ui.DarkActivity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "Indigo"

    const-string v2, "com.aide.ui.IndigoActivity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v1, "Teal"

    const-string v2, "com.aide.ui.TealActivity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v1, "Red"

    const-string v2, "com.aide.ui.RedActivity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-static {}, Lcom/s1243808733/aide/application/AppTheme;->init()V

    .line 47
    invoke-direct {p0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 135
    const-string v0, "apptheme"

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->setKey(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u8f6f\u4ef6\u4e3b\u9898"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {p0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/s1243808733/aide/application/AppTheme;->getThemeCode()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/blankj/utilcode/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/s1243808733/aide/application/AppTheme;->THEME:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    .line 136
    :cond_1
    const-string v0, "App Theme"

    goto :goto_0
.end method

.method static restart()V
    .locals 0

    return-void
.end method

.method public static setDarkSplash()V
    .locals 1

    .line 229
    const-string v0, "Dark"

    invoke-static {v0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->switchTo(Ljava/lang/String;)V

    return-void
.end method

.method private setIndigoIcon()V
    .locals 1

    .line 241
    const-string v0, "Indigo"

    invoke-static {v0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->switchTo(Ljava/lang/String;)V

    return-void
.end method

.method public static setLightIcon()V
    .locals 1

    .line 225
    const-string v0, "Light"

    invoke-static {v0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->switchTo(Ljava/lang/String;)V

    return-void
.end method

.method private setRedIcon()V
    .locals 1

    .line 233
    const-string v0, "Red"

    invoke-static {v0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->switchTo(Ljava/lang/String;)V

    return-void
.end method

.method private setTealIcon()V
    .locals 1

    .line 237
    const-string v0, "Teal"

    invoke-static {v0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->switchTo(Ljava/lang/String;)V

    return-void
.end method

.method public static switchTo(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    .line 191
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->saveFiles()V

    .line 192
    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/App;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 194
    sget-object v0, Lcom/s1243808733/aide/preference/PreferenceTheme;->LAUNCHER:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 196
    new-instance v3, Landroid/content/ComponentName;

    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {v1, v3, v0, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_0

    .line 201
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-static {}, Lcom/s1243808733/aide/application/App;->getApp()Lcom/s1243808733/aide/application/App;

    move-result-object v3

    sget-object v0, Lcom/s1243808733/aide/preference/PreferenceTheme;->LAUNCHER:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 205
    invoke-static {}, Lcom/s1243808733/aide/preference/PreferenceTheme;->restart()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/widget/ListView;)V
    .locals 1

    .line 51
    new-instance v0, Lcom/s1243808733/aide/preference/PreferenceTheme$1;

    invoke-direct {v0, p0, p1}, Lcom/s1243808733/aide/preference/PreferenceTheme$1;-><init>(Lcom/s1243808733/aide/preference/PreferenceTheme;Landroid/widget/ListView;)V

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    .line 147
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 149
    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 153
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 155
    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 158
    :cond_1
    new-instance v2, Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/s1243808733/aide/preference/PreferenceTheme;->mSwitch:Landroid/widget/Switch;

    .line 159
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "\u6df1\u8272\u4e3b\u9898"

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v1, p0, Lcom/s1243808733/aide/preference/PreferenceTheme;->mSwitch:Landroid/widget/Switch;

    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 161
    iget-object v1, p0, Lcom/s1243808733/aide/preference/PreferenceTheme;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 162
    iget-object v1, p0, Lcom/s1243808733/aide/preference/PreferenceTheme;->mSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/s1243808733/aide/preference/PreferenceTheme$2;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/preference/PreferenceTheme$2;-><init>(Lcom/s1243808733/aide/preference/PreferenceTheme;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 178
    iget-object v1, p0, Lcom/s1243808733/aide/preference/PreferenceTheme;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_3

    .line 179
    const-string v2, "default"

    invoke-static {}, Lcom/s1243808733/aide/application/AppTheme;->getThemeCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 180
    iget-object v1, p0, Lcom/s1243808733/aide/preference/PreferenceTheme;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 181
    iget-object v1, p0, Lcom/s1243808733/aide/preference/PreferenceTheme;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setClickable(Z)V

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/s1243808733/aide/preference/PreferenceTheme;->mSwitch:Landroid/widget/Switch;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setVisibility(I)V

    .line 186
    :cond_3
    iget-object v1, p0, Lcom/s1243808733/aide/preference/PreferenceTheme;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 159
    :cond_4
    const-string v1, "Dark mode"

    goto :goto_1
.end method
