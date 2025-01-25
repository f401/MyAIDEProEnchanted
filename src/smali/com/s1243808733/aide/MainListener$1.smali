.class Lcom/s1243808733/aide/MainListener$1;
.super Ljava/lang/Object;
.source "MainListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/MainListener;->onCnommonEditTextDialogShow(Ljava/lang/Object;Landroid/app/Activity;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$activity:Landroid/app/Activity;

.field final val$dialog:Landroid/app/AlertDialog;

.field final val$dialogMessage:Ljava/lang/String;

.field final val$dialogTitle:Ljava/lang/String;

.field final val$input:Landroid/widget/EditText;

.field final val$input_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;Landroid/app/AlertDialog;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/s1243808733/aide/MainListener$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/s1243808733/aide/MainListener$1;->val$dialogTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/s1243808733/aide/MainListener$1;->val$dialogMessage:Ljava/lang/String;

    iput-object p4, p0, Lcom/s1243808733/aide/MainListener$1;->val$input:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/s1243808733/aide/MainListener$1;->val$dialog:Landroid/app/AlertDialog;

    iput-object p6, p0, Lcom/s1243808733/aide/MainListener$1;->val$input_text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handlerNewFileDialog()V
    .registers 4

    .line 192
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$1;->val$dialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 193
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 195
    new-instance v1, Lcom/s1243808733/aide/MainListener$1$3;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/MainListener$1$3;-><init>(Lcom/s1243808733/aide/MainListener$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v1, p0, Lcom/s1243808733/aide/MainListener$1;->val$input:Landroid/widget/EditText;

    new-instance v2, Lcom/s1243808733/aide/MainListener$1$4;

    invoke-direct {v2, p0, v0}, Lcom/s1243808733/aide/MainListener$1$4;-><init>(Lcom/s1243808733/aide/MainListener$1;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private handlerNewFolderDialog()V
    .registers 4

    .line 146
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$1;->val$dialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 147
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 148
    new-instance v1, Lcom/s1243808733/aide/MainListener$1$1;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/MainListener$1$1;-><init>(Lcom/s1243808733/aide/MainListener$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v1, p0, Lcom/s1243808733/aide/MainListener$1;->val$input:Landroid/widget/EditText;

    new-instance v2, Lcom/s1243808733/aide/MainListener$1$2;

    invoke-direct {v2, p0, v0}, Lcom/s1243808733/aide/MainListener$1$2;-><init>(Lcom/s1243808733/aide/MainListener$1;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private handlerRenameDialog()V
    .registers 7

    .line 243
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$1;->val$dialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 244
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 246
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowserCurrentDir()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/s1243808733/aide/MainListener$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v3, p0, Lcom/s1243808733/aide/MainListener$1;->val$input:Landroid/widget/EditText;

    new-instance v4, Lcom/s1243808733/aide/MainListener$1$5;

    invoke-direct {v4, p0, v0}, Lcom/s1243808733/aide/MainListener$1$5;-><init>(Lcom/s1243808733/aide/MainListener$1;Landroid/widget/Button;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 293
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_39

    return-void

    .line 297
    :cond_39
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_46

    .line 298
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    return-void

    .line 302
    :cond_46
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowserCurrentDir()Ljava/lang/String;

    move-result-object v3

    .line 303
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 305
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_79

    .line 306
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v1, :cond_73

    .line 307
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_73

    .line 308
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v3}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_84

    .line 310
    :cond_73
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_84

    .line 313
    :cond_79
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_84

    .line 316
    :cond_7f
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    :goto_84
    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 5

    .line 129
    iget-object p1, p0, Lcom/s1243808733/aide/MainListener$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 131
    const v0, 0x7f0d05e0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/MainListener$1;->val$dialogTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 132
    const v0, 0x7f0d05de

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/MainListener$1;->val$dialogMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 133
    invoke-direct {p0}, Lcom/s1243808733/aide/MainListener$1;->handlerRenameDialog()V

    goto :goto_6e

    .line 134
    :cond_28
    const v0, 0x7f0d0026

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/MainListener$1;->val$dialogTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f0d05ca

    if-eqz v0, :cond_4a

    .line 135
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/s1243808733/aide/MainListener$1;->val$dialogMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 136
    invoke-direct {p0}, Lcom/s1243808733/aide/MainListener$1;->handlerNewFileDialog()V

    goto :goto_6e

    .line 137
    :cond_4a
    const v0, 0x7f0d0027

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/s1243808733/aide/MainListener$1;->val$dialogTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 138
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$1;->val$dialogMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_69

    .line 139
    invoke-direct {p0}, Lcom/s1243808733/aide/MainListener$1;->handlerNewFolderDialog()V

    goto :goto_6e

    .line 141
    :cond_69
    iget-object p1, p0, Lcom/s1243808733/aide/MainListener$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    :goto_6e
    return-void
.end method
