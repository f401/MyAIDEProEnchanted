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
    .registers 3

    const-class v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;

    const-wide v1, -0x308f47b38f2dc5f5L  # -4.726645632267079E74

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x529e2a61261c66fdL  # -4.377550355778069E-90

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method static synthetic DW(Lcom/aide/ui/htmluidesigner/WebDesignActivity;)Lcom/aide/ui/Ga;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->Hw:Lcom/aide/ui/Ga;

    return-object p0
.end method

.method private FH()V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x27f56c3922abe831L
    .end annotation

    const-wide v0, 0x15990f8f3780ba88L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_b3

    :cond_c
    :try_start_c
    invoke-static {}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->VH()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a0

    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    if-eqz v4, :cond_8c

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v5

    if-eqz v5, :cond_8c

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v4

    invoke-static {v4}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v6
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_66} :catch_b1
    .catchall {:try_start_c .. :try_end_66} :catchall_b3

    if-eqz v6, :cond_6b

    const-string v6, "连接到同一WiFi"

    goto :goto_6d

    .line 99
    :cond_6b
    const-string v6, "On other devices & computers connected to WiFi "

    .line 0
    :goto_6d
    :try_start_6d
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v5
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_77} :catch_b1
    .catchall {:try_start_6d .. :try_end_77} :catchall_b3

    if-eqz v5, :cond_7c

    const-string v5, "的其他设备和计算机可访问下方链接预览:"

    goto :goto_7e

    .line 99
    :cond_7c
    const-string v5, " open this url in a browser:"

    .line 0
    :goto_7e
    :try_start_7e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V

    goto :goto_b2

    :cond_8c
    new-instance v2, Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_92} :catch_b1
    .catchall {:try_start_7e .. :try_end_92} :catchall_b3

    if-eqz v4, :cond_97

    const-string v4, "在同一网络下的其他设备和计算机上打开下方链接即可预览！"

    goto :goto_99

    .line 99
    :cond_97
    const-string v4, "Click the url to open the website in a browser. Connect to WiFi to view it on other devices & computers!"

    .line 0
    :goto_99
    :try_start_99
    invoke-direct {v2, v4, v3}, Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9c
    invoke-static {p0, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V

    goto :goto_b2

    :cond_a0
    new-instance v2, Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a6} :catch_b1
    .catchall {:try_start_99 .. :try_end_a6} :catchall_b3

    if-eqz v4, :cond_ab

    const-string v4, "点击下方链接可在浏览器中打开预览:"

    goto :goto_ad

    .line 99
    :cond_ab
    const-string v4, "Click the url to open the website in a browser:"

    .line 0
    :goto_ad
    :try_start_ad
    invoke-direct {v2, v4, v3}, Lcom/aide/ui/htmluidesigner/WebDesignActivity$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b0} :catch_b1
    .catchall {:try_start_ad .. :try_end_b0} :catchall_b3

    goto :goto_9c

    .line 99
    :catch_b1
    move-exception v0

    .line 0
    :goto_b2
    return-void

    .line 99
    :catchall_b3
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v3, :cond_bb

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_bb
    goto :goto_bd

    :goto_bc
    throw v2

    :goto_bd
    goto :goto_bc
.end method

.method static synthetic FH(Lcom/aide/ui/htmluidesigner/WebDesignActivity;)Z
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->gn()Z

    move-result p0

    return p0
.end method

.method private Hw()Landroid/webkit/WebView;
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x143cfda08b4223acL
    .end annotation

    const-wide v0, 0x1c80eb82b268188fL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/htmluidesigner/i;

    invoke-direct {v2, p0, p0}, Lcom/aide/ui/htmluidesigner/i;-><init>(Lcom/aide/ui/htmluidesigner/WebDesignActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setInitialScale(I)V

    iget-object v2, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v2, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v2, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    iget-object v2, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    invoke-direct {p0}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->gn()Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    :cond_4d
    iget-object v2, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;

    new-instance v3, Lcom/aide/ui/htmluidesigner/j;

    invoke-direct {v3, p0}, Lcom/aide/ui/htmluidesigner/j;-><init>(Lcom/aide/ui/htmluidesigner/WebDesignActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v2, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;

    new-instance v3, Lcom/aide/ui/htmluidesigner/q;

    invoke-direct {v3, p0}, Lcom/aide/ui/htmluidesigner/q;-><init>(Lcom/aide/ui/htmluidesigner/WebDesignActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-direct {p0}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->u7()V

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;
    :try_end_6c
    .catchall {:try_start_5 .. :try_end_6c} :catchall_6d

    return-object v0

    :catchall_6d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v3, :cond_75

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_75
    throw v2
.end method

.method private static VH()Ljava/lang/String;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4f793d15ad17b2a4L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x216a4aef06d783d9L  # -4.336940917953747E147

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_10

    :cond_d
    const-string v0, "http://localhost:8099"

    return-object v0

    :catchall_10
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v4, :cond_18

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v3
.end method

.method private Zo()Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xc15ae6a63224addL
    .end annotation

    const-wide v0, -0x1b6b07e18b5f762cL  # -3.3192475482133814E176

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_SPEAK"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return v0

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method private gn()Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x1d17c157a63f1f8L
    .end annotation

    const-wide v0, 0x16402d8df29a8f4dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_TRAINER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return v0

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method static synthetic j6()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->VH()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x2382a4a25e6e7a80L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x6712859df74d7329L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x1fa3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_29

    return-object p0

    :catchall_29
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v4, :cond_31

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v3
.end method

.method private static j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x2b7494bca911140dL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x19fcea54285db57cL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->VH()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_4f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/index.html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    return-object v0

    :cond_3f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4e
    .catchall {:try_start_0 .. :try_end_4e} :catchall_50

    return-object p0

    :cond_4f
    return-object v0

    :catchall_50
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v1, :cond_61

    const-wide v2, 0x19fcea54285db57cL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_61
    throw v0
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v0, :cond_15

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x2882450fbb651c35L

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_15
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aide/ui/htmluidesigner/WebDesignActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_FILE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_ROOTDIR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_bb

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v1

    if-eqz v1, :cond_bb

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

    goto :goto_cd

    :cond_bb
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_cd
    .catchall {:try_start_0 .. :try_end_cd} :catchall_ce

    :goto_cd
    return-void

    :catchall_ce
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v1, :cond_e5

    const-wide v2, 0x2882450fbb651c35L

    const/4 v4, 0x0

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p3}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e5
    throw v0
.end method

.method private static j6(Landroid/content/Context;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x2fe7c8ebca793c80L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x3da87a5aaa2432adL  # -4.041058118232082E11

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    sget-boolean v3, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->j6:Z

    if-nez v3, :cond_21

    const/4 v3, 0x1

    sput-boolean v3, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->j6:Z

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/aide/ui/htmluidesigner/h;

    invoke-direct {v4, p0}, Lcom/aide/ui/htmluidesigner/h;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_22

    :cond_21
    return-void

    :catchall_22
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v4, :cond_2a

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v3
.end method

.method static synthetic j6(Lcom/aide/ui/htmluidesigner/WebDesignActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH()V

    return-void
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x123a9d899d0e21a8L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x8dfb968d21b6c55L  # 6.14915277545789E-266

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const v0, 0x7f0801a0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f08019f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0801a2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f08019e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_43

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4a

    :cond_43
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4a
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/aide/common/g;->gn(Landroid/content/Context;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {p0}, Lcom/aide/common/g;->u7(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {p0}, Lcom/aide/common/g;->v5(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const v2, 0x7f0801a1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/htmluidesigner/f;

    invoke-direct {v3, p0, p4}, Lcom/aide/ui/htmluidesigner/f;-><init>(Lcom/aide/ui/htmluidesigner/WebDesignActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {p0}, Lcom/aide/common/g;->FH(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V
    :try_end_8d
    .catchall {:try_start_0 .. :try_end_8d} :catchall_8e

    return-void

    :catchall_8e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v1, :cond_a1

    const-wide v2, 0x8dfb968d21b6c55L  # 6.14915277545789E-266

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a1
    throw v0
.end method

.method private u7()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0xed0eed27b3864bL
    .end annotation

    const-wide v0, -0x16754a2180d644b8L  # -2.555688701698388E200

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-nez v2, :cond_47

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_FILE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "EXTRA_ROOTDIR"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/ui/htmluidesigner/v;->j6(Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v3, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_48

    :cond_47
    return-void

    :catchall_48
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v3, :cond_50

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_50
    throw v2
.end method

.method private v5()Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x8165ca2792f368cL
    .end annotation

    const-wide v0, -0x1f6a95121f37434fL  # -1.8378515439255386E157

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_SOUND"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return v0

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method


# virtual methods
.method protected DW()V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x34016c621f57b071L
    .end annotation

    const-wide v0, 0x192fcabae083c0d0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->v5()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v3, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->Zo:Landroid/media/SoundPool;

    iget v4, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->VH:I

    const/high16 v5, 0x3f800000  # 1.0f

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_21
    invoke-direct {p0}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->Zo()Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->u7:Lcom/aide/common/TextToSpeechHelper;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "EXTRA_TRAINER_LOCALE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_TRAINER_SUCCESS"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/aide/common/TextToSpeechHelper;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    const v2, 0x7f0801a0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    new-instance v10, Lcom/aide/ui/htmluidesigner/g;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v4, 0x43160000  # 150.0f

    mul-float v3, v3, v4

    neg-float v7, v3

    const/4 v8, 0x0

    move-object v3, v10

    move-object v4, p0

    move-object v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/aide/ui/htmluidesigner/g;-><init>(Lcom/aide/ui/htmluidesigner/WebDesignActivity;FFFFLandroid/view/View;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v10, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v2, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_6d
    .catchall {:try_start_5 .. :try_end_6d} :catchall_6e

    return-void

    :catchall_6e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v3, :cond_76

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_76
    throw v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x34edcdb1c39c668L
    .end annotation

    const-wide v1, 0x16db5858385L

    const-wide v7, -0x1103a31a939d98bL

    :try_start_a
    const-string v3, "androidRelease"

    const-string v4, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v5, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v6, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v0, :cond_1d

    invoke-static {v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0e000c

    invoke-static {p0, v0}, Lcom/b;->light(Landroid/app/Activity;I)V

    invoke-static {}, Labcd/F;->DW()Z

    move-result v0

    if-nez v0, :cond_34

    new-instance v0, Lcom/aide/ui/htmluidesigner/c;

    invoke-direct {v0, p0}, Lcom/aide/ui/htmluidesigner/c;-><init>(Lcom/aide/ui/htmluidesigner/WebDesignActivity;)V

    invoke-static {p0, v0}, Labcd/F;->j6(Landroid/content/Context;Labcd/G;)V

    :cond_34
    const v0, 0x7f0a004f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    new-instance v0, Lcom/aide/ui/Ga;

    const v1, 0x7f0801a3

    invoke-direct {v0, p0, v1}, Lcom/aide/ui/Ga;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->Hw:Lcom/aide/ui/Ga;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aide/ui/Ga;->j6(Z)V

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->Hw:Lcom/aide/ui/Ga;

    new-instance v2, Lcom/aide/ui/htmluidesigner/d;

    invoke-direct {v2, p0}, Lcom/aide/ui/htmluidesigner/d;-><init>(Lcom/aide/ui/htmluidesigner/WebDesignActivity;)V

    invoke-virtual {v0, v2}, Lcom/aide/ui/Ga;->j6(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->gn()Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "EXTRA_TRAINER_SUCCESS_TITLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_TRAINER_SUCCESS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "EXTRA_TRAINER_SUCCESS_BUTTON"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/htmluidesigner/e;

    invoke-direct {v4, p0}, Lcom/aide/ui/htmluidesigner/e;-><init>(Lcom/aide/ui/htmluidesigner/WebDesignActivity;)V

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance v0, Landroid/media/SoundPool;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->Zo:Landroid/media/SoundPool;

    const v2, 0x7f0c0004

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->VH:I

    iget-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->Zo:Landroid/media/SoundPool;

    const v2, 0x7f0c0001

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->gn:I

    new-instance v0, Lcom/aide/common/TextToSpeechHelper;

    invoke-direct {v0, p0}, Lcom/aide/common/TextToSpeechHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->u7:Lcom/aide/common/TextToSpeechHelper;

    :cond_a2
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
    :try_end_ba
    .catchall {:try_start_a .. :try_end_ba} :catchall_bb

    return-void

    :catchall_bb
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v1, :cond_c3

    invoke-static {v0, v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c3
    throw v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x16af29c37006b5f9L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x187a35e64faf229cL  # 9.191762994495972E-191

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {p0, p1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object p1
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-object p1

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v1, :cond_2b

    const-wide v2, 0x187a35e64faf229cL  # 9.191762994495972E-191

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 6

    const-wide v0, -0x1bfed4d47e7b4827L  # -5.307905991456817E173

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;Landroid/content/Intent;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->u7()V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method protected onStart()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xfdffd48440cfd40L
    .end annotation

    const-wide v0, -0x39d2e4f9a570149L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v2, "Web Designer"

    invoke-static {p0, v2}, Labcd/F;->DW(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method protected onStop()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2424fbbfa17ed050L
    .end annotation

    const-wide v0, 0xb150c268146b00bL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->DW:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v2, "Web Designer"

    invoke-static {p0, v2}, Labcd/F;->j6(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/htmluidesigner/WebDesignActivity;->FH:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method
