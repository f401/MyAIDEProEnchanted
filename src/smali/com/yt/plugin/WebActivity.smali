.class public Lcom/yt/plugin/WebActivity;
.super Lcom/s1243808733/app/base/BaseActivity;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yt/plugin/WebActivity$MyWebChromeClient;,
        Lcom/yt/plugin/WebActivity$MyWebViewClient;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressView:Landroid/widget/LinearLayout;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mSmallWindowMode:Z

.field public mWebView:Landroid/webkit/WebView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActionBar(Lcom/yt/plugin/WebActivity;)Landroid/app/ActionBar;
    .registers 1

    iget-object p0, p0, Lcom/yt/plugin/WebActivity;->mActionBar:Landroid/app/ActionBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressBar(Lcom/yt/plugin/WebActivity;)Landroid/widget/ProgressBar;
    .registers 1

    iget-object p0, p0, Lcom/yt/plugin/WebActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressView(Lcom/yt/plugin/WebActivity;)Landroid/widget/LinearLayout;
    .registers 1

    iget-object p0, p0, Lcom/yt/plugin/WebActivity;->mProgressView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSmallWindowMode(Lcom/yt/plugin/WebActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/yt/plugin/WebActivity;->mSmallWindowMode:Z

    return p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/s1243808733/app/base/BaseActivity;-><init>()V

    return-void
.end method

.method private dp2px(F)I
    .registers 3

    .line 271
    invoke-virtual {p0}, Lcom/yt/plugin/WebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000  # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public static fullWindow(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .line 75
    invoke-static {p1}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yt/plugin/WebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    const-string v1, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string p1, "smallWindow"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1b
    return-void
.end method

.method private initView()V
    .registers 7

    .line 135
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yt/plugin/WebActivity;->mRootView:Landroid/widget/RelativeLayout;

    .line 136
    invoke-static {p0}, Lcom/s1243808733/util/Utils;->getColorBackground(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 137
    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mRootView:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x42800000  # 64.0f

    invoke-direct {p0, v2}, Lcom/yt/plugin/WebActivity;->dp2px(F)I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 139
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yt/plugin/WebActivity;->mProgressView:Landroid/widget/LinearLayout;

    .line 140
    iget-boolean v0, p0, Lcom/yt/plugin/WebActivity;->mSmallWindowMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6f

    .line 141
    const/high16 v0, 0x41c00000  # 24.0f

    invoke-direct {p0, v0}, Lcom/yt/plugin/WebActivity;->dp2px(F)I

    move-result v0

    .line 142
    iget-object v2, p0, Lcom/yt/plugin/WebActivity;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 143
    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mProgressView:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 145
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 146
    const-string v2, "正在加载中..."

    const-string v4, "Loading..."

    invoke-static {v2, v4}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const/high16 v2, 0x41700000  # 15.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 148
    const/high16 v2, 0x41800000  # 16.0f

    invoke-direct {p0, v2}, Lcom/yt/plugin/WebActivity;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 150
    iget-object v2, p0, Lcom/yt/plugin/WebActivity;->mProgressView:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/ProgressBar;

    invoke-direct {v4, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/yt/plugin/WebActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    iget-object v2, p0, Lcom/yt/plugin/WebActivity;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_9b

    .line 153
    :cond_6f
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v4, 0x1030277

    invoke-direct {v0, p0, v2, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/yt/plugin/WebActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 154
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 155
    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const-string v2, "progress_bar_bg"

    invoke-static {v2}, Lcom/blankj/utilcode/util/ResourceUtils;->getDrawableIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/yt/plugin/WebActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mProgressView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/yt/plugin/WebActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/high16 v4, 0x40400000  # 3.0f

    invoke-static {v4}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 159
    :goto_9b
    new-instance v0, Lcom/s1243808733/widget/CustomWebView;

    invoke-direct {v0, p0}, Lcom/s1243808733/widget/CustomWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yt/plugin/WebActivity;->mWebView:Landroid/webkit/WebView;

    .line 161
    iget-boolean v0, p0, Lcom/yt/plugin/WebActivity;->mSmallWindowMode:Z

    const/4 v2, -0x2

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/yt/plugin/WebActivity;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 162
    :cond_ae
    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/yt/plugin/WebActivity;->mWebView:Landroid/webkit/WebView;

    iget-boolean v5, p0, Lcom/yt/plugin/WebActivity;->mSmallWindowMode:Z

    if-eqz v5, :cond_b8

    const/4 v5, -0x2

    goto :goto_b9

    :cond_b8
    const/4 v5, -0x1

    :goto_b9
    invoke-virtual {v0, v4, v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 163
    iget-boolean v0, p0, Lcom/yt/plugin/WebActivity;->mSmallWindowMode:Z

    if-nez v0, :cond_c7

    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/yt/plugin/WebActivity;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 167
    :cond_c7
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 168
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 170
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/yt/plugin/WebActivity;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 172
    iget-object v1, p0, Lcom/yt/plugin/WebActivity;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    invoke-virtual {p0, v0}, Lcom/yt/plugin/WebActivity;->setContentView(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/yt/plugin/WebActivity;->initWebSetting(Landroid/webkit/WebView;)V

    return-void
.end method

.method private initWebSetting(Landroid/webkit/WebView;)V
    .registers 9

    .line 188
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 190
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 191
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 192
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 193
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 195
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 196
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 197
    iget-boolean v3, p0, Lcom/yt/plugin/WebActivity;->mSmallWindowMode:Z

    if-eqz v3, :cond_21

    .line 198
    sget-object v3, Landroid/webkit/WebSettings$TextSize;->SMALLER:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 200
    :cond_21
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 201
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 203
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_32

    .line 205
    :cond_2f
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 210
    :goto_32
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 217
    :try_start_35
    const-string v3, "android.webkit.WebView"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 218
    const-string v5, "setWebContentsDebuggingEnabled"

    new-array v6, v1, [Ljava/lang/Class;

    aput-object v4, v6, v2

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 220
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 221
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_58} :catch_59

    goto :goto_5a

    .line 267
    :catch_59
    move-exception v2

    .line 228
    :cond_5a
    :goto_5a
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 229
    new-instance v0, Lcom/yt/plugin/WebViewJsBridge;

    invoke-direct {v0, p0}, Lcom/yt/plugin/WebViewJsBridge;-><init>(Lcom/yt/plugin/WebActivity;)V

    const-string v1, "aide"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    new-instance v0, Lcom/yt/plugin/WebActivity$MyWebChromeClient;

    invoke-direct {v0, p0}, Lcom/yt/plugin/WebActivity$MyWebChromeClient;-><init>(Lcom/yt/plugin/WebActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 233
    new-instance v0, Lcom/yt/plugin/WebActivity$MyWebViewClient;

    invoke-direct {v0, p0}, Lcom/yt/plugin/WebActivity$MyWebViewClient;-><init>(Lcom/yt/plugin/WebActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 235
    new-instance v0, Lcom/yt/plugin/WebActivity$1;

    invoke-direct {v0, p0}, Lcom/yt/plugin/WebActivity$1;-><init>(Lcom/yt/plugin/WebActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 266
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 267
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method private initWindows()V
    .registers 3

    .line 179
    iget-boolean v0, p0, Lcom/yt/plugin/WebActivity;->mSmallWindowMode:Z

    if-eqz v0, :cond_1d

    .line 180
    invoke-virtual {p0}, Lcom/yt/plugin/WebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 181
    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 182
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 183
    invoke-virtual {p0}, Lcom/yt/plugin/WebActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1d
    return-void
.end method

.method public static smallWindow(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .line 84
    invoke-static {p1}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yt/plugin/SmallWebActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    const-string v1, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string p1, "smallWindow"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1b
    return-void
.end method


# virtual methods
.method public isApplyTheme()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected isDisableDrag()Z
    .registers 2

    .line 71
    instance-of v0, p0, Lcom/yt/plugin/SmallWebActivity;

    return v0
.end method

.method public onBackPressed()V
    .registers 2

    .line 284
    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 285
    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_11

    .line 287
    :cond_e
    invoke-super {p0}, Lcom/s1243808733/app/base/BaseActivity;->onBackPressed()V

    :goto_11
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 96
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/yt/plugin/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 97
    const-string v2, "smallWindow"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/yt/plugin/WebActivity;->mSmallWindowMode:Z

    if-eqz v2, :cond_49

    .line 101
    invoke-virtual {p0}, Lcom/yt/plugin/WebActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 102
    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 103
    invoke-virtual {p0}, Lcom/yt/plugin/WebActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 105
    invoke-static {}, Lcom/s1243808733/widget/CustomWebView;->isSupportForceDark()Z

    move-result v2
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_7d

    const-string v3, "theme_translation"

    if-eqz v2, :cond_41

    .line 106
    :try_start_29
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 107
    invoke-static {v3}, Lcom/blankj/utilcode/util/ResourceUtils;->getStyleIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/yt/plugin/WebActivity;->setTheme(I)V

    goto :goto_64

    .line 109
    :cond_37
    const-string v2, "theme_translation_dark"

    invoke-static {v2}, Lcom/blankj/utilcode/util/ResourceUtils;->getStyleIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/yt/plugin/WebActivity;->setTheme(I)V

    goto :goto_64

    .line 112
    :cond_41
    invoke-static {v3}, Lcom/blankj/utilcode/util/ResourceUtils;->getStyleIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/yt/plugin/WebActivity;->setTheme(I)V

    goto :goto_64

    .line 115
    :cond_49
    invoke-static {p0}, Lcom/s1243808733/aide/application/AppTheme;->initTheme(Landroid/app/Activity;)V

    .line 116
    invoke-virtual {p0}, Lcom/yt/plugin/WebActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/yt/plugin/WebActivity;->mActionBar:Landroid/app/ActionBar;

    .line 117
    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 118
    iget-object v2, p0, Lcom/yt/plugin/WebActivity;->mActionBar:Landroid/app/ActionBar;

    const-string v3, "正在加载中.."

    const-string v4, "Loading.."

    invoke-static {v3, v4}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    :goto_64
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-direct {p0}, Lcom/yt/plugin/WebActivity;->initView()V

    .line 124
    invoke-direct {p0}, Lcom/yt/plugin/WebActivity;->initWindows()V

    .line 126
    const-string p1, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {v1, p1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 127
    iget-object v1, p0, Lcom/yt/plugin/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_29 .. :try_end_7c} :catchall_7d

    goto :goto_84

    :catchall_7d
    move-exception p1

    .line 129
    invoke-static {p1, v0}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/Throwable;Z)Landroid/widget/Toast;

    .line 130
    invoke-virtual {p0}, Lcom/yt/plugin/WebActivity;->finish()V

    :goto_84
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 277
    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 278
    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 279
    invoke-super {p0}, Lcom/s1243808733/app/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 293
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_e

    .line 298
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 295
    :cond_e
    invoke-virtual {p0}, Lcom/yt/plugin/WebActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method
