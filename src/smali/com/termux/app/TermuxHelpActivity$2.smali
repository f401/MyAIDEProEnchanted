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
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/termux/app/TermuxHelpActivity$2;->this$0:Lcom/termux/app/TermuxHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 79
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/termux/app/TermuxHelpActivity$2;->this$0:Lcom/termux/app/TermuxHelpActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 80
    const-string v1, "\u4fe1\u606f\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 81
    const/high16 v1, 0x7f110000

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 82
    const-string v1, "\u4e0b\u8f7d\u5c06\u8df3\u8f6c\u6d4f\u89c8\u5668\uff0c\u662f\u5426\u9009\u62e9\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/termux/app/TermuxHelpActivity$2$2;

    invoke-direct {v1, p0, p1}, Lcom/termux/app/TermuxHelpActivity$2$2;-><init>(Lcom/termux/app/TermuxHelpActivity$2;Ljava/lang/String;)V

    .line 83
    const-string v2, "\u662f"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/termux/app/TermuxHelpActivity$2$1;

    invoke-direct {v1, p0}, Lcom/termux/app/TermuxHelpActivity$2$1;-><init>(Lcom/termux/app/TermuxHelpActivity$2;)V

    .line 92
    const-string v2, "\u5426"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
