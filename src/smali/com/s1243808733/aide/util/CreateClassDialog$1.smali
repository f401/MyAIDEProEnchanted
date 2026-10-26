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
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$1;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private verify(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 112
    invoke-static {p1}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v0

    .line 113
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v0, :cond_1

    aput-object v1, p2, v4

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$1;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    const-string v2, ".java"

    invoke-static {v0, p1, v2}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$mgetSimpleName(Lcom/s1243808733/aide/util/CreateClassDialog;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 119
    aput-object v1, p2, v4

    .line 120
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u8bf7\u8f93\u5165\u7c7b\u540d"

    :goto_1
    aput-object v0, p2, v5

    goto :goto_0

    :cond_2
    const-string v0, "Please enter a class name"

    goto :goto_1

    .line 125
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 126
    aput-object v1, p2, v4

    .line 127
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u4e0d\u80fd\u4ee5\u6570\u5b57\u5f00\u5934"

    :goto_2
    aput-object v0, p2, v5

    goto :goto_0

    :cond_4
    const-string v0, "Cannot start with a number"

    goto :goto_2

    .line 130
    :cond_5
    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$1;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    const-string v3, ".java"

    invoke-static {v2, v0, v3}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$mgetSimpleName(Lcom/s1243808733/aide/util/CreateClassDialog;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$1;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v2}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmCreateInDir(Lcom/s1243808733/aide/util/CreateClassDialog;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".java"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    aput-object v1, p2, v4

    .line 136
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "\u6587\u4ef6\u5df2\u5b58\u5728"

    :goto_3
    aput-object v0, p2, v5

    goto :goto_0

    :cond_6
    const-string v0, "file already exist"

    goto :goto_3
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
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 104
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v6

    aput-object v1, v2, v4

    .line 105
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/s1243808733/aide/util/CreateClassDialog$1;->verify(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$1;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmDialog(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v3, p0, Lcom/s1243808733/aide/util/CreateClassDialog$1;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v3}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmDialog(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$1;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmDialog(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v3, p0, Lcom/s1243808733/aide/util/CreateClassDialog$1;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v3}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmDialog(Lcom/s1243808733/aide/util/CreateClassDialog;)Landroid/app/AlertDialog;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    aget-object v0, v2, v6

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$1;->this$0:Lcom/s1243808733/aide/util/CreateClassDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/util/CreateClassDialog;->-$$Nest$fgetmDialogView(Lcom/s1243808733/aide/util/CreateClassDialog;)Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;

    move-result-object v0

    iget-object v3, v0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->input:Landroid/widget/EditText;

    aget-object v0, v2, v4

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v2, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
