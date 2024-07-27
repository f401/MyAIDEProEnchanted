.class Lcom/s1243808733/aide/project/ProjectDialog$100000010;
.super Ljava/lang/Object;
.source "ProjectDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final val$button1:Landroid/widget/Button;

.field private final val$createLocation:Ljava/io/File;

.field private final val$input_packageName:Landroid/widget/EditText;

.field private final val$input_projectName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/widget/Button;Ljava/io/File;Landroid/widget/EditText;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000010;->val$input_projectName:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000010;->val$button1:Landroid/widget/Button;

    iput-object p3, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000010;->val$createLocation:Ljava/io/File;

    iput-object p4, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000010;->val$input_packageName:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Editable;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "III)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "III)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v3, 0x0

    .line 289
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000010;->val$input_projectName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000010;->val$button1:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 298
    :goto_0
    return-void

    .line 291
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000010;->val$createLocation:Ljava/io/File;

    iget-object v2, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000010;->val$input_projectName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    iget-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000010;->val$input_projectName:Landroid/widget/EditText;

    const-string/jumbo v0, "\u9879\u76ee\u540d\u5df2\u5b58\u5728"

    const-string v2, "Project name already exists"

    invoke-static {v0, v2}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000010;->val$button1:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000010;->val$input_packageName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000010;->val$input_packageName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000010;->val$button1:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$100000010;->val$button1:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
