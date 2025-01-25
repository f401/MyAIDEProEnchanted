.class Lcom/aide/ui/activities/C;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/activities/HelpViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field private FH:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = 0x2531bd6631932840L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/zip/ZipFile;",
            ">;"
        }
    .end annotation
.end field

.field final Hw:Lcom/aide/ui/activities/HelpViewActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x17e306c18b182e20L

    const-wide v2, 0x248c80a13839c790L

    const-class v4, Lcom/aide/ui/activities/C;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/activities/HelpViewActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/activities/C;->Hw:Lcom/aide/ui/activities/HelpViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/aide/ui/activities/C;->FH:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1647c573c029c4d8L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/C;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x2347ce248e5c1a70L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/activities/C;->Hw:Lcom/aide/ui/activities/HelpViewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/C;->DW:Z

    if-eqz v1, :cond_27

    const-wide v2, 0x2347ce248e5c1a70L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0xf60bff1a92e1ff1L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/C;->j6:Z

    if-eqz v0, :cond_10

    const-wide v1, 0x2927aed9cbba7a89L  # 1.969556814033766E-110

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    iget-object v0, p0, Lcom/aide/ui/activities/C;->Hw:Lcom/aide/ui/activities/HelpViewActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_19
    .catchall {:try_start_0 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/C;->DW:Z

    if-eqz v1, :cond_2c

    const-wide v2, 0x2927aed9cbba7a89L  # 1.969556814033766E-110

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2c
    throw v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1c9f722b1afce3d0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/C;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x2c3d6d14eb3ff0b8L  # 1.3776347867707567E-95

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_95

    :cond_c
    :try_start_c
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_87

    const-string v1, ".zip/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_87

    add-int/lit8 v1, v0, 0x4

    const/4 v2, 0x5

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/aide/ui/activities/C;->FH:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading zip file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/aide/ui/activities/C;->FH:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50
    iget-object v3, p0, Lcom/aide/ui/activities/C;->FH:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_87

    add-int/2addr v0, v2

    const/16 v2, 0x23

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const-string v3, "?"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-gez v2, :cond_72

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_76

    :cond_72
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_76
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_87

    new-instance v2, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v1, v1, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v2

    :cond_87
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_8b} :catch_8c
    .catchall {:try_start_c .. :try_end_8b} :catchall_95

    return-object p1

    :catch_8c
    move-exception v0

    :try_start_8d
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_94
    .catchall {:try_start_8d .. :try_end_94} :catchall_95

    return-object p1

    :catchall_95
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/C;->DW:Z

    if-eqz v1, :cond_a6

    const-wide v2, 0x2c3d6d14eb3ff0b8L  # 1.3776347867707567E-95

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a6
    throw v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xaea95b223834f0L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/C;->j6:Z

    if-eqz v0, :cond_c

    const-wide v0, 0x66eaa2bb93f0c40L

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_11

    const/4 p1, 0x1

    return p1

    :catchall_11
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/C;->DW:Z

    if-eqz v1, :cond_22

    const-wide v2, 0x66eaa2bb93f0c40L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v0
.end method
