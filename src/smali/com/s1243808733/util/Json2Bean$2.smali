.class Lcom/s1243808733/util/Json2Bean$2;
.super Ljava/lang/Object;
.source "Json2Bean.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/Json2Bean;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$activity:Landroid/app/Activity;

.field final val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/Json2Bean$DialogView;Landroid/app/Activity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 232
    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$2;->val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

    iput-object p2, p0, Lcom/s1243808733/util/Json2Bean$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 236
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$2;->val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$DialogView;->input_json:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/s1243808733/util/Json2Bean$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 238
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    .line 239
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "压缩"

    goto :goto_22

    :cond_20
    const-string v2, "compress"

    :goto_22
    invoke-interface {p1, v2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/s1243808733/util/Json2Bean$2$1;

    invoke-direct {v3, p0, v0}, Lcom/s1243808733/util/Json2Bean$2$1;-><init>(Lcom/s1243808733/util/Json2Bean$2;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 256
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2

    if-eqz v2, :cond_37

    const-string v2, "格式化"

    goto :goto_39

    :cond_37
    const-string v2, "format"

    :goto_39
    invoke-interface {p1, v2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    new-instance v2, Lcom/s1243808733/util/Json2Bean$2$2;

    invoke-direct {v2, p0, v0}, Lcom/s1243808733/util/Json2Bean$2$2;-><init>(Lcom/s1243808733/util/Json2Bean$2;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 275
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
