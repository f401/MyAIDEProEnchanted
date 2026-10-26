.class Lcom/s1243808733/aide/project/ProjectDialog$6;
.super Ljava/lang/Object;
.source "ProjectDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/project/ProjectDialog;->createProject(Landroid/app/Activity;Lcom/s1243808733/aide/project/jsonbean/Category$Templates;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$button1:Landroid/widget/Button;

.field final val$createLocation:Ljava/io/File;

.field final val$input_packageName:Landroid/widget/EditText;

.field final val$input_projectName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/widget/Button;Ljava/io/File;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 281
    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$6;->val$input_projectName:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/s1243808733/aide/project/ProjectDialog$6;->val$button1:Landroid/widget/Button;

    iput-object p3, p0, Lcom/s1243808733/aide/project/ProjectDialog$6;->val$createLocation:Ljava/io/File;

    iput-object p4, p0, Lcom/s1243808733/aide/project/ProjectDialog$6;->val$input_packageName:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    const/4 v3, 0x0

    .line 289
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$6;->val$input_projectName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$6;->val$button1:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 298
    :goto_0
    return-void

    .line 291
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$6;->val$createLocation:Ljava/io/File;

    iget-object v2, p0, Lcom/s1243808733/aide/project/ProjectDialog$6;->val$input_projectName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    iget-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$6;->val$input_projectName:Landroid/widget/EditText;

    const-string v0, "\u9879\u76ee\u540d\u5df2\u5b58\u5728"

    const-string v2, "Project name already exists"

    invoke-static {v0, v2}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$6;->val$button1:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$6;->val$input_packageName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$6;->val$input_packageName:Landroid/widget/EditText;

    .line 295
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$6;->val$button1:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$6;->val$button1:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
