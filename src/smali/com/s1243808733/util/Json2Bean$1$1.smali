.class Lcom/s1243808733/util/Json2Bean$1$1;
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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$1$1;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iput-object p2, p0, Lcom/s1243808733/util/Json2Bean$1$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 9

    .line 91
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/s1243808733/util/Json2Bean$1$1;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iget-object v1, v1, Lcom/s1243808733/util/Json2Bean$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 92
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 93
    const/high16 v1, 0x41c00000  # 24.0f

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 98
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/s1243808733/util/Json2Bean$1$1;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iget-object v2, v2, Lcom/s1243808733/util/Json2Bean$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v2, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/s1243808733/util/Json2Bean$1$1;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iget-object v4, v4, Lcom/s1243808733/util/Json2Bean$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4

    if-eqz v4, :cond_36

    const-string v4, "文件名.."

    goto :goto_38

    :cond_36
    const-string v4, "file nane..."

    :goto_38
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 101
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4

    if-eqz v4, :cond_44

    const-string v4, "导出路径.."

    goto :goto_46

    :cond_44
    const-string v4, "export path..."

    :goto_46
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 102
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-virtual {v0, v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 103
    invoke-virtual {v0, v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 106
    iget-object v5, p0, Lcom/s1243808733/util/Json2Bean$1$1;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iget-object v5, v5, Lcom/s1243808733/util/Json2Bean$1;->val$srcJavaPackageName:Ljava/io/File;

    if-eqz v5, :cond_63

    .line 107
    iget-object v5, p0, Lcom/s1243808733/util/Json2Bean$1$1;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iget-object v5, v5, Lcom/s1243808733/util/Json2Bean$1;->val$srcJavaPackageName:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6e

    .line 109
    :cond_63
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :goto_6e
    iget-object v5, p0, Lcom/s1243808733/util/Json2Bean$1$1;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iget-object v5, v5, Lcom/s1243808733/util/Json2Bean$1;->val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

    iget-object v5, v5, Lcom/s1243808733/util/Json2Bean$DialogView;->input_className:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 113
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_96

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".java"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_96
    new-instance v5, Landroid/widget/ScrollView;

    iget-object v6, p0, Lcom/s1243808733/util/Json2Bean$1$1;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iget-object v6, v6, Lcom/s1243808733/util/Json2Bean$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-virtual {v5, v0, v4, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 122
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/s1243808733/util/Json2Bean$1$1;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iget-object v6, v6, Lcom/s1243808733/util/Json2Bean$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 123
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 124
    invoke-virtual {p1, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 125
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_c0

    const-string v0, "导出"

    goto :goto_c2

    :cond_c0
    const-string v0, "Export"

    :goto_c2
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 126
    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 127
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_d6

    const-string v0, "选择路径"

    goto :goto_d8

    :cond_d6
    const-string v0, "Select path"

    :goto_d8
    invoke-virtual {p1, v0, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 131
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v4, Lcom/s1243808733/util/Json2Bean$1$1$1;

    invoke-direct {v4, p0, v1, v2, p1}, Lcom/s1243808733/util/Json2Bean$1$1$1;-><init>(Lcom/s1243808733/util/Json2Bean$1$1;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    .line 132
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const/4 v0, -0x3

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/util/Json2Bean$1$1$2;

    invoke-direct {v1, p0, v2}, Lcom/s1243808733/util/Json2Bean$1$1$2;-><init>(Lcom/s1243808733/util/Json2Bean$1$1;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$1$1;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 171
    new-instance v0, Lcom/s1243808733/util/Json2Bean$1$1$3;

    invoke-direct {v0, p0}, Lcom/s1243808733/util/Json2Bean$1$1$3;-><init>(Lcom/s1243808733/util/Json2Bean$1$1;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return v3
.end method
