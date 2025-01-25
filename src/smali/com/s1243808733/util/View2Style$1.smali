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
    .registers 5
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
    .registers 4

    .line 42
    iget-object p1, p0, Lcom/s1243808733/util/View2Style$1;->val$et_input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 44
    :try_start_e
    iget-object v0, p0, Lcom/s1243808733/util/View2Style$1;->val$selectionContent:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/s1243808733/util/View2Style;->xml2Style(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/s1243808733/util/View2Style$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_51

    if-eqz v1, :cond_24

    const-string v1, "结果"

    goto :goto_26

    :cond_24
    const-string v1, "Result"

    :goto_26
    :try_start_26
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/util/View2Style$1$1;

    invoke-direct {v1, p0, p1}, Lcom/s1243808733/util/View2Style$1$1;-><init>(Lcom/s1243808733/util/View2Style$1;Ljava/lang/String;)V

    .line 48
    const p1, 0x1040001

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 55
    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 58
    invoke-static {p1}, Lcom/s1243808733/util/Utils;->setMessageIsSelectable(Landroid/app/AlertDialog;)V

    .line 59
    iget-object p1, p0, Lcom/s1243808733/util/View2Style$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_50
    .catchall {:try_start_26 .. :try_end_50} :catchall_51

    goto :goto_57

    :catchall_51
    move-exception p1

    .line 62
    iget-object v0, p0, Lcom/s1243808733/util/View2Style$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_57
    return-void
.end method
