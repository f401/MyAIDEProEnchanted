.class Lcom/s1243808733/util/Json2Bean$100000012;
.super Ljava/lang/Object;
.source "Json2Bean.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final val$activity:Landroid/app/Activity;

.field private final val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/Json2Bean$DialogView;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$100000012;->val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

    iput-object p2, p0, Lcom/s1243808733/util/Json2Bean$100000012;->val$activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000012;->val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$DialogView;->input_json:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    new-instance v2, Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000012;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 242
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 243
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u538b\u7f29"

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v4, Lcom/s1243808733/util/Json2Bean$100000012$100000010;

    iget-object v5, p0, Lcom/s1243808733/util/Json2Bean$100000012;->val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

    iget-object v6, p0, Lcom/s1243808733/util/Json2Bean$100000012;->val$activity:Landroid/app/Activity;

    invoke-direct {v4, p0, v1, v5, v6}, Lcom/s1243808733/util/Json2Bean$100000012$100000010;-><init>(Lcom/s1243808733/util/Json2Bean$100000012;Ljava/lang/String;Lcom/s1243808733/util/Json2Bean$DialogView;Landroid/app/Activity;)V

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 260
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u683c\u5f0f\u5316"

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v3, Lcom/s1243808733/util/Json2Bean$100000012$100000011;

    iget-object v4, p0, Lcom/s1243808733/util/Json2Bean$100000012;->val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

    iget-object v5, p0, Lcom/s1243808733/util/Json2Bean$100000012;->val$activity:Landroid/app/Activity;

    invoke-direct {v3, p0, v1, v4, v5}, Lcom/s1243808733/util/Json2Bean$100000012$100000011;-><init>(Lcom/s1243808733/util/Json2Bean$100000012;Ljava/lang/String;Lcom/s1243808733/util/Json2Bean$DialogView;Landroid/app/Activity;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 279
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V

    return-void

    .line 243
    :cond_0
    const-string v0, "compress"

    goto :goto_0

    .line 260
    :cond_1
    const-string v0, "format"

    goto :goto_1
.end method
