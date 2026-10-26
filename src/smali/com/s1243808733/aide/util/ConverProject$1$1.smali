.class Lcom/s1243808733/aide/util/ConverProject$1$1;
.super Ljava/lang/Object;
.source "ConverProject.java"

# interfaces
.implements Lcom/s1243808733/aide/util/ConverProject$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/util/ConverProject$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private pg:Landroid/app/ProgressDialog;

.field final this$0:Lcom/s1243808733/aide/util/ConverProject$1;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/util/ConverProject$1;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/s1243808733/aide/util/ConverProject$1$1;->this$0:Lcom/s1243808733/aide/util/ConverProject$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/lang/String;)V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/s1243808733/aide/util/ConverProject$1$1;->pg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/aide/util/ConverProject$1$1;->pg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 54
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/s1243808733/aide/util/ConverProject$1$1;->this$0:Lcom/s1243808733/aide/util/ConverProject$1;

    iget-object v0, v0, Lcom/s1243808733/aide/util/ConverProject$1;->val$act:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u8f6c\u6362\u5b8c\u6210"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 57
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 55
    :cond_1
    const-string v0, "accomplish"

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .line 47
    iget-object v0, p0, Lcom/s1243808733/aide/util/ConverProject$1$1;->this$0:Lcom/s1243808733/aide/util/ConverProject$1;

    iget-object v1, v0, Lcom/s1243808733/aide/util/ConverProject$1;->val$act:Landroid/app/Activity;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u6b63\u5728\u8f6c\u6362..."

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/util/ConverProject$1$1;->pg:Landroid/app/ProgressDialog;

    return-void

    :cond_0
    const-string v0, "Converting..."

    goto :goto_0
.end method
