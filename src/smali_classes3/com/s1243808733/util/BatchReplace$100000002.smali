.class Lcom/s1243808733/util/BatchReplace$100000002;
.super Ljava/lang/Object;
.source "BatchReplace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private filter:[Ljava/lang/String;

.field private news:Ljava/lang/String;

.field private old:Ljava/lang/String;

.field private targetDir:Ljava/lang/String;

.field private final val$activity:Landroid/app/Activity;

.field private final val$cb:Landroid/widget/CheckBox;

.field private final val$et:Landroid/widget/EditText;

.field private final val$et_filtration:Landroid/widget/EditText;

.field private final val$et_new:Landroid/widget/EditText;

.field private final val$et_old:Landroid/widget/EditText;

.field private final val$isCN:Z


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;ZLandroid/app/Activity;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/BatchReplace$100000002;->val$cb:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/s1243808733/util/BatchReplace$100000002;->val$et:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/s1243808733/util/BatchReplace$100000002;->val$et_old:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/s1243808733/util/BatchReplace$100000002;->val$et_new:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/s1243808733/util/BatchReplace$100000002;->val$et_filtration:Landroid/widget/EditText;

    iput-boolean p6, p0, Lcom/s1243808733/util/BatchReplace$100000002;->val$isCN:Z

    iput-object p7, p0, Lcom/s1243808733/util/BatchReplace$100000002;->val$activity:Landroid/app/Activity;

    return-void
.end method

.method private replace(Ljava/io/File;Lcom/s1243808733/util/BatchReplace$Listener;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/s1243808733/util/BatchReplace$Listener;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 66
    iget-object v0, p0, Lcom/s1243808733/util/BatchReplace$100000002;->filter:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v1, v2

    .line 77
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 78
    invoke-static {p1}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    iget-object v1, p0, Lcom/s1243808733/util/BatchReplace$100000002;->old:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2, p1}, Lcom/s1243808733/util/BatchReplace$Listener;->onReplace(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/s1243808733/util/BatchReplace$100000002;->old:Ljava/lang/String;

    iget-object v2, p0, Lcom/s1243808733/util/BatchReplace$100000002;->news:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    .line 93
    :cond_1
    return-void

    .line 70
    :cond_2
    iget-object v3, p0, Lcom/s1243808733/util/BatchReplace$100000002;->filter:[Ljava/lang/String;

    move v0, v1

    .line 73
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 70
    aget-object v4, v3, v0

    .line 71
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    .line 73
    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 86
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_1

    .line 93
    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 88
    aget-object v2, v0, v1

    .line 89
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 90
    iget-object v3, p0, Lcom/s1243808733/util/BatchReplace$100000002;->val$cb:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 91
    invoke-direct {p0, v2, p2}, Lcom/s1243808733/util/BatchReplace$100000002;->replace(Ljava/io/File;Lcom/s1243808733/util/BatchReplace$Listener;)V

    .line 93
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    invoke-direct {p0, v2, p2}, Lcom/s1243808733/util/BatchReplace$100000002;->replace(Ljava/io/File;Lcom/s1243808733/util/BatchReplace$Listener;)V

    goto :goto_3
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 102
    iget-object v0, p0, Lcom/s1243808733/util/BatchReplace$100000002;->val$et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/util/BatchReplace$100000002;->targetDir:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/s1243808733/util/BatchReplace$100000002;->val$et_old:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/util/BatchReplace$100000002;->old:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/s1243808733/util/BatchReplace$100000002;->val$et_new:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/util/BatchReplace$100000002;->news:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/s1243808733/util/BatchReplace$100000002;->val$et_filtration:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/s1243808733/util/BatchReplace$100000002;->filter:[Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/s1243808733/util/BatchReplace$100000002;->targetDir:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/s1243808733/util/BatchReplace$100000002;->targetDir:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/util/BatchReplace$100000002;->val$et:Landroid/widget/EditText;

    iget-boolean v0, p0, Lcom/s1243808733/util/BatchReplace$100000002;->val$isCN:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u8def\u5f84\u4e0d\u5b58\u5728"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 129
    :goto_2
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/util/BatchReplace$100000002;->val$et_filtration:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_2
    const-string v0, "path does not exist"

    goto :goto_1

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/s1243808733/util/BatchReplace$100000002;->old:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 112
    iget-object v1, p0, Lcom/s1243808733/util/BatchReplace$100000002;->val$et_old:Landroid/widget/EditText;

    iget-boolean v0, p0, Lcom/s1243808733/util/BatchReplace$100000002;->val$isCN:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "\u8bf7\u8f93\u5165\u8981\u66ff\u6362\u7684\u5185\u5bb9"

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    const-string v0, "Please enter what to replace"

    goto :goto_3

    .line 115
    :cond_5
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 116
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/s1243808733/util/BatchReplace$100000002;->targetDir:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/s1243808733/util/BatchReplace$100000002$100000000;

    invoke-direct {v5, p0, v4}, Lcom/s1243808733/util/BatchReplace$100000002$100000000;-><init>(Lcom/s1243808733/util/BatchReplace$100000002;Ljava/lang/StringBuffer;)V

    invoke-direct {p0, v0, v5}, Lcom/s1243808733/util/BatchReplace$100000002;->replace(Ljava/io/File;Lcom/s1243808733/util/BatchReplace$Listener;)V

    .line 125
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 126
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    iget-boolean v0, p0, Lcom/s1243808733/util/BatchReplace$100000002;->val$isCN:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "\u8017\u65f6"

    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    long-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/s1243808733/util/BatchReplace$100000002;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/s1243808733/util/BatchReplace$100000002;->val$isCN:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "\u66ff\u6362\u5b8c\u6210"

    :goto_5
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040001

    new-instance v3, Lcom/s1243808733/util/BatchReplace$100000002$100000001;

    invoke-direct {v3, p0, v5}, Lcom/s1243808733/util/BatchReplace$100000002$100000001;-><init>(Lcom/s1243808733/util/BatchReplace$100000002;Ljava/lang/StringBuffer;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x1040000

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 126
    :cond_6
    const-string v0, "time consuming"

    goto :goto_4

    .line 129
    :cond_7
    const-string v0, "Replacement complete"

    goto :goto_5
.end method
