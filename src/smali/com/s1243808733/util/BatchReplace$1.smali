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
    .registers 8
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
    .registers 8

    .line 64
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    .line 66
    iget-object v0, p0, Lcom/s1243808733/util/BatchReplace$1;->filter:[Ljava/lang/String;

    if-nez v0, :cond_c

    goto :goto_25

    .line 70
    :cond_c
    array-length v2, v0

    :goto_d
    if-ge v1, v2, :cond_6c

    aget-object v3, v0, v1

    .line 71
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_45

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 78
    :goto_25
    invoke-static {p1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 80
    iget-object v1, p0, Lcom/s1243808733/util/BatchReplace$1;->old:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {p2, p1}, Lcom/s1243808733/util/BatchReplace$Listener;->onReplace(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_6c

    .line 81
    iget-object p2, p0, Lcom/s1243808733/util/BatchReplace$1;->old:Ljava/lang/String;

    iget-object v1, p0, Lcom/s1243808733/util/BatchReplace$1;->news:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    goto :goto_6c

    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 86
    :cond_48
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_4f

    return-void

    .line 88
    :cond_4f
    array-length v0, p1

    :goto_50
    if-ge v1, v0, :cond_6c

    aget-object v2, p1, v1

    .line 89
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_66

    .line 90
    iget-object v3, p0, Lcom/s1243808733/util/BatchReplace$1;->val$cb:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 91
    invoke-direct {p0, v2, p2}, Lcom/s1243808733/util/BatchReplace$1;->replace(Ljava/io/File;Lcom/s1243808733/util/BatchReplace$Listener;)V

    goto :goto_69

    .line 93
    :cond_66
    invoke-direct {p0, v2, p2}, Lcom/s1243808733/util/BatchReplace$1;->replace(Ljava/io/File;Lcom/s1243808733/util/BatchReplace$Listener;)V

    :cond_69
    :goto_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    :cond_6c
    :goto_6c
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 102
    iget-object p1, p0, Lcom/s1243808733/util/BatchReplace$1;->val$et:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/util/BatchReplace$1;->targetDir:Ljava/lang/String;

    .line 103
    iget-object p1, p0, Lcom/s1243808733/util/BatchReplace$1;->val$et_old:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/util/BatchReplace$1;->old:Ljava/lang/String;

    .line 104
    iget-object p1, p0, Lcom/s1243808733/util/BatchReplace$1;->val$et_new:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/util/BatchReplace$1;->news:Ljava/lang/String;

    .line 105
    iget-object p1, p0, Lcom/s1243808733/util/BatchReplace$1;->val$et_filtration:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_3f

    move-object p1, v2

    goto :goto_4f

    :cond_3f
    iget-object p1, p0, Lcom/s1243808733/util/BatchReplace$1;->val$et_filtration:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_4f
    iput-object p1, p0, Lcom/s1243808733/util/BatchReplace$1;->filter:[Ljava/lang/String;

    .line 107
    iget-object p1, p0, Lcom/s1243808733/util/BatchReplace$1;->targetDir:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_ff

    new-instance p1, Ljava/io/File;

    iget-object v3, p0, Lcom/s1243808733/util/BatchReplace$1;->targetDir:Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_6c

    goto/16 :goto_ff

    .line 111
    :cond_6c
    iget-object p1, p0, Lcom/s1243808733/util/BatchReplace$1;->old:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_83

    .line 112
    iget-object p1, p0, Lcom/s1243808733/util/BatchReplace$1;->val$et_old:Landroid/widget/EditText;

    iget-boolean v0, p0, Lcom/s1243808733/util/BatchReplace$1;->val$isCN:Z

    if-eqz v0, :cond_7d

    const-string v0, "请输入要替换的内容"

    goto :goto_7f

    :cond_7d
    const-string v0, "Please enter what to replace"

    :goto_7f
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 115
    :cond_83
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 116
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/s1243808733/util/BatchReplace$1;->targetDir:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/s1243808733/util/BatchReplace$1$1;

    invoke-direct {v4, p0, p1}, Lcom/s1243808733/util/BatchReplace$1$1;-><init>(Lcom/s1243808733/util/BatchReplace$1;Ljava/lang/StringBuffer;)V

    invoke-direct {p0, v3, v4}, Lcom/s1243808733/util/BatchReplace$1;->replace(Ljava/io/File;Lcom/s1243808733/util/BatchReplace$Listener;)V

    .line 125
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, p0, Lcom/s1243808733/util/BatchReplace$1;->val$isCN:Z

    if-eqz v5, :cond_a8

    const-string v5, "耗时"

    goto :goto_aa

    :cond_a8
    const-string v5, "time consuming"

    :goto_aa
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    long-to-double v0, v5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    const-string v0, "ms\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/s1243808733/util/BatchReplace$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    iget-boolean v0, p0, Lcom/s1243808733/util/BatchReplace$1;->val$isCN:Z

    if-eqz v0, :cond_d7

    const-string v0, "替换完成"

    goto :goto_d9

    :cond_d7
    const-string v0, "Replacement complete"

    :goto_d9
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 131
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/s1243808733/util/BatchReplace$1$2;

    invoke-direct {v0, p0, v3}, Lcom/s1243808733/util/BatchReplace$1$2;-><init>(Lcom/s1243808733/util/BatchReplace$1;Ljava/lang/StringBuffer;)V

    .line 132
    const v1, 0x1040001

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 139
    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 109
    :cond_ff
    :goto_ff
    iget-object p1, p0, Lcom/s1243808733/util/BatchReplace$1;->val$et:Landroid/widget/EditText;

    iget-boolean v0, p0, Lcom/s1243808733/util/BatchReplace$1;->val$isCN:Z

    if-eqz v0, :cond_108

    const-string v0, "路径不存在"

    goto :goto_10a

    :cond_108
    const-string v0, "path does not exist"

    :goto_10a
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method
