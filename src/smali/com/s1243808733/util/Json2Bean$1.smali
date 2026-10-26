.class Lcom/s1243808733/util/Json2Bean$1;
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

.field final val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

.field final val$dialog:Landroid/app/AlertDialog;

.field final val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

.field final val$srcJavaPackageName:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/Json2Bean$DialogView;Lcom/s1243808733/util/Json2Java$Configurd;Landroid/app/Activity;Ljava/io/File;Landroid/app/AlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$1;->val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

    iput-object p2, p0, Lcom/s1243808733/util/Json2Bean$1;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    iput-object p3, p0, Lcom/s1243808733/util/Json2Bean$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/s1243808733/util/Json2Bean$1;->val$srcJavaPackageName:Ljava/io/File;

    iput-object p5, p0, Lcom/s1243808733/util/Json2Bean$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$1;->val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$DialogView;->input_json:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 75
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$1;->val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$DialogView;->input_package:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v2, p0, Lcom/s1243808733/util/Json2Bean$1;->val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

    iget-object v2, v2, Lcom/s1243808733/util/Json2Bean$DialogView;->input_className:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    iget-object v4, p0, Lcom/s1243808733/util/Json2Bean$1;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v4, v0}, Lcom/s1243808733/util/Json2Java$Configurd;->setPackageName(Ljava/lang/String;)Lcom/s1243808733/util/Json2Java$Configurd;

    .line 79
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$1;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    :goto_0
    invoke-virtual {v0, v1}, Lcom/s1243808733/util/Json2Java$Configurd;->setClassName(Ljava/lang/String;)Lcom/s1243808733/util/Json2Java$Configurd;

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$1;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-static {v3, v0}, Lcom/s1243808733/util/Json2Java;->createBean(Ljava/lang/String;Lcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;

    move-result-object v1

    .line 85
    new-instance v2, Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 86
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 87
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5bfc\u51fa\u81f3java"

    :goto_1
    :try_start_1
    invoke-interface {v3, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v4, Lcom/s1243808733/util/Json2Bean$1$1;

    invoke-direct {v4, p0, v1}, Lcom/s1243808733/util/Json2Bean$1$1;-><init>(Lcom/s1243808733/util/Json2Bean$1;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 183
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u6dfb\u52a0\u5230\u5f53\u524d\u7f16\u8f91\u6846"

    :goto_2
    :try_start_2
    invoke-interface {v3, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v4, Lcom/s1243808733/util/Json2Bean$1$2;

    invoke-direct {v4, p0, v1}, Lcom/s1243808733/util/Json2Bean$1$2;-><init>(Lcom/s1243808733/util/Json2Bean$1;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v4

    .line 191
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 193
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u9884\u89c8\u4ee3\u7801"

    :goto_4
    :try_start_3
    invoke-interface {v3, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v3, Lcom/s1243808733/util/Json2Bean$1$3;

    invoke-direct {v3, p0, v1}, Lcom/s1243808733/util/Json2Bean$1$3;-><init>(Lcom/s1243808733/util/Json2Bean$1;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 223
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 226
    :goto_5
    return-void

    .line 87
    :cond_1
    const-string v0, "Export to Java"

    goto :goto_1

    .line 183
    :cond_2
    const-string v0, "Add to current edit box"

    goto :goto_2

    .line 191
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 193
    :cond_4
    const-string v0, "Preview code"

    goto :goto_4

    .line 223
    :catchall_0
    move-exception v0

    .line 226
    iget-object v1, p0, Lcom/s1243808733/util/Json2Bean$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    move-object v1, v2

    goto :goto_0
.end method
