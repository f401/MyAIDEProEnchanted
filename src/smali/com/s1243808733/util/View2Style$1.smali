.class Lcom/s1243808733/util/View2Style$1;
.super Ljava/lang/Object;
.source "View2Style.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/View2Style;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$activity:Landroid/app/Activity;

.field final val$dialog:Landroid/app/AlertDialog;

.field final val$et_input:Landroid/widget/EditText;

.field final val$selectionContent:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Ljava/lang/String;Landroid/app/Activity;Landroid/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/s1243808733/util/View2Style$1;->val$et_input:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/s1243808733/util/View2Style$1;->val$selectionContent:Ljava/lang/String;

    iput-object p3, p0, Lcom/s1243808733/util/View2Style$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/s1243808733/util/View2Style$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/s1243808733/util/View2Style$1;->val$et_input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/s1243808733/util/View2Style$1;->val$selectionContent:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/s1243808733/util/View2Style;->xml2Style(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/s1243808733/util/View2Style$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u7ed3\u679c"

    :goto_0
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/s1243808733/util/View2Style$1$1;

    invoke-direct {v2, p0, v1}, Lcom/s1243808733/util/View2Style$1$1;-><init>(Lcom/s1243808733/util/View2Style$1;Ljava/lang/String;)V

    .line 48
    const v1, 0x1040001

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 55
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 58
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->setMessageIsSelectable(Landroid/app/AlertDialog;)V

    .line 59
    iget-object v0, p0, Lcom/s1243808733/util/View2Style$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :goto_1
    return-void

    .line 46
    :cond_0
    const-string v0, "Result"

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    .line 62
    iget-object v1, p0, Lcom/s1243808733/util/View2Style$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
