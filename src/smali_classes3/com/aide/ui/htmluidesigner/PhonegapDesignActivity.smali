.class public Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;
.super Landroid/app/Activity;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field private FH:Landroid/webkit/WebView;
    .annotation runtime Labcd/ru;
        field = -0x1d6697142103ee84L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;

    const-wide v1, -0x35018d07d587c48bL  # -1.8227776861077162E53

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x1c4307b4a284a5d1L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2606b25e25fd3d6bL
    .end annotation

    const-wide v0, 0x2ad28a7c3cafb307L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-nez v2, :cond_34

    iget-object v2, p0, Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;->FH:Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_URL"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_34

    iget-object v3, p0, Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;->FH:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_35

    :cond_34
    return-void

    :catchall_35
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;->DW:Z

    if-eqz v3, :cond_3d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3d
    throw v2
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x243fd9dbe96a4acL  # 9.552170006058254E-298

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "EXTRA_URL"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_35
    .catchall {:try_start_0 .. :try_end_35} :catchall_36

    return-void

    :catchall_36
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;->DW:Z

    if-eqz v1, :cond_48

    const-wide v2, 0x243fd9dbe96a4acL  # 9.552170006058254E-298

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_48
    throw v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0xaef0a62a12ba3e3L
    .end annotation

    const-wide v1, 0x16db5858385L

    const-wide v7, 0x74738de804310e5L

    :try_start_a
    const-string v3, "androidRelease"

    const-string v4, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v5, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v6, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;->j6:Z

    if-eqz v0, :cond_1d

    invoke-static {v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Labcd/F;->DW()Z

    move-result v0

    if-nez v0, :cond_2e

    new-instance v0, Lcom/aide/ui/htmluidesigner/a;

    invoke-direct {v0, p0}, Lcom/aide/ui/htmluidesigner/a;-><init>(Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;)V

    invoke-static {p0, v0}, Labcd/F;->j6(Landroid/content/Context;Labcd/G;)V

    :cond_2e
    new-instance v0, Lcom/s1243808733/widget/CustomWebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;->FH:Landroid/webkit/WebView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;->FH:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;->FH:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;->FH:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;->FH:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;->FH:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;->j6()V
    :try_end_66
    .catchall {:try_start_a .. :try_end_66} :catchall_67

    return-void

    :catchall_67
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;->DW:Z

    if-eqz v1, :cond_6f

    invoke-static {v0, v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6f
    throw v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 6

    const-wide v0, -0x2530594620369e5bL  # -2.7424539815334923E129

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;Landroid/content/Intent;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;->j6()V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method protected onStart()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x25e534a881698429L
    .end annotation

    const-wide v0, -0x230a0747e9489b05L  # -6.541221844338728E139

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v2, "PhoneGap Designer"

    invoke-static {p0, v2}, Labcd/F;->DW(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method protected onStop()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4450667af1b0911L
    .end annotation

    const-wide v0, -0x6b09f8b4a91a08dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v2, "PhoneGap Designer"

    invoke-static {p0, v2}, Labcd/F;->j6(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/htmluidesigner/PhonegapDesignActivity;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method
