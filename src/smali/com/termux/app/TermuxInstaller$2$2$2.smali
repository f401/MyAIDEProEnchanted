.class Lcom/termux/app/TermuxInstaller$2$2$2;
.super Ljava/lang/Object;
.source "TermuxInstaller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxInstaller$2$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/termux/app/TermuxInstaller$2$2;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxInstaller$2$2;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/termux/app/TermuxInstaller$2$2$2;->this$1:Lcom/termux/app/TermuxInstaller$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 156
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 157
    iget-object p1, p0, Lcom/termux/app/TermuxInstaller$2$2$2;->this$1:Lcom/termux/app/TermuxInstaller$2$2;

    iget-object p1, p1, Lcom/termux/app/TermuxInstaller$2$2;->this$0:Lcom/termux/app/TermuxInstaller$2;

    iget-object p1, p1, Lcom/termux/app/TermuxInstaller$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
