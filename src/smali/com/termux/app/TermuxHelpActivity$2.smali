.class Lcom/termux/app/TermuxHelpActivity$2;
.super Ljava/lang/Object;
.source "TermuxHelpActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxHelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/app/TermuxHelpActivity;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxHelpActivity;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/termux/app/TermuxHelpActivity$2;->this$0:Lcom/termux/app/TermuxHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    .line 79
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object p3, p0, Lcom/termux/app/TermuxHelpActivity$2;->this$0:Lcom/termux/app/TermuxHelpActivity;

    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 80
    const-string p3, "信息提示"

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 81
    const/high16 p3, 0x7f110000

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 82
    const-string p3, "下载将跳转浏览器，是否选择？"

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/termux/app/TermuxHelpActivity$2$2;

    invoke-direct {p3, p0, p1}, Lcom/termux/app/TermuxHelpActivity$2$2;-><init>(Lcom/termux/app/TermuxHelpActivity$2;Ljava/lang/String;)V

    .line 83
    const-string p1, "是"

    invoke-virtual {p2, p1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/termux/app/TermuxHelpActivity$2$1;

    invoke-direct {p2, p0}, Lcom/termux/app/TermuxHelpActivity$2$1;-><init>(Lcom/termux/app/TermuxHelpActivity$2;)V

    .line 92
    const-string p3, "否"

    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
