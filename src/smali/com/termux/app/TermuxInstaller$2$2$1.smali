.class Lcom/termux/app/TermuxInstaller$2$2$1;
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
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/termux/app/TermuxInstaller$2$2$1;->this$1:Lcom/termux/app/TermuxInstaller$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 162
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 163
    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$2$2$1;->this$1:Lcom/termux/app/TermuxInstaller$2$2;

    iget-object v0, v0, Lcom/termux/app/TermuxInstaller$2$2;->this$0:Lcom/termux/app/TermuxInstaller$2;

    iget-object v0, v0, Lcom/termux/app/TermuxInstaller$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/termux/app/TermuxInstaller$2$2$1;->this$1:Lcom/termux/app/TermuxInstaller$2$2;

    iget-object v1, v1, Lcom/termux/app/TermuxInstaller$2$2;->this$0:Lcom/termux/app/TermuxInstaller$2;

    iget-object v1, v1, Lcom/termux/app/TermuxInstaller$2;->val$whenDone:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/termux/app/TermuxInstaller;->setupIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method
