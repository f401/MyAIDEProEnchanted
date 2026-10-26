.class Lcom/s1243808733/util/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$activity:Landroid/content/Context;

.field final val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 805
    iput-object p1, p0, Lcom/s1243808733/util/Utils$1;->val$activity:Landroid/content/Context;

    iput-object p2, p0, Lcom/s1243808733/util/Utils$1;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 810
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/s1243808733/util/Utils$1;->val$activity:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 811
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u9519\u8bef\u8be6\u60c5"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/util/Utils$1;->val$e:Ljava/lang/Throwable;

    .line 812
    invoke-static {v1}, Lcom/s1243808733/util/Utils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/util/Utils$1$1;

    invoke-direct {v1, p0}, Lcom/s1243808733/util/Utils$1$1;-><init>(Lcom/s1243808733/util/Utils$1;)V

    .line 813
    const v2, 0x1040001

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 820
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 821
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 822
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 823
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->setMessageIsSelectable(Landroid/app/AlertDialog;)V

    return-void

    .line 811
    :cond_0
    const-string v0, "Error Detail"

    goto :goto_0
.end method
