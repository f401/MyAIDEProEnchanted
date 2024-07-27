.class Lcom/s1243808733/util/Json2Bean$100000009$100000004;
.super Ljava/lang/Object;
.source "Json2Bean.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/util/Json2Bean$100000009;

.field private final val$activity:Landroid/app/Activity;

.field private final val$dialog:Landroid/app/AlertDialog;

.field private final val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

.field private final val$result:Ljava/lang/String;

.field private final val$srcJavaPackageName:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/Json2Bean$100000009;Landroid/app/Activity;Ljava/io/File;Lcom/s1243808733/util/Json2Bean$DialogView;Ljava/lang/String;Landroid/app/AlertDialog;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004;->this$0:Lcom/s1243808733/util/Json2Bean$100000009;

    iput-object p2, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004;->val$srcJavaPackageName:Ljava/io/File;

    iput-object p4, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004;->val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

    iput-object p5, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004;->val$result:Ljava/lang/String;

    iput-object p6, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004;->val$dialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static access$0(Lcom/s1243808733/util/Json2Bean$100000009$100000004;)Lcom/s1243808733/util/Json2Bean$100000009;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004;->this$0:Lcom/s1243808733/util/Json2Bean$100000009;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 10
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/16 v2, 0x18

    const/4 v5, -0x2

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 95
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004;->val$activity:Landroid/app/Activity;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 96
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 97
    int-to-float v0, v2

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v0

    int-to-float v2, v2

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-virtual {v4, v0, v7, v2, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 102
    new-instance v2, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 103
    new-instance v3, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004;->val$activity:Landroid/app/Activity;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u6587\u4ef6\u540d.."

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 105
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u5bfc\u51fa\u8def\u5f84.."

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {v4, v2, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 107
    invoke-virtual {v4, v3, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 110
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004;->val$srcJavaPackageName:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004;->val$srcJavaPackageName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :goto_2
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004;->val$dialogView:Lcom/s1243808733/util/Json2Bean$DialogView;

    iget-object v0, v0, Lcom/s1243808733/util/Json2Bean$DialogView;->input_className:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 118
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v5, ".java"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_0
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-virtual {v0, v4, v6, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 126
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004;->val$activity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u5bfc\u51fa"

    move-object v4, v0

    :goto_3
    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "\u9009\u62e9\u8def\u5f84"

    :goto_4
    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 133
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 135
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    new-instance v0, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000000;

    iget-object v4, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004;->val$result:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000000;-><init>(Lcom/s1243808733/util/Json2Bean$100000009$100000004;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const/4 v0, -0x3

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000002;

    iget-object v2, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004;->val$srcJavaPackageName:Ljava/io/File;

    iget-object v4, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000002;-><init>(Lcom/s1243808733/util/Json2Bean$100000009$100000004;Ljava/io/File;Landroid/app/Activity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 175
    new-instance v0, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000003;

    iget-object v1, p0, Lcom/s1243808733/util/Json2Bean$100000009$100000004;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/util/Json2Bean$100000009$100000004$100000003;-><init>(Lcom/s1243808733/util/Json2Bean$100000009$100000004;Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 183
    return v7

    .line 104
    :cond_1
    const-string v0, "file nane..."

    goto/16 :goto_0

    .line 105
    :cond_2
    const-string v0, "export path..."

    goto/16 :goto_1

    .line 113
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 126
    :cond_4
    const-string v0, "Export"

    move-object v4, v0

    goto :goto_3

    :cond_5
    const-string v0, "Select path"

    goto :goto_4
.end method
