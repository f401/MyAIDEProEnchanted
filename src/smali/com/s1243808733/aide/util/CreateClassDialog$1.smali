.class Lcom/s1243808733/aide/util/CreateClassDialog$1;
.super Ljava/lang/Object;
.source "CreateClassDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/util/CreateClassDialog;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/util/CreateClassDialog;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/util/CreateClassDialog;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$1;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private verify(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9

    .line 112
    invoke-static {p1}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    .line 113
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v0, :cond_e

    aput-object v2, p2, v1

    return-void

    .line 117
    :cond_e
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$1;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    const-string v3, ".java"

    invoke-static {v0, p1, v3}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$mgetSimpleName(Lcom/s1243808733/aide/util/CreateClassDialog;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-static {p1}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_2d

    .line 119
    aput-object v2, p2, v1

    .line 120
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_28

    const-string p1, "请输入类名"

    goto :goto_2a

    :cond_28
    const-string p1, "Please enter a class name"

    :goto_2a
    aput-object p1, p2, v4

    return-void

    .line 125
    :cond_2d
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 126
    aput-object v2, p2, v1

    .line 127
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_42

    const-string p1, "不能以数字开头"

    goto :goto_44

    :cond_42
    const-string p1, "Cannot start with a number"

    :goto_44
    aput-object p1, p2, v4

    return-void

    .line 130
    :cond_47
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$1;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v0, p1, v3}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$mgetSimpleName(Lcom/s1243808733/aide/util/CreateClassDialog;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 132
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$1;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmCreateInDir(Lcom/s1243808733/aide/util/CreateClassDialog;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/io/File;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 135
    aput-object v2, p2, v1

    .line 136
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_78

    const-string p1, "文件已存在"

    goto :goto_7a

    :cond_78
    const-string p1, "file already exist"

    :goto_7a
    aput-object p1, p2, v4

    :cond_7c
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
    .registers 8

    .line 104
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const/4 v0, 0x0

    aput-object p4, p2, v0

    const/4 p4, 0x0

    aput-object p4, p2, p3

    .line 105
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/aide/util/CreateClassDialog$1;->verify(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$1;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {p1}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmDialog(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    iget-object v1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$1;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v1}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmDialog(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_41

    iget-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$1;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {p1}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmDialog(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$1;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v2}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmDialog(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 108
    :cond_41
    iget-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$1;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {p1}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmDialogView(Lcom/s1243808733/aide/util/CreateClassDialog;)Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    move-result-object p1

    iget-object p1, p1, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->input:Landroid/widget/EditText;

    aget-object v0, p2, p3

    if-nez v0, :cond_4e

    goto :goto_61

    :cond_4e
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p2, p2, p3

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_61
    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method
