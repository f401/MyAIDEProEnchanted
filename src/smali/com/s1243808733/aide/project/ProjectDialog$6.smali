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
    .registers 5
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
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 289
    iget-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$6;->val$input_projectName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1b

    .line 290
    iget-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$6;->val$button1:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_6f

    .line 291
    :cond_1b
    new-instance p1, Ljava/io/File;

    iget-object p3, p0, Lcom/s1243808733/aide/project/ProjectDialog$6;->val$createLocation:Ljava/io/File;

    iget-object p4, p0, Lcom/s1243808733/aide/project/ProjectDialog$6;->val$input_projectName:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 292
    iget-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$6;->val$input_projectName:Landroid/widget/EditText;

    const-string p3, "项目名已存在"

    const-string p4, "Project name already exists"

    invoke-static {p3, p4}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 293
    iget-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$6;->val$button1:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_6f

    .line 294
    :cond_47
    iget-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$6;->val$input_packageName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_69

    iget-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$6;->val$input_packageName:Landroid/widget/EditText;

    .line 295
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_69

    .line 296
    iget-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$6;->val$button1:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_6f

    .line 298
    :cond_69
    iget-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$6;->val$button1:Landroid/widget/Button;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_6f
    return-void
.end method
