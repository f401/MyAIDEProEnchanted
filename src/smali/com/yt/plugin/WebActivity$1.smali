.class Lcom/yt/plugin/WebActivity$1;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yt/plugin/WebActivity;->initWebSetting(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/yt/plugin/WebActivity;


# direct methods
.method constructor <init>(Lcom/yt/plugin/WebActivity;)V
    .registers 2

    .line 235
    iput-object p1, p0, Lcom/yt/plugin/WebActivity$1;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9

    .line 241
    const/4 p2, 0x0

    :try_start_1
    const-string p3, "网页%s请求下载"

    const-string p4, "Website %s requests download"

    invoke-static {p3, p4}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    new-instance p4, Ljava/net/URL;

    invoke-direct {p4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p4

    const/4 v1, 0x0

    aput-object p4, v0, v1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_1f

    goto :goto_21

    :catch_1f
    move-exception p3

    move-object p3, p2

    .line 244
    :goto_21
    new-instance p4, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/yt/plugin/WebActivity$1;->this$0:Lcom/yt/plugin/WebActivity;

    invoke-direct {p4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 245
    invoke-virtual {p4, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "size："

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yt/plugin/WebActivity$1;->this$0:Lcom/yt/plugin/WebActivity;

    .line 246
    invoke-static {v0, p5, p6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "\nurl="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    .line 251
    const-string p4, "浏览器下载"

    const-string p5, "Download"

    invoke-static {p4, p5}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/CharSequence;

    new-instance p5, Lcom/yt/plugin/WebActivity$1$1;

    invoke-direct {p5, p0, p1}, Lcom/yt/plugin/WebActivity$1$1;-><init>(Lcom/yt/plugin/WebActivity$1;Ljava/lang/String;)V

    invoke-virtual {p3, p4, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 259
    const/high16 p3, 0x1040000

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 260
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 261
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 262
    invoke-static {p1}, Lcom/s1243808733/util/Utils;->setMessageIsSelectable(Landroid/app/AlertDialog;)V

    return-void
.end method
