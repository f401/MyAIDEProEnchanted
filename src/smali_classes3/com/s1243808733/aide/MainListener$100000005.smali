.class Lcom/s1243808733/aide/MainListener$100000005;
.super Ljava/lang/Object;
.source "MainListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private final val$activity:Landroid/app/Activity;

.field private final val$dialog:Landroid/app/AlertDialog;

.field private final val$dialogMessage:Ljava/lang/String;

.field private final val$dialogTitle:Ljava/lang/String;

.field private final val$input:Landroid/widget/EditText;

.field private final val$input_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;Landroid/app/AlertDialog;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$dialogTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$dialogMessage:Ljava/lang/String;

    iput-object p4, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$input:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$dialog:Landroid/app/AlertDialog;

    iput-object p6, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$input_text:Ljava/lang/String;

    return-void
.end method

.method private handlerNewFileDialog()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$dialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 193
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 195
    new-instance v1, Lcom/s1243808733/aide/MainListener$100000005$100000002;

    iget-object v2, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$input:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {v1, p0, v2, v3}, Lcom/s1243808733/aide/MainListener$100000005$100000002;-><init>(Lcom/s1243808733/aide/MainListener$100000005;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v1, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$input:Landroid/widget/EditText;

    new-instance v2, Lcom/s1243808733/aide/MainListener$100000005$100000003;

    invoke-direct {v2, p0, v0}, Lcom/s1243808733/aide/MainListener$100000005$100000003;-><init>(Lcom/s1243808733/aide/MainListener$100000005;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private handlerNewFolderDialog()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$dialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 147
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 148
    new-instance v1, Lcom/s1243808733/aide/MainListener$100000005$100000000;

    iget-object v2, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$input:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {v1, p0, v2, v3}, Lcom/s1243808733/aide/MainListener$100000005$100000000;-><init>(Lcom/s1243808733/aide/MainListener$100000005;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v1, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$input:Landroid/widget/EditText;

    new-instance v2, Lcom/s1243808733/aide/MainListener$100000005$100000001;

    invoke-direct {v2, p0, v0}, Lcom/s1243808733/aide/MainListener$100000005$100000001;-><init>(Lcom/s1243808733/aide/MainListener$100000005;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private handlerRenameDialog()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 243
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 244
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 246
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowserCurrentDir()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$input:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$input:Landroid/widget/EditText;

    new-instance v2, Lcom/s1243808733/aide/MainListener$100000005$100000004;

    iget-object v3, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$input_text:Ljava/lang/String;

    invoke-direct {v2, p0, v0, v3}, Lcom/s1243808733/aide/MainListener$100000005$100000004;-><init>(Lcom/s1243808733/aide/MainListener$100000005;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 293
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 298
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 302
    :cond_1
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getFileBrowserCurrentDir()Ljava/lang/String;

    move-result-object v1

    .line 303
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 305
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 306
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 307
    if-eq v1, v5, :cond_2

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0, v4, v1}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 316
    :cond_4
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const v3, 0x7f0d05ca

    .line 129
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 131
    const v1, 0x7f0d05e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$dialogTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0d05de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$dialogMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/s1243808733/aide/MainListener$100000005;->handlerRenameDialog()V

    .line 141
    :goto_0
    return-void

    .line 134
    :cond_0
    const v1, 0x7f0d0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$dialogTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$dialogMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/s1243808733/aide/MainListener$100000005;->handlerNewFileDialog()V

    goto :goto_0

    .line 137
    :cond_1
    const v1, 0x7f0d0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$dialogTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$dialogMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    invoke-direct {p0}, Lcom/s1243808733/aide/MainListener$100000005;->handlerNewFolderDialog()V

    goto :goto_0

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000005;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0
.end method
