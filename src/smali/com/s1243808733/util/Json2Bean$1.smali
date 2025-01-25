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
    .registers 6
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
    .registers 8

    .line 74
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$1;->val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$DialogView;->input_json:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/s1243808733/util/Json2Bean$1;->val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

    iget-object v1, v1, Lcom/s1243808733/util/Json2Bean$DialogView;->input_package:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/s1243808733/util/Json2Bean$1;->val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

    iget-object v2, v2, Lcom/s1243808733/util/Json2Bean$DialogView;->input_className:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    iget-object v3, p0, Lcom/s1243808733/util/Json2Bean$1;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2e

    move-object v1, v5

    :cond_2e
    invoke-virtual {v3, v1}, Lcom/s1243808733/util/Json2Java$Configurd;->setPackageName(Ljava/lang/String;)Lcom/s1243808733/util/Json2Java$Configurd;

    .line 79
    iget-object v1, p0, Lcom/s1243808733/util/Json2Bean$1;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3a

    move-object v2, v5

    :cond_3a
    invoke-virtual {v1, v2}, Lcom/s1243808733/util/Json2Java$Configurd;->setClassName(Ljava/lang/String;)Lcom/s1243808733/util/Json2Java$Configurd;

    .line 83
    :try_start_3d
    iget-object v1, p0, Lcom/s1243808733/util/Json2Bean$1;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-static {v0, v1}, Lcom/s1243808733/util/Json2Java;->createBean(Ljava/lang/String;Lcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/s1243808733/util/Json2Bean$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 86
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    .line 87
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_52
    .catchall {:try_start_3d .. :try_end_52} :catchall_a4

    if-eqz v2, :cond_57

    const-string v2, "导出至java"

    goto :goto_59

    :cond_57
    const-string v2, "Export to Java"

    :goto_59
    :try_start_59
    invoke-interface {p1, v2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/s1243808733/util/Json2Bean$1$1;

    invoke-direct {v3, p0, v0}, Lcom/s1243808733/util/Json2Bean$1$1;-><init>(Lcom/s1243808733/util/Json2Bean$1;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 183
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_69
    .catchall {:try_start_59 .. :try_end_69} :catchall_a4

    if-eqz v2, :cond_6e

    const-string v2, "添加到当前编辑框"

    goto :goto_70

    :cond_6e
    const-string v2, "Add to current edit box"

    :goto_70
    :try_start_70
    invoke-interface {p1, v2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/s1243808733/util/Json2Bean$1$2;

    invoke-direct {v3, p0, v0}, Lcom/s1243808733/util/Json2Bean$1$2;-><init>(Lcom/s1243808733/util/Json2Bean$1;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    .line 191
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getCurrentEditorFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_85

    const/4 v3, 0x1

    goto :goto_86

    :cond_85
    const/4 v3, 0x0

    :goto_86
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 193
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2
    :try_end_8d
    .catchall {:try_start_70 .. :try_end_8d} :catchall_a4

    if-eqz v2, :cond_92

    const-string v2, "预览代码"

    goto :goto_94

    :cond_92
    const-string v2, "Preview code"

    :goto_94
    :try_start_94
    invoke-interface {p1, v2}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    new-instance v2, Lcom/s1243808733/util/Json2Bean$1$3;

    invoke-direct {v2, p0, v0}, Lcom/s1243808733/util/Json2Bean$1$3;-><init>(Lcom/s1243808733/util/Json2Bean$1;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 223
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V
    :try_end_a3
    .catchall {:try_start_94 .. :try_end_a3} :catchall_a4

    goto :goto_aa

    :catchall_a4
    move-exception p1

    .line 226
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_aa
    return-void
.end method
