.class public Lcom/s1243808733/aide/util/CreateXMLDialog;
.super Ljava/lang/Object;
.source "CreateXMLDialog.java"


# direct methods
.method static bridge synthetic -$$Nest$smcreateXml(Landroid/app/AlertDialog;Landroid/widget/EditText;Ljava/io/File;Lcom/aide/common/ab;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/s1243808733/aide/util/CreateXMLDialog;->createXml(Landroid/app/AlertDialog;Landroid/widget/EditText;Ljava/io/File;Lcom/aide/common/ab;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createXml(Landroid/app/AlertDialog;Landroid/widget/EditText;Ljava/io/File;Lcom/aide/common/ab;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AlertDialog;",
            "Landroid/widget/EditText;",
            "Ljava/io/File;",
            "Lcom/aide/common/ab",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 104
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u65e0\u6548\u8f93\u5165"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 139
    :goto_1
    return-void

    .line 106
    :cond_0
    const-string v0, "invalid input"

    goto :goto_0

    .line 109
    :cond_1
    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".xml"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u6587\u4ef6\u5df2\u5b58\u5728"

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const-string v0, "file already exist"

    goto :goto_2

    .line 118
    :cond_4
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 119
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_5
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "layout"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 127
    invoke-static {}, Lcom/s1243808733/aide/util/CreateXMLDialog;->getBasicLayoutCode()Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_3
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Labcd/FileSystemUtils;->j6(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/aide/common/ab;->j6(Ljava/lang/Object;)V

    .line 139
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_1

    .line 128
    :cond_6
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "menu"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 129
    invoke-static {}, Lcom/s1243808733/aide/util/CreateXMLDialog;->getBasicMenuCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 130
    :cond_7
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "values"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 131
    invoke-static {}, Lcom/s1243808733/aide/util/CreateXMLDialog;->getEmptyResCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 133
    :cond_8
    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"

    goto :goto_3

    .line 139
    :catch_0
    move-exception v0

    .line 121
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "\u65e0\u6cd5\u5199\u5165"

    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_9
    const-string v0, "Unable to write"

    goto :goto_4
.end method

.method private static getBasicLayoutCode()Ljava/lang/String;
    .locals 1

    .line 144
    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<LinearLayout\n    xmlns:android=\"http://schemas.android.com/apk/res/android\"\n    xmlns:app=\"http://schemas.android.com/apk/res-auto\"\n    android:orientation=\"vertical\"\n    android:layout_width=\"match_parent\"\n    android:layout_height=\"match_parent\">\n    \n</LinearLayout>"

    return-object v0
.end method

.method private static getBasicMenuCode()Ljava/lang/String;
    .locals 1

    .line 156
    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<menu xmlns:android=\"http://schemas.android.com/apk/res/android\"\n\txmlns:app=\"http://schemas.android.com/apk/res-auto\">\n    \n    <item\n        android:id=\"@+id/item\"\n        android:title=\"Item\"/>\n    \n</menu>"

    return-object v0
.end method

.method private static getEmptyResCode()Ljava/lang/String;
    .locals 1

    .line 168
    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<resources>\n    \n</resources>"

    return-object v0
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/aide/common/ab;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/high16 v2, 0x41c00000    # 24.0f

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 25
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v0

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-virtual {v1, v0, v7, v2, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 27
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 28
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, -0x2

    invoke-virtual {v1, v2, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 40
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 43
    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v9, :cond_0

    .line 44
    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_0
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->toUpperCaseFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    const v6, 0x7f0d05ca

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 50
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u65b0\u5efa %s"

    :goto_0
    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 53
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u521b\u5efa"

    :goto_1
    invoke-virtual {v1, v0, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 54
    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 57
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 58
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v4, Lcom/s1243808733/aide/util/CreateXMLDialog$1;

    invoke-direct {v4, v0, v2, v3, p2}, Lcom/s1243808733/aide/util/CreateXMLDialog$1;-><init>(Landroid/app/AlertDialog;Landroid/widget/EditText;Ljava/io/File;Lcom/aide/common/ab;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 69
    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 70
    const/4 v1, 0x6

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 71
    new-instance v1, Lcom/s1243808733/aide/util/CreateXMLDialog$2;

    invoke-direct {v1, v0}, Lcom/s1243808733/aide/util/CreateXMLDialog$2;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 88
    new-instance v1, Lcom/s1243808733/aide/util/CreateXMLDialog$3;

    invoke-direct {v1, v0, v2, v3, p2}, Lcom/s1243808733/aide/util/CreateXMLDialog$3;-><init>(Landroid/app/AlertDialog;Landroid/widget/EditText;Ljava/io/File;Lcom/aide/common/ab;)V

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 99
    const-string v0, ""

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 50
    :cond_1
    const-string v0, "Create a %s"

    goto :goto_0

    .line 53
    :cond_2
    const-string v0, "create"

    goto :goto_1
.end method
