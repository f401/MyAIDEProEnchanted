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
    .locals 0
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
    .locals 5

    .line 236
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$2;->val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$DialogView;->input_json:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    new-instance v2, Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 238
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 239
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u538b\u7f29"

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v4, Lcom/s1243808733/util/Json2Bean$2$1;

    invoke-direct {v4, p0, v1}, Lcom/s1243808733/util/Json2Bean$2$1;-><init>(Lcom/s1243808733/util/Json2Bean$2;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 256
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u683c\u5f0f\u5316"

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v3, Lcom/s1243808733/util/Json2Bean$2$2;

    invoke-direct {v3, p0, v1}, Lcom/s1243808733/util/Json2Bean$2$2;-><init>(Lcom/s1243808733/util/Json2Bean$2;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 275
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V

    return-void

    .line 239
    :cond_0
    const-string v0, "compress"

    goto :goto_0

    .line 256
    :cond_1
    const-string v0, "format"

    goto :goto_1
.end method
