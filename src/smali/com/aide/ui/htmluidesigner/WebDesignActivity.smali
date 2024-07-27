.class public Lcom/aide/ui/htmluidesigner/WebDesignActivity;
.super Landroid/app/Activity;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static FH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/ru;
        field = 0x5b4650911ae013e8L
    .end annotation
.end field


# instance fields
.field private Hw:Lcom/aide/ui/Ga;
    .annotation runtime Labcd/ru;
        field = 0x44ed020951f34ee8L
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = 0x449cebf67a5d900L
    .end annotation
.end field

.field private Zo:Landroid/media/SoundPool;
    .annotation runtime Labcd/ru;
        field = -0x25baa2e31ec44e9bL
    .end annotation
.end field

.field private gn:I
    .annotation runtime Labcd/ru;
        field = -0x1ab9be27716ae5c3L
    .end annotation
.end field

.field private u7:Lcom/aide/common/TextToSpeechHelper;
    .annotation runtime Labcd/ru;
        field = -0x123931986244cb4bL
    .end annotation
.end field

.field private v5:Landroid/webkit/WebView;
    .annotation runtime Labcd/ru;
        field = -0x1761aa043d2656afL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x308f47b38f2dc5f5L    # -4.726645632267079E74

    const-class v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x529e2a61261c66fdL    # -4.377550355778069E-90

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x529e2a61261c66fdL    # -4.377550355778069E-90

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/htmluidesigner/WebDesignActivity;)Lcom/aide/ui/Ga;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->Hw:Lcom/aide/ui/Ga;

    return-object v0
.end method

.method private FH()V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x27f56c3922abe831L
    .end annotation

    const-wide v6, 0x15990f8f3780ba88L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x15990f8f3780ba88L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->VH()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u8fde\u63a5\u5230\u540c\u4e00WiFi"

    :goto_0
    :try_start_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u7684\u5176\u4ed6\u8bbe\u5907\u548c\u8ba1\u7b97\u673a\u53ef\u8bbf\u95ee\u4e0b\u65b9\u94fe\u63a5\u9884\u89c8:"

    :goto_1
    :try_start_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V

    :goto_2
    return-void

    :cond_1
    new-instance v1, Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "\u5728\u540c\u4e00\u7f51\u7edc\u4e0b\u7684\u5176\u4ed6\u8bbe\u5907\u548c\u8ba1\u7b97\u673a\u4e0a\u6253\u5f00\u4e0b\u65b9\u94fe\u63a5\u5373\u53ef\u9884\u89c8\uff01"

    :goto_3
    :try_start_4
    invoke-direct {v1, v0, v2}, Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V

    goto :goto_2

    .line 99
    :catch_0
    move-exception v0

    goto :goto_2

    .line 4294967295
    :cond_2
    new-instance v1, Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "\u70b9\u51fb\u4e0b\u65b9\u94fe\u63a5\u53ef\u5728\u6d4f\u89c8\u5668\u4e2d\u6253\u5f00\u9884\u89c8:"

    :goto_4
    :try_start_5
    invoke-direct {v1, v0, v2}, Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 99
    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    const-string v0, "On other devices & computers connected to WiFi "

    goto :goto_0

    :cond_5
    const-string v0, " open this url in a browser:"

    goto :goto_1

    :cond_6
    const-string v0, "Click the url to open the website in a browser. Connect to WiFi to view it on other devices & computers!"

    goto :goto_3

    :cond_7
    const-string v0, "Click the url to open the website in a browser:"

    goto :goto_4
.end method

.method static synthetic FH(Lcom/aide/ui/htmluidesigner/WebDesignActivity;)Z
    .registers 2

    invoke-direct {p0}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->gn()Z

    move-result v0

    return v0
.end method

.method private Hw()Landroid/webkit/WebView;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x143cfda08b4223acL
    .end annotation

    const-wide v2, 0x1c80eb82b268188fL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1c80eb82b268188fL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/htmluidesigner/i;

    invoke-direct {v0, p0, p0}, Lcom/aide/ui/htmluidesigner/i;-><init>(Lcom/aide/ui/htmluidesigner/WebDesignActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    invoke-direct {p0}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->gn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;

    new-instance v1, Lcom/aide/ui/htmluidesigner/j;

    invoke-direct {v1, p0}, Lcom/aide/ui/htmluidesigner/j;-><init>(Lcom/aide/ui/htmluidesigner/WebDesignActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;

    new-instance v1, Lcom/aide/ui/htmluidesigner/q;

    invoke-direct {v1, p0}, Lcom/aide/ui/htmluidesigner/q;-><init>(Lcom/aide/ui/htmluidesigner/WebDesignActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-direct {p0}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->u7()V

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private static VH()Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x4f793d15ad17b2a4L
    .end annotation

    const-wide v4, -0x216a4aef06d783d9L    # -4.336940917953747E147

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x216a4aef06d783d9L    # -4.336940917953747E147

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "http://localhost:8099"

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private Zo()Z
    .registers 7
    .annotation runtime Labcd/su;
        method = 0xc15ae6a63224addL
    .end annotation

    const-wide v4, -0x1b6b07e18b5f762cL    # -3.3192475482133814E176

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1b6b07e18b5f762cL    # -3.3192475482133814E176

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_SPEAK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private gn()Z
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x1d17c157a63f1f8L
    .end annotation

    const-wide v4, 0x16402d8df29a8f4dL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x16402d8df29a8f4dL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_TRAINER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic j6()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->VH()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x2382a4a25e6e7a80L
    .end annotation

    const-wide v4, -0x6712859df74d7329L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x6712859df74d7329L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1fa3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private static j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x2b7494bca911140dL
    .end annotation

    const-wide v2, 0x19fcea54285db57cL

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x19fcea54285db57cL

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->VH()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v5, "/index.html"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v0, :cond_3

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16

    const-wide v10, 0x2882450fbb651c35L

    const/4 v7, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v0, :cond_0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x2882450fbb651c35L

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aide/ui/htmluidesigner/WebDesignActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_FILE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_ROOTDIR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Cl;->Zo()Lcom/aide/ui/trainer/g$a;

    move-result-object v1

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v2

    const-string v3, "EXTRA_TRAINER"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "EXTRA_SOUND"

    invoke-static {}, Lcom/aide/ui/aa;->J0()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "EXTRA_SPEAK"

    invoke-static {}, Lcom/aide/ui/aa;->J8()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "EXTRA_HEADER"

    invoke-virtual {v1}, Lcom/aide/ui/trainer/g$c;->J0()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_TRAINER_LOCALE"

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$d;->Zo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_TRAINER_OUTPUT"

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$d;->v5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_TRAINER_FAIL"

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$d;->u7()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_TRAINER_FAIL_BUTTON"

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Cl;->tp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_TRAINER_SUCCESS"

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$d;->we()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_TRAINER_FAIL_TITLE"

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Cl;->EQ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_TRAINER_SUCCESS_TITLE"

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Cl;->J0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_TRAINER_SUCCESS_BUTTON"

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Cl;->Ws()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_1
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v0, :cond_2

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v10

    move-object v4, v7

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private static j6(Landroid/content/Context;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x2fe7c8ebca793c80L
    .end annotation

    const-wide v4, -0x3da87a5aaa2432adL    # -4.041058118232082E11

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3da87a5aaa2432adL    # -4.041058118232082E11

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->j6:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->j6:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/aide/ui/htmluidesigner/h;

    invoke-direct {v1, p0}, Lcom/aide/ui/htmluidesigner/h;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/htmluidesigner/WebDesignActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH()V

    return-void
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 15
    .annotation runtime Labcd/su;
        method = 0x123a9d899d0e21a8L
    .end annotation

    const-wide v8, 0x8dfb968d21b6c55L    # 6.14915277545789E-266

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x8dfb968d21b6c55L    # 6.14915277545789E-266

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const v0, 0x7f0801a0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08019f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0801a2

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f08019e

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/aide/common/g;->gn(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {p0}, Lcom/aide/common/g;->u7(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {p0}, Lcom/aide/common/g;->v5(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const v1, 0x7f0801a1

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/aide/ui/htmluidesigner/f;

    invoke-direct {v2, p0, p4}, Lcom/aide/ui/htmluidesigner/f;-><init>(Lcom/aide/ui/htmluidesigner/WebDesignActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {p0}, Lcom/aide/common/g;->FH(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v0, :cond_2

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private u7()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0xed0eed27b3864bL
    .end annotation

    const-wide v4, -0x16754a2180d644b8L    # -2.555688701698388E200

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x16754a2180d644b8L    # -2.555688701698388E200

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_FILE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_ROOTDIR"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aide/ui/htmluidesigner/v;->j6(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v1, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private v5()Z
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x8165ca2792f368cL
    .end annotation

    const-wide v4, -0x1f6a95121f37434fL    # -1.8378515439255386E157

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1f6a95121f37434fL    # -1.8378515439255386E157

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_SOUND"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method protected DW()V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x34016c621f57b071L
    .end annotation

    const-wide v8, 0x192fcabae083c0d0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x192fcabae083c0d0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->Zo:Landroid/media/SoundPool;

    iget v1, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->VH:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_1
    invoke-direct {p0}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->Zo()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->u7:Lcom/aide/common/TextToSpeechHelper;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_TRAINER_LOCALE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_TRAINER_SUCCESS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aide/common/TextToSpeechHelper;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const v0, 0x7f0801a0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v0, Lcom/aide/ui/htmluidesigner/g;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x43160000    # 150.0f

    mul-float/2addr v1, v4

    neg-float v4, v1

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/aide/ui/htmluidesigner/g;-><init>(Lcom/aide/ui/htmluidesigner/WebDesignActivity;FFFFLandroid/view/View;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x34edcdb1c39c668L
    .end annotation

    const-wide v8, -0x1103a31a939d98bL

    const-wide v2, 0x16db5858385L

    :try_start_0
    const-string v4, "androidRelease"

    const-string v5, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v6, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v7, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1103a31a939d98bL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0e000c

    invoke-static {p0, v0}, Lcom/b;->light(Landroid/app/Activity;I)V

    invoke-static {}, Labcd/F;->DW()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/aide/ui/htmluidesigner/c;

    invoke-direct {v0, p0}, Lcom/aide/ui/htmluidesigner/c;-><init>(Lcom/aide/ui/htmluidesigner/WebDesignActivity;)V

    invoke-static {p0, v0}, Labcd/F;->j6(Landroid/content/Context;Labcd/G;)V

    :cond_1
    const v0, 0x7f0a004f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    new-instance v0, Lcom/aide/ui/Ga;

    const v1, 0x7f0801a3

    invoke-direct {v0, p0, v1}, Lcom/aide/ui/Ga;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->Hw:Lcom/aide/ui/Ga;

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->Hw:Lcom/aide/ui/Ga;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aide/ui/Ga;->j6(Z)V

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->Hw:Lcom/aide/ui/Ga;

    new-instance v1, Lcom/aide/ui/htmluidesigner/d;

    invoke-direct {v1, p0}, Lcom/aide/ui/htmluidesigner/d;-><init>(Lcom/aide/ui/htmluidesigner/WebDesignActivity;)V

    invoke-virtual {v0, v1}, Lcom/aide/ui/Ga;->j6(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->gn()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_TRAINER_SUCCESS_TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_TRAINER_SUCCESS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_TRAINER_SUCCESS_BUTTON"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/htmluidesigner/e;

    invoke-direct {v3, p0}, Lcom/aide/ui/htmluidesigner/e;-><init>(Lcom/aide/ui/htmluidesigner/WebDesignActivity;)V

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->Zo:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->Zo:Landroid/media/SoundPool;

    const v1, 0x7f0c0004

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->VH:I

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->Zo:Landroid/media/SoundPool;

    const v1, 0x7f0c0001

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->gn:I

    new-instance v0, Lcom/aide/common/TextToSpeechHelper;

    invoke-direct {v0, p0}, Lcom/aide/common/TextToSpeechHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->u7:Lcom/aide/common/TextToSpeechHelper;

    :cond_2
    invoke-direct {p0}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->Hw()Landroid/webkit/WebView;

    const v0, 0x7f08019d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->j6(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x16af29c37006b5f9L
    .end annotation

    const-wide v2, 0x187a35e64faf229cL    # 9.191762994495972E-191

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x187a35e64faf229cL    # 9.191762994495972E-191

    invoke-static {v4, v5, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0, p1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;I)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 6

    const-wide v2, -0x1bfed4d47e7b4827L    # -5.307905991456817E173

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1bfed4d47e7b4827L    # -5.307905991456817E173

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;Landroid/content/Intent;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->u7()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected onStart()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xfdffd48440cfd40L
    .end annotation

    const-wide v2, -0x39d2e4f9a570149L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x39d2e4f9a570149L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "Web Designer"

    invoke-static {p0, v0}, Labcd/F;->DW(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected onStop()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2424fbbfa17ed050L
    .end annotation

    const-wide v2, 0xb150c268146b00bL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xb150c268146b00bL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "Web Designer"

    invoke-static {p0, v0}, Labcd/F;->j6(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
