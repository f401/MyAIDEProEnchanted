.class Lcom/s1243808733/util/Json2Bean$1$3;
.super Ljava/lang/Object;
.source "Json2Bean.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/Json2Bean$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/util/Json2Bean$1;

.field final val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/Json2Bean$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$1$3;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iput-object p2, p0, Lcom/s1243808733/util/Json2Bean$1$3;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 197
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/s1243808733/util/Json2Bean$1$3;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iget-object v1, v1, Lcom/s1243808733/util/Json2Bean$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 198
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/util/Json2Bean$1$3;->val$result:Ljava/lang/String;

    .line 199
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/util/Json2Bean$1$3$1;

    invoke-direct {v1, p0}, Lcom/s1243808733/util/Json2Bean$1$3$1;-><init>(Lcom/s1243808733/util/Json2Bean$1$3;)V

    .line 200
    const v2, 0x1040001

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 207
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 211
    iget-object v1, p0, Lcom/s1243808733/util/Json2Bean$1$3;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iget-object v1, v1, Lcom/s1243808733/util/Json2Bean$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->hide()V

    .line 212
    new-instance v1, Lcom/s1243808733/util/Json2Bean$1$3$2;

    invoke-direct {v1, p0}, Lcom/s1243808733/util/Json2Bean$1$3$2;-><init>(Lcom/s1243808733/util/Json2Bean$1$3;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v0, 0x0

    return v0
.end method
