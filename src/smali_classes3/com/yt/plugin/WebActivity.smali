.class public Lcom/yt/plugin/WebActivity;
.super Lcom/s1243808733/app/base/BaseActivity;
.source "WebActivity.java"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressView:Landroid/widget/LinearLayout;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mSmallWindowMode:Z

.field public mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 460
    invoke-direct {p0}, Lcom/s1243808733/app/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$L1000000(Lcom/yt/plugin/WebActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mProgressView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$L1000002(Lcom/yt/plugin/WebActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/yt/plugin/WebActivity;->mSmallWindowMode:Z

    return v0
.end method

.method static synthetic access$L1000003(Lcom/yt/plugin/WebActivity;)Landroid/app/ActionBar;
    .registers 2

    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$L1000004(Lcom/yt/plugin/WebActivity;)Landroid/widget/ProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$S1000000(Lcom/yt/plugin/WebActivity;Landroid/widget/LinearLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/yt/plugin/WebActivity;->mProgressView:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$S1000002(Lcom/yt/plugin/WebActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/yt/plugin/WebActivity;->mSmallWindowMode:Z

    return-void
.end method

.method static synthetic access$S1000003(Lcom/yt/plugin/WebActivity;Landroid/app/ActionBar;)V
    .registers 2

    iput-object p1, p0, Lcom/yt/plugin/WebActivity;->mActionBar:Landroid/app/ActionBar;

    return-void
.end method

.method static synthetic access$S1000004(Lcom/yt/plugin/WebActivity;Landroid/widget/ProgressBar;)V
    .registers 2

    iput-object p1, p0, Lcom/yt/plugin/WebActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method private dp2px(F)I
    .registers 4

    .line 271
    invoke-virtual {p0}, Lcom/yt/plugin/WebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 272
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static fullWindow(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 75
    invoke-static {p1}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    :try_start_0
    const-string v0, "com.yt.plugin.WebActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    const-string v0, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v0, "smallWindow"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initView()V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/16 v6, 0x10

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/4 v5, 0x0

    .line 135
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yt/plugin/WebActivity;->mRootView:Landroid/widget/RelativeLayout;

    .line 136
    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mRootView:Landroid/widget/RelativeLayout;

    invoke-static {p0}, Lcom/s1243808733/util/Utils;->getColorBackground(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 137
    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mRootView:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x40

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/yt/plugin/WebActivity;->dp2px(F)I

    move-result v4

    invoke-virtual {v0, v3, v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 139
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yt/plugin/WebActivity;->mProgressView:Landroid/widget/LinearLayout;

    .line 140
    iget-boolean v0, p0, Lcom/yt/plugin/WebActivity;->mSmallWindowMode:Z

    if-eqz v0, :cond_2

    .line 141
    const/16 v0, 0x18

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/yt/plugin/WebActivity;->dp2px(F)I

    move-result v0

    .line 142
    iget-object v3, p0, Lcom/yt/plugin/WebActivity;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 143
    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 145
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 146
    const-string/jumbo v0, "\u6b63\u5728\u52a0\u8f7d\u4e2d..."

    const-string v4, "Loading..."

    invoke-static {v0, v4}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const/16 v0, 0xf

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 148
    int-to-float v0, v6

    invoke-direct {p0, v0}, Lcom/yt/plugin/WebActivity;->dp2px(F)I

    move-result v0

    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 150
    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mProgressView:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/ProgressBar;

    invoke-direct {v4, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/yt/plugin/WebActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    :goto_0
    new-instance v0, Lcom/s1243808733/widget/CustomWebView;

    invoke-direct {v0, p0}, Lcom/s1243808733/widget/CustomWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yt/plugin/WebActivity;->mWebView:Landroid/webkit/WebView;

    .line 161
    iget-boolean v0, p0, Lcom/yt/plugin/WebActivity;->mSmallWindowMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/yt/plugin/WebActivity;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 162
    :cond_0
    iget-object v3, p0, Lcom/yt/plugin/WebActivity;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/yt/plugin/WebActivity;->mWebView:Landroid/webkit/WebView;

    iget-boolean v0, p0, Lcom/yt/plugin/WebActivity;->mSmallWindowMode:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 163
    iget-boolean v0, p0, Lcom/yt/plugin/WebActivity;->mSmallWindowMode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/yt/plugin/WebActivity;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 167
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 168
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 170
    int-to-float v1, v5

    invoke-direct {p0, v1}, Lcom/yt/plugin/WebActivity;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 172
    iget-object v1, p0, Lcom/yt/plugin/WebActivity;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    invoke-virtual {p0, v0}, Lcom/yt/plugin/WebActivity;->setContentView(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-direct {p0, v0}, Lcom/yt/plugin/WebActivity;->initWebSetting(Landroid/webkit/WebView;)V

    return-void

    .line 153
    :cond_2
    new-instance v3, Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    const v4, 0x1030277

    invoke-direct {v3, p0, v0, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lcom/yt/plugin/WebActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 154
    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 155
    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const-string v3, "progress_bar_bg"

    invoke-static {v3}, Lcom/blankj/utilcode/util/ResourceUtils;->getDrawableIdByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/yt/plugin/WebActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mProgressView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/yt/plugin/WebActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v4, 0x3

    int-to-float v4, v4

    invoke-static {v4}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v4

    invoke-virtual {v0, v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 162
    goto :goto_1
.end method

.method private initWebSetting(Landroid/webkit/WebView;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 188
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 190
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 191
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 192
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 193
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 195
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 196
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 197
    iget-boolean v0, p0, Lcom/yt/plugin/WebActivity;->mSmallWindowMode:Z

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->SMALLER:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 200
    :cond_0
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 201
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 209
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 210
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 214
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_2

    .line 217
    :try_start_0
    const-string v0, "android.webkit.WebView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "setWebContentsDebuggingEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 219
    if-eqz v2, :cond_2

    .line 220
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 221
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    new-instance v3, Ljava/lang/Boolean;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_2
    :goto_1
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

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
    new-instance v0, Lcom/yt/plugin/WebActivity$100000001;

    invoke-direct {v0, p0}, Lcom/yt/plugin/WebActivity$100000001;-><init>(Lcom/yt/plugin/WebActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 266
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 267
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void

    .line 205
    :cond_3
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private initWindows()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 179
    iget-boolean v0, p0, Lcom/yt/plugin/WebActivity;->mSmallWindowMode:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/yt/plugin/WebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 181
    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 182
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 183
    invoke-virtual {p0}, Lcom/yt/plugin/WebActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static smallWindow(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 84
    invoke-static {p1}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    :try_start_0
    const-string v0, "com.yt.plugin.SmallWebActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    const-string v0, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v0, "smallWindow"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public isApplyTheme()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method protected isDisableDrag()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 71
    instance-of v0, p0, Lcom/yt/plugin/SmallWebActivity;

    return v0
.end method

.method public onBackPressed()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 287
    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v4, 0x1

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/yt/plugin/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 97
    const-string v0, "smallWindow"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yt/plugin/WebActivity;->mSmallWindowMode:Z

    .line 100
    iget-boolean v0, p0, Lcom/yt/plugin/WebActivity;->mSmallWindowMode:Z

    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/yt/plugin/WebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 102
    const/4 v2, 0x0

    int-to-float v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 103
    invoke-virtual {p0}, Lcom/yt/plugin/WebActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 105
    invoke-static {}, Lcom/s1243808733/widget/CustomWebView;->isSupportForceDark()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "theme_translation"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getStyleIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yt/plugin/WebActivity;->setTheme(I)V

    .line 120
    :goto_0
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-direct {p0}, Lcom/yt/plugin/WebActivity;->initView()V

    .line 124
    invoke-direct {p0}, Lcom/yt/plugin/WebActivity;->initWindows()V

    .line 126
    const-string v0, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/yt/plugin/WebActivity;->mWebView:Landroid/webkit/WebView;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 130
    :goto_1
    return-void

    .line 109
    :cond_0
    const-string v0, "theme_translation_dark"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getStyleIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yt/plugin/WebActivity;->setTheme(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 129
    invoke-static {v0, v4}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/Throwable;Z)Landroid/widget/Toast;

    .line 130
    invoke-virtual {p0}, Lcom/yt/plugin/WebActivity;->finish()V

    goto :goto_1

    .line 112
    :cond_1
    :try_start_1
    const-string v0, "theme_translation"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->getStyleIdByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yt/plugin/WebActivity;->setTheme(I)V

    goto :goto_0

    .line 115
    :cond_2
    invoke-static {p0}, Lcom/s1243808733/aide/application/AppTheme;->initTheme(Landroid/app/Activity;)V

    .line 116
    invoke-virtual {p0}, Lcom/yt/plugin/WebActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/yt/plugin/WebActivity;->mActionBar:Landroid/app/ActionBar;

    .line 117
    iget-object v0, p0, Lcom/yt/plugin/WebActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 118
    iget-object v2, p0, Lcom/yt/plugin/WebActivity;->mActionBar:Landroid/app/ActionBar;

    const-string/jumbo v0, "\u6b63\u5728\u52a0\u8f7d\u4e2d.."

    const-string v3, "Loading.."

    invoke-static {v0, v3}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onDestroy()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

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
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 293
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 298
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 295
    :pswitch_0
    invoke-virtual {p0}, Lcom/yt/plugin/WebActivity;->finish()V

    .line 296
    const/4 v0, 0x1

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
