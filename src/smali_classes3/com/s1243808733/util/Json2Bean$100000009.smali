.class Lcom/s1243808733/util/Json2Bean$100000009;
.super Ljava/lang/Object;
.source "Json2Bean.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final val$activity:Landroid/app/Activity;

.field private final val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

.field private final val$dialog:Landroid/app/AlertDialog;

.field private final val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

.field private final val$srcJavaPackageName:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/Json2Bean$DialogView;Lcom/s1243808733/util/Json2Java$Configurd;Landroid/app/Activity;Ljava/io/File;Landroid/app/AlertDialog;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$100000009;->val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

    iput-object p2, p0, Lcom/s1243808733/util/Json2Bean$100000009;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    iput-object p3, p0, Lcom/s1243808733/util/Json2Bean$100000009;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/s1243808733/util/Json2Bean$100000009;->val$srcJavaPackageName:Ljava/io/File;

    iput-object p5, p0, Lcom/s1243808733/util/Json2Bean$100000009;->val$dialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000009;->val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$DialogView;->input_json:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000009;->val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$DialogView;->input_package:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v2, p0, Lcom/s1243808733/util/Json2Bean$100000009;->val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

    iget-object v2, v2, Lcom/s1243808733/util/Json2Bean$DialogView;->input_className:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    iget-object v4, p0, Lcom/s1243808733/util/Json2Bean$100000009;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    :cond_0
    invoke-virtual {v4, v0}, Lcom/s1243808733/util/Json2Java$Configurd;->setPackageName(Ljava/lang/String;)Lcom/s1243808733/util/Json2Java$Configurd;

    .line 83
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000009;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    check-cast v1, Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/s1243808733/util/Json2Java$Configurd;->setClassName(Ljava/lang/String;)Lcom/s1243808733/util/Json2Java$Configurd;

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000009;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-static {v3, v0}, Lcom/s1243808733/util/Json2Java;->createBean(Ljava/lang/String;Lcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;

    move-result-object v5

    .line 89
    new-instance v7, Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000009;->val$activity:Landroid/app/Activity;

    invoke-direct {v7, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 90
    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v8

    .line 91
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u5bfc\u51fa\u81f3java"

    :goto_1
    :try_start_1
    invoke-interface {v8, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v9

    new-instance v0, Lcom/s1243808733/util/Json2Bean$100000009$100000004;

    iget-object v2, p0, Lcom/s1243808733/util/Json2Bean$100000009;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/s1243808733/util/Json2Bean$100000009;->val$srcJavaPackageName:Ljava/io/File;

    iget-object v4, p0, Lcom/s1243808733/util/Json2Bean$100000009;->val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

    iget-object v6, p0, Lcom/s1243808733/util/Json2Bean$100000009;->val$dialog:Landroid/app/AlertDialog;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/s1243808733/util/Json2Bean$100000009$100000004;-><init>(Lcom/s1243808733/util/Json2Bean$100000009;Landroid/app/Activity;Ljava/io/File;Lcom/s1243808733/util/Json2Bean$DialogView;Ljava/lang/String;Landroid/app/AlertDialog;)V

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 187
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "\u6dfb\u52a0\u5230\u5f53\u524d\u7f16\u8f91\u6846"

    :goto_2
    :try_start_2
    invoke-interface {v8, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/util/Json2Bean$100000009$100000005;

    invoke-direct {v1, p0, v5}, Lcom/s1243808733/util/Json2Bean$100000009$100000005;-><init>(Lcom/s1243808733/util/Json2Bean$100000009;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_3
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 197
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "\u9884\u89c8\u4ee3\u7801"

    :goto_4
    :try_start_3
    invoke-interface {v8, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/util/Json2Bean$100000009$100000008;

    iget-object v2, p0, Lcom/s1243808733/util/Json2Bean$100000009;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/s1243808733/util/Json2Bean$100000009;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {v1, p0, v2, v5, v3}, Lcom/s1243808733/util/Json2Bean$100000009$100000008;-><init>(Lcom/s1243808733/util/Json2Bean$100000009;Landroid/app/Activity;Ljava/lang/String;Landroid/app/AlertDialog;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 227
    invoke-virtual {v7}, Landroid/widget/PopupMenu;->show()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 230
    :goto_5
    return-void

    :cond_1
    move-object v1, v2

    .line 83
    goto :goto_0

    .line 91
    :cond_2
    const-string v0, "Export to Java"

    goto :goto_1

    .line 187
    :cond_3
    const-string v0, "Add to current edit box"

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    goto :goto_3

    .line 197
    :cond_5
    const-string v0, "Preview code"

    goto :goto_4

    .line 227
    :catch_0
    move-exception v0

    .line 230
    iget-object v1, p0, Lcom/s1243808733/util/Json2Bean$100000009;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
