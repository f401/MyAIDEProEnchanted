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
    .registers 3
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
    .registers 4

    .line 810
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/s1243808733/util/Utils$1;->val$activity:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 811
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p2

    if-eqz p2, :cond_10

    const-string p2, "错误详情"

    goto :goto_12

    :cond_10
    const-string p2, "Error Detail"

    :goto_12
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/s1243808733/util/Utils$1;->val$e:Ljava/lang/Throwable;

    .line 812
    invoke-static {p2}, Lcom/s1243808733/util/Utils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/s1243808733/util/Utils$1$1;

    invoke-direct {p2, p0}, Lcom/s1243808733/util/Utils$1$1;-><init>(Lcom/s1243808733/util/Utils$1;)V

    .line 813
    const v0, 0x1040001

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 820
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p2

    const/high16 v0, 0x1040000

    invoke-virtual {p2, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 821
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 822
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 823
    invoke-static {p1}, Lcom/s1243808733/util/Utils;->setMessageIsSelectable(Landroid/app/AlertDialog;)V

    return-void
.end method
