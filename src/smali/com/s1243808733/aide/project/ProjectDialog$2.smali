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
    .registers 2
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
    .registers 8

    .line 104
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/s1243808733/aide/project/ProjectDialog$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 105
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 107
    const/high16 v0, 0x41c00000  # 24.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v2

    invoke-static {v0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v0

    const/high16 v3, 0x41800000  # 16.0f

    invoke-static {v3}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v3

    .line 106
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 109
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 110
    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 111
    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 113
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    const-string v3, "Import"

    if-eqz v1, :cond_44

    const-string v1, "导入项目"

    goto :goto_45

    :cond_44
    move-object v1, v3

    :goto_45
    invoke-virtual {p2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 116
    const-string v1, "\n导入前请确保源码有一个一级文件夹："

    const-string v4, "\nPlease make sure that the source code has a first-level folder before import:"

    invoke-static {v1, v4}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 117
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 119
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p2

    if-eqz p2, :cond_63

    const-string v3, "导入"

    :cond_63
    const/4 p2, 0x0

    invoke-virtual {p1, v3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 120
    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 123
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 125
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    new-instance v1, Lcom/s1243808733/aide/project/ProjectDialog$2$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/s1243808733/aide/project/ProjectDialog$2$1;-><init>(Lcom/s1243808733/aide/project/ProjectDialog$2;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    .line 126
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    new-instance p2, Lcom/s1243808733/aide/project/ProjectDialog$2$2;

    invoke-direct {p2, p0, p1, v0}, Lcom/s1243808733/aide/project/ProjectDialog$2$2;-><init>(Lcom/s1243808733/aide/project/ProjectDialog$2;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 189
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
