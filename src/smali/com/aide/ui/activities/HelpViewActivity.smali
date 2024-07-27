.class public Lcom/aide/ui/activities/HelpViewActivity;
.super Lcom/aide/ui/ThemedActionbarActivity;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field private Zo:I
    .annotation runtime Labcd/ru;
        field = 0x8450cb1ff56f404L
    .end annotation
.end field

.field private v5:Landroid/webkit/WebView;
    .annotation runtime Labcd/ru;
        field = 0x2573c5cc5e56f675L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x17e306c18b182e20L

    const-class v0, Lcom/aide/ui/activities/HelpViewActivity;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x200bd495a2b58ac9L    # -1.6901875756555627E154

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/HelpViewActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x200bd495a2b58ac9L    # -1.6901875756555627E154

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/ThemedActionbarActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/aide/ui/activities/HelpViewActivity;->Zo:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/HelpViewActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/activities/HelpViewActivity;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/activities/HelpViewActivity;->v5:Landroid/webkit/WebView;

    return-object v0
.end method

.method private DW()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x393cf8b4c13a1841L
    .end annotation

    const-wide v4, -0x602b20c9207c000L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/HelpViewActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x602b20c9207c000L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "EXTRA_CAT"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/ui/activities/o;->valueOf(Ljava/lang/String;)Lcom/aide/ui/activities/o;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Lcom/aide/ui/activities/o;->U2()I

    move-result v2

    iput v2, p0, Lcom/aide/ui/activities/HelpViewActivity;->Zo:I

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v0}, Lcom/aide/ui/activities/o;->U2()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    iget-object v2, p0, Lcom/aide/ui/activities/HelpViewActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v0}, Lcom/aide/ui/activities/o;->a8()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/aide/ui/activities/o;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/activities/HelpViewActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/aide/ui/activities/HelpViewActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/HelpViewActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :catch_1
    move-exception v0

    :try_start_3
    sget-object v0, Lcom/aide/ui/activities/o;->j6:Lcom/aide/ui/activities/o;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/aide/ui/activities/HelpViewActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v0}, Lcom/aide/ui/activities/o;->j3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method static synthetic j6(Lcom/aide/ui/activities/HelpViewActivity;)I
    .registers 2

    iget v0, p0, Lcom/aide/ui/activities/HelpViewActivity;->Zo:I

    return v0
.end method

.method static synthetic j6(Lcom/aide/ui/activities/HelpViewActivity;I)I
    .registers 2

    iput p1, p0, Lcom/aide/ui/activities/HelpViewActivity;->Zo:I

    return p1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x4f34067c582f0b74L
    .end annotation

    const-wide v8, 0xadef8c21b5cb231L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/HelpViewActivity;->FH:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0xadef8c21b5cb231L

    move-object v2, p0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0, p1, p2, p3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;IILandroid/content/Intent;)V

    const v0, 0x123abc

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v0

    invoke-virtual {v0, p3}, Labcd/yk;->j6(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/activities/HelpViewActivity;->Hw:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public onBackPressed()V
    .registers 5

    const-wide v2, 0x3f5337492328d6a0L    # 0.0011728491050581394

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/HelpViewActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3f5337492328d6a0L    # 0.0011728491050581394

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const v0, 0x7f0800d1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/HelpViewActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x11437177256f6658L
    .end annotation

    const-wide v8, -0x76f210f2b393ff1L    # -5.704181941964326E272

    const/4 v0, 0x0

    const-wide v2, 0x16db5858385L

    :try_start_0
    const-string v4, "androidRelease"

    const-string v5, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v6, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v7, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/aide/ui/activities/HelpViewActivity;->FH:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x76f210f2b393ff1L    # -5.704181941964326E272

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/aide/ui/ThemedActionbarActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    invoke-static {}, Lcom/aide/ui/activities/o;->Mr()[Lcom/aide/ui/activities/o;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    invoke-static {}, Lcom/aide/ui/activities/o;->Mr()[Lcom/aide/ui/activities/o;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/aide/ui/activities/o;->Ws()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090009

    invoke-direct {v2, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    new-instance v1, Lcom/aide/ui/activities/B;

    invoke-direct {v1, p0}, Lcom/aide/ui/activities/B;-><init>(Lcom/aide/ui/activities/HelpViewActivity;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f0800d0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/g;->j6(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setProgressBarIndeterminate(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    const v0, 0x7f0800d1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/aide/ui/activities/HelpViewActivity;->v5:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/aide/ui/activities/HelpViewActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v0, p0, Lcom/aide/ui/activities/HelpViewActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/aide/ui/activities/HelpViewActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v0, p0, Lcom/aide/ui/activities/HelpViewActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    iget-object v0, p0, Lcom/aide/ui/activities/HelpViewActivity;->v5:Landroid/webkit/WebView;

    new-instance v1, Lcom/aide/ui/activities/C;

    invoke-direct {v1, p0}, Lcom/aide/ui/activities/C;-><init>(Lcom/aide/ui/activities/HelpViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-direct {p0}, Lcom/aide/ui/activities/HelpViewActivity;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/HelpViewActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x3aeff64cd4cf1259L
    .end annotation

    const-wide v2, -0x1ef8a5038a06ea70L    # -2.565283144059416E159

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/HelpViewActivity;->FH:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x1ef8a5038a06ea70L    # -2.565283144059416E159

    invoke-static {v4, v5, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0, p1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;I)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/activities/HelpViewActivity;->Hw:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    const-wide v2, 0x548075ebb5685163L    # 1.1251100080276964E99

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/HelpViewActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x548075ebb5685163L    # 1.1251100080276964E99

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/HelpViewActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 6

    const-wide v2, -0x17435a4fa0a8602dL    # -3.3459520364422265E196

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/HelpViewActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x17435a4fa0a8602dL    # -3.3459520364422265E196

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;Landroid/content/Intent;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/aide/ui/activities/HelpViewActivity;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/HelpViewActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const-wide v2, -0x1ff4b3476544f0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/HelpViewActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1ff4b3476544f0L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0800cf

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->u7()Labcd/Kj;

    move-result-object v0

    invoke-virtual {v0, p0}, Labcd/Kj;->j6(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/HelpViewActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method protected onPause()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x25c33f2ede0e074L
    .end annotation

    const-wide v2, 0x101b43b7aba03fd5L    # 4.390370951764528E-231

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/HelpViewActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x101b43b7aba03fd5L    # 4.390370951764528E-231

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {p0}, Lcom/aide/ui/U;->DW(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/HelpViewActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected onResume()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1d50930867fd650bL
    .end annotation

    const-wide v2, 0x9c9c594a16774c8L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/HelpViewActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x9c9c594a16774c8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/aide/ui/U;->j6(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/HelpViewActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected onStart()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2562f5abf0e824L
    .end annotation

    const-wide v2, 0x1240d723fb8431f9L    # 9.317628784217187E-221

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/HelpViewActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1240d723fb8431f9L    # 9.317628784217187E-221

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "Help"

    invoke-static {p0, v0}, Labcd/F;->DW(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/HelpViewActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected onStop()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1f58c097f4014f10L
    .end annotation

    const-wide v2, -0x1ee9b15ad8ae7003L    # -4.90030291681592E159

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/HelpViewActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1ee9b15ad8ae7003L    # -4.90030291681592E159

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "Help"

    invoke-static {p0, v0}, Labcd/F;->j6(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/HelpViewActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
