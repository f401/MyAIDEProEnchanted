.class Lcom/s1243808733/aide/project/ProjectDialog$2;
.super Ljava/lang/Object;
.source "ProjectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/project/ProjectDialog;->showCreateDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v5, 0x1

    const/4 v7, -0x1

    const/high16 v3, 0x41c00000    # 24.0f

    const/4 v6, 0x0

    .line 104
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 107
    invoke-static {v3}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v1

    invoke-static {v3}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v4

    .line 106
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 109
    new-instance v3, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 110
    const/4 v0, -0x2

    invoke-virtual {v2, v3, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 111
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 113
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    const-string v1, "Import"

    if-eqz v0, :cond_0

    const-string v0, "\u5bfc\u5165\u9879\u76ee"

    :goto_0
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 116
    const-string v0, "\n\u5bfc\u5165\u524d\u8bf7\u786e\u4fdd\u6e90\u7801\u6709\u4e00\u4e2a\u4e00\u7ea7\u6587\u4ef6\u5939\uff1a"

    const-string v5, "\nPlease make sure that the source code has a first-level folder before import:"

    invoke-static {v0, v5}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 119
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5bfc\u5165"

    :goto_1
    invoke-virtual {v2, v0, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 120
    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 123
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 125
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/aide/project/ProjectDialog$2$1;

    invoke-direct {v2, p0, v3, v0}, Lcom/s1243808733/aide/project/ProjectDialog$2$1;-><init>(Lcom/s1243808733/aide/project/ProjectDialog$2;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    .line 126
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    new-instance v1, Lcom/s1243808733/aide/project/ProjectDialog$2$2;

    invoke-direct {v1, p0, v0, v3}, Lcom/s1243808733/aide/project/ProjectDialog$2$2;-><init>(Lcom/s1243808733/aide/project/ProjectDialog$2;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 189
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 115
    :cond_0
    const-string v0, "Import"

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
