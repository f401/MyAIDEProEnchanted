.class Lcom/s1243808733/util/BatchReplace$1;
.super Ljava/lang/Object;
.source "BatchReplace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/BatchReplace;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private filter:[Ljava/lang/String;

.field private news:Ljava/lang/String;

.field private old:Ljava/lang/String;

.field private targetDir:Ljava/lang/String;

.field final val$activity:Landroid/app/Activity;

.field final val$cb:Landroid/widget/CheckBox;

.field final val$et:Landroid/widget/EditText;

.field final val$et_filtration:Landroid/widget/EditText;

.field final val$et_new:Landroid/widget/EditText;

.field final val$et_old:Landroid/widget/EditText;

.field final val$isCN:Z


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;ZLandroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/s1243808733/util/BatchReplace$1;->val$cb:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/s1243808733/util/BatchReplace$1;->val$et:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/s1243808733/util/BatchReplace$1;->val$et_old:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/s1243808733/util/BatchReplace$1;->val$et_new:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/s1243808733/util/BatchReplace$1;->val$et_filtration:Landroid/widget/EditText;

    iput-boolean p6, p0, Lcom/s1243808733/util/BatchReplace$1;->val$isCN:Z

    iput-object p7, p0, Lcom/s1243808733/util/BatchReplace$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private replace(Ljava/io/File;Lcom/s1243808733/util/BatchReplace$Listener;)V
    .locals 5

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 66
    iget-object v1, p0, Lcom/s1243808733/util/BatchReplace$1;->filter:[Ljava/lang/String;

    if-nez v1, :cond_2

    .line 78
    :cond_0
    invoke-static {p1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v1, p0, Lcom/s1243808733/util/BatchReplace$1;->old:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2, p1}, Lcom/s1243808733/util/BatchReplace$Listener;->onReplace(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/s1243808733/util/BatchReplace$1;->old:Ljava/lang/String;

    iget-object v2, p0, Lcom/s1243808733/util/BatchReplace$1;->news:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    .line 93
    :cond_1
    return-void

    .line 70
    :cond_2
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 71
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 81
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 88
    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 89
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 90
    iget-object v4, p0, Lcom/s1243808733/util/BatchReplace$1;->val$cb:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 91
    invoke-direct {p0, v3, p2}, Lcom/s1243808733/util/BatchReplace$1;->replace(Ljava/io/File;Lcom/s1243808733/util/BatchReplace$Listener;)V

    .line 93
    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    invoke-direct {p0, v3, p2}, Lcom/s1243808733/util/BatchReplace$1;->replace(Ljava/io/File;Lcom/s1243808733/util/BatchReplace$Listener;)V

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v1, 0x0

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 102
    iget-object v0, p0, Lcom/s1243808733/util/BatchReplace$1;->val$et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/util/BatchReplace$1;->targetDir:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/s1243808733/util/BatchReplace$1;->val$et_old:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/util/BatchReplace$1;->old:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/s1243808733/util/BatchReplace$1;->val$et_new:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/util/BatchReplace$1;->news:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/s1243808733/util/BatchReplace$1;->val$et_filtration:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/s1243808733/util/BatchReplace$1;->filter:[Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/s1243808733/util/BatchReplace$1;->targetDir:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/s1243808733/util/BatchReplace$1;->targetDir:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/util/BatchReplace$1;->val$et:Landroid/widget/EditText;

    iget-boolean v0, p0, Lcom/s1243808733/util/BatchReplace$1;->val$isCN:Z

    if-eqz v0, :cond_7

    const-string v0, "\u8def\u5f84\u4e0d\u5b58\u5728"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 140
    :goto_2
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/util/BatchReplace$1;->val$et_filtration:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/util/BatchReplace$1;->old:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 112
    iget-object v1, p0, Lcom/s1243808733/util/BatchReplace$1;->val$et_old:Landroid/widget/EditText;

    iget-boolean v0, p0, Lcom/s1243808733/util/BatchReplace$1;->val$isCN:Z

    if-eqz v0, :cond_3

    const-string v0, "\u8bf7\u8f93\u5165\u8981\u66ff\u6362\u7684\u5185\u5bb9"

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    const-string v0, "Please enter what to replace"

    goto :goto_3

    .line 115
    :cond_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 116
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/s1243808733/util/BatchReplace$1;->targetDir:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/s1243808733/util/BatchReplace$1$1;

    invoke-direct {v5, p0, v4}, Lcom/s1243808733/util/BatchReplace$1$1;-><init>(Lcom/s1243808733/util/BatchReplace$1;Ljava/lang/StringBuffer;)V

    invoke-direct {p0, v0, v5}, Lcom/s1243808733/util/BatchReplace$1;->replace(Ljava/io/File;Lcom/s1243808733/util/BatchReplace$Listener;)V

    .line 125
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/s1243808733/util/BatchReplace$1;->val$isCN:Z

    if-eqz v0, :cond_5

    const-string v0, "\u8017\u65f6"

    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v2

    long-to-double v2, v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    const-string v0, "ms\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/s1243808733/util/BatchReplace$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    iget-boolean v0, p0, Lcom/s1243808733/util/BatchReplace$1;->val$isCN:Z

    if-eqz v0, :cond_6

    const-string v0, "\u66ff\u6362\u5b8c\u6210"

    :goto_5
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/s1243808733/util/BatchReplace$1$2;

    invoke-direct {v2, p0, v5}, Lcom/s1243808733/util/BatchReplace$1$2;-><init>(Lcom/s1243808733/util/BatchReplace$1;Ljava/lang/StringBuffer;)V

    .line 132
    const v3, 0x1040001

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 139
    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 126
    :cond_5
    const-string v0, "time consuming"

    goto :goto_4

    .line 130
    :cond_6
    const-string v0, "Replacement complete"

    goto :goto_5

    .line 109
    :cond_7
    const-string v0, "path does not exist"

    goto/16 :goto_1
.end method
