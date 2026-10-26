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
    .locals 0
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
    .locals 8

    const/4 v4, -0x2

    const/high16 v2, 0x41c00000    # 24.0f

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 91
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$1$1;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 92
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 93
    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v0

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-virtual {v1, v0, v7, v2, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 98
    new-instance v2, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$1$1;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v3, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$1$1;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u6587\u4ef6\u540d.."

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 101
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u5bfc\u51fa\u8def\u5f84.."

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {v1, v2, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 103
    invoke-virtual {v1, v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 106
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$1$1;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$1;->val$srcJavaPackageName:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$1$1;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$1;->val$srcJavaPackageName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :goto_2
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$1$1;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$1;->val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$DialogView;->input_className:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".java"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_0
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/s1243808733/util/Json2Bean$1$1;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iget-object v4, v4, Lcom/s1243808733/util/Json2Bean$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 121
    invoke-virtual {v0, v1, v5, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 122
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/s1243808733/util/Json2Bean$1$1;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iget-object v4, v4, Lcom/s1243808733/util/Json2Bean$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 123
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 124
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 125
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u5bfc\u51fa"

    :goto_3
    invoke-virtual {v1, v0, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 126
    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 127
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u9009\u62e9\u8def\u5f84"

    :goto_4
    invoke-virtual {v1, v0, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 131
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v4, Lcom/s1243808733/util/Json2Bean$1$1$1;

    invoke-direct {v4, p0, v2, v3, v0}, Lcom/s1243808733/util/Json2Bean$1$1$1;-><init>(Lcom/s1243808733/util/Json2Bean$1$1;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    .line 132
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/util/Json2Bean$1$1$2;

    invoke-direct {v2, p0, v3}, Lcom/s1243808733/util/Json2Bean$1$1$2;-><init>(Lcom/s1243808733/util/Json2Bean$1$1;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v1, p0, Lcom/s1243808733/util/Json2Bean$1$1;->this$0:Lcom/s1243808733/util/Json2Bean$1;

    iget-object v1, v1, Lcom/s1243808733/util/Json2Bean$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->hide()V

    .line 171
    new-instance v1, Lcom/s1243808733/util/Json2Bean$1$1$3;

    invoke-direct {v1, p0}, Lcom/s1243808733/util/Json2Bean$1$1$3;-><init>(Lcom/s1243808733/util/Json2Bean$1$1;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return v7

    .line 100
    :cond_1
    const-string v0, "file nane..."

    goto/16 :goto_0

    .line 101
    :cond_2
    const-string v0, "export path..."

    goto/16 :goto_1

    .line 109
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 125
    :cond_4
    const-string v0, "Export"

    goto :goto_3

    .line 127
    :cond_5
    const-string v0, "Select path"

    goto :goto_4
.end method
