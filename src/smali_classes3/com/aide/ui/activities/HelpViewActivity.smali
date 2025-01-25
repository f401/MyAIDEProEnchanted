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
    .registers 3

    const-class v0, Lcom/aide/ui/activities/HelpViewActivity;

    const-wide v1, 0x17e306c18b182e20L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x200bd495a2b58ac9L  # -1.6901875756555627E154

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/activities/HelpViewActivity;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Lcom/aide/ui/ThemedActionbarActivity;-><init>()V

    const/4 v3, -0x1

    iput v3, p0, Lcom/aide/ui/activities/HelpViewActivity;->Zo:I
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    return-void

    :catchall_14
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/activities/HelpViewActivity;->Hw:Z

    if-eqz v4, :cond_1c

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v3
.end method

.method static synthetic DW(Lcom/aide/ui/activities/HelpViewActivity;)Landroid/webkit/WebView;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/activities/HelpViewActivity;->v5:Landroid/webkit/WebView;

    return-object p0
.end method

.method private DW()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x393cf8b4c13a1841L
    .end annotation

    const-wide v0, -0x602b20c9207c000L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/HelpViewActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1a

    return-void

    :cond_1a
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_URL"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_77

    :try_start_28
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "EXTRA_CAT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/ui/activities/o;->valueOf(Ljava/lang/String;)Lcom/aide/ui/activities/o;

    move-result-object v3
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3a} :catch_3b
    .catchall {:try_start_28 .. :try_end_3a} :catchall_77

    goto :goto_3e

    :catch_3b
    move-exception v3

    :try_start_3c
    sget-object v3, Lcom/aide/ui/activities/o;->j6:Lcom/aide/ui/activities/o;

    :goto_3e
    invoke-virtual {v3}, Lcom/aide/ui/activities/o;->U2()I

    move-result v4

    iput v4, p0, Lcom/aide/ui/activities/HelpViewActivity;->Zo:I

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v3}, Lcom/aide/ui/activities/o;->U2()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    iget-object v4, p0, Lcom/aide/ui/activities/HelpViewActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v3}, Lcom/aide/ui/activities/o;->a8()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    if-eqz v2, :cond_68

    invoke-virtual {v3, v2}, Lcom/aide/ui/activities/o;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/activities/HelpViewActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_71

    :cond_68
    iget-object v2, p0, Lcom/aide/ui/activities/HelpViewActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v3}, Lcom/aide/ui/activities/o;->j3()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_71
    iget-object v2, p0, Lcom/aide/ui/activities/HelpViewActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearHistory()V
    :try_end_76
    .catchall {:try_start_3c .. :try_end_76} :catchall_77

    return-void

    :catchall_77
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/HelpViewActivity;->Hw:Z

    if-eqz v3, :cond_7f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_7f
    throw v2
.end method

.method static synthetic j6(Lcom/aide/ui/activities/HelpViewActivity;)I
    .registers 1

    iget p0, p0, Lcom/aide/ui/activities/HelpViewActivity;->Zo:I

    return p0
.end method

.method static synthetic j6(Lcom/aide/ui/activities/HelpViewActivity;I)I
    .registers 2

    iput p1, p0, Lcom/aide/ui/activities/HelpViewActivity;->Zo:I

    return p1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x4f34067c582f0b74L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/HelpViewActivity;->FH:Z

    if-eqz v0, :cond_18

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xadef8c21b5cb231L

    move-object v3, p0

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-static {p0, p1, p2, p3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;IILandroid/content/Intent;)V

    const v0, 0x123abc

    if-ne p1, v0, :cond_27

    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v0

    invoke-virtual {v0, p3}, Labcd/yk;->j6(Landroid/content/Intent;)V
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    :cond_27
    return-void

    :catchall_28
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/HelpViewActivity;->Hw:Z

    if-eqz v1, :cond_42

    const-wide v2, 0xadef8c21b5cb231L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v0
.end method

.method public onBackPressed()V
    .registers 5

    const-wide v0, 0x3f5337492328d6a0L  # 0.0011728491050581394

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/HelpViewActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const v2, 0x7f0800d1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v2}, Landroid/webkit/WebView;->goBack()V

    goto :goto_22

    :cond_1f
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    :goto_22
    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/HelpViewActivity;->Hw:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x11437177256f6658L
    .end annotation

    const-wide v1, 0x16db5858385L

    const-wide v7, -0x76f210f2b393ff1L  # -5.704181941964326E272

    :try_start_a
    const-string v3, "androidRelease"

    const-string v4, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v5, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v6, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/ui/activities/HelpViewActivity;->FH:Z

    if-eqz v0, :cond_1d

    invoke-static {v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-super {p0, p1}, Lcom/aide/ui/ThemedActionbarActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    invoke-static {}, Lcom/aide/ui/activities/o;->Mr()[Lcom/aide/ui/activities/o;

    move-result-object v0

    array-length v0, v0

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_3c
    if-ge v4, v0, :cond_4d

    invoke-static {}, Lcom/aide/ui/activities/o;->Mr()[Lcom/aide/ui/activities/o;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/aide/ui/activities/o;->Ws()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    :cond_4d
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090009

    invoke-direct {v4, p0, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    new-instance v3, Lcom/aide/ui/activities/B;

    invoke-direct {v3, p0}, Lcom/aide/ui/activities/B;-><init>(Lcom/aide/ui/activities/HelpViewActivity;)V

    invoke-virtual {v0, v4, v3}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f0800d0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/g;->j6(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setProgressBarIndeterminate(Z)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    const v0, 0x7f0800d1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/aide/ui/activities/HelpViewActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    iget-object v0, p0, Lcom/aide/ui/activities/HelpViewActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/aide/ui/activities/HelpViewActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

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
    :try_end_bf
    .catchall {:try_start_a .. :try_end_bf} :catchall_c0

    return-void

    :catchall_c0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/HelpViewActivity;->Hw:Z

    if-eqz v1, :cond_c8

    invoke-static {v0, v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c8
    goto :goto_ca

    :goto_c9
    throw v0

    :goto_ca
    goto :goto_c9
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x3aeff64cd4cf1259L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/HelpViewActivity;->FH:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1ef8a5038a06ea70L  # -2.565283144059416E159

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {p0, p1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object p1
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-object p1

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/HelpViewActivity;->Hw:Z

    if-eqz v1, :cond_2b

    const-wide v2, -0x1ef8a5038a06ea70L  # -2.565283144059416E159

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    const-wide v0, 0x548075ebb5685163L  # 1.1251100080276964E99

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/HelpViewActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0b0007

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_18

    const/4 p1, 0x1

    return p1

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/HelpViewActivity;->Hw:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 6

    const-wide v0, -0x17435a4fa0a8602dL  # -3.3459520364422265E196

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/HelpViewActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;Landroid/content/Intent;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/aide/ui/activities/HelpViewActivity;->DW()V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/HelpViewActivity;->Hw:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const-wide v0, -0x1ff4b3476544f0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/HelpViewActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0800cf

    if-ne v2, v3, :cond_1c

    invoke-static {}, Lcom/aide/ui/U;->u7()Labcd/Kj;

    move-result-object v2

    invoke-virtual {v2, p0}, Labcd/Kj;->j6(Landroid/app/Activity;)V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1e

    :cond_1c
    const/4 p1, 0x1

    return p1

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/HelpViewActivity;->Hw:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method protected onPause()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x25c33f2ede0e074L
    .end annotation

    const-wide v0, 0x101b43b7aba03fd5L  # 4.390370951764528E-231

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/HelpViewActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {p0}, Lcom/aide/ui/U;->DW(Landroid/app/Activity;)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/HelpViewActivity;->Hw:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method protected onResume()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1d50930867fd650bL
    .end annotation

    const-wide v0, 0x9c9c594a16774c8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/HelpViewActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/aide/ui/U;->j6(Landroid/app/Activity;)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/HelpViewActivity;->Hw:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method protected onStart()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2562f5abf0e824L
    .end annotation

    const-wide v0, 0x1240d723fb8431f9L  # 9.317628784217187E-221

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/HelpViewActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v2, "Help"

    invoke-static {p0, v2}, Labcd/F;->DW(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/HelpViewActivity;->Hw:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method protected onStop()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1f58c097f4014f10L
    .end annotation

    const-wide v0, -0x1ee9b15ad8ae7003L  # -4.90030291681592E159

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/HelpViewActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v2, "Help"

    invoke-static {p0, v2}, Labcd/F;->j6(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/HelpViewActivity;->Hw:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method
