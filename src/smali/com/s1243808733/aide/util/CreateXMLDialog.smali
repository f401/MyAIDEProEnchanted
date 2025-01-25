.class public Lcom/s1243808733/aide/util/CreateXMLDialog;
.super Ljava/lang/Object;
.source "CreateXMLDialog.java"


# direct methods
.method static bridge synthetic -$$Nest$smcreateXml(Landroid/app/AlertDialog;Landroid/widget/EditText;Ljava/io/File;Lcom/aide/common/ab;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/s1243808733/aide/util/CreateXMLDialog;->createXml(Landroid/app/AlertDialog;Landroid/widget/EditText;Ljava/io/File;Lcom/aide/common/ab;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createXml(Landroid/app/AlertDialog;Landroid/widget/EditText;Ljava/io/File;Lcom/aide/common/ab;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AlertDialog;",
            "Landroid/widget/EditText;",
            "Ljava/io/File;",
            "Lcom/aide/common/ab<",
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

    if-eqz v1, :cond_21

    .line 106
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p0

    if-eqz p0, :cond_1b

    const-string p0, "无效输入"

    goto :goto_1d

    :cond_1b
    const-string p0, "invalid input"

    :goto_1d
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 109
    :cond_21
    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    :cond_38
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 114
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p0

    if-eqz p0, :cond_4c

    const-string p0, "文件已存在"

    goto :goto_4e

    :cond_4c
    const-string p0, "file already exist"

    :goto_4e
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 118
    :cond_52
    :try_start_52
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 119
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5b} :catch_a2

    .line 126
    :cond_5b
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "layout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 127
    invoke-static {}, Lcom/s1243808733/aide/util/CreateXMLDialog;->getBasicLayoutCode()Ljava/lang/String;

    move-result-object p1

    goto :goto_90

    .line 128
    :cond_6c
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "menu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 129
    invoke-static {}, Lcom/s1243808733/aide/util/CreateXMLDialog;->getBasicMenuCode()Ljava/lang/String;

    move-result-object p1

    goto :goto_90

    .line 130
    :cond_7d
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "values"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8e

    .line 131
    invoke-static {}, Lcom/s1243808733/aide/util/CreateXMLDialog;->getEmptyResCode()Ljava/lang/String;

    move-result-object p1

    goto :goto_90

    .line 133
    :cond_8e
    const-string p1, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"

    .line 136
    :goto_90
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Labcd/FileSystemUtils;->j6(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/aide/common/ab;->j6(Ljava/lang/Object;)V

    .line 139
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    :catch_a2
    move-exception p0

    .line 121
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p0

    if-eqz p0, :cond_ac

    const-string p0, "无法写入"

    goto :goto_ae

    :cond_ac
    const-string p0, "Unable to write"

    :goto_ae
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static getBasicLayoutCode()Ljava/lang/String;
    .registers 1

    .line 144
    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<LinearLayout\n    xmlns:android=\"http://schemas.android.com/apk/res/android\"\n    xmlns:app=\"http://schemas.android.com/apk/res-auto\"\n    android:orientation=\"vertical\"\n    android:layout_width=\"match_parent\"\n    android:layout_height=\"match_parent\">\n    \n</LinearLayout>"

    return-object v0
.end method

.method private static getBasicMenuCode()Ljava/lang/String;
    .registers 1

    .line 156
    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<menu xmlns:android=\"http://schemas.android.com/apk/res/android\"\n\txmlns:app=\"http://schemas.android.com/apk/res-auto\">\n    \n    <item\n        android:id=\"@+id/item\"\n        android:title=\"Item\"/>\n    \n</menu>"

    return-object v0
.end method

.method private static getEmptyResCode()Ljava/lang/String;
    .registers 1

    .line 168
    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<resources>\n    \n</resources>"

    return-object v0
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 25
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const/high16 v1, 0x41c00000  # 24.0f

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 27
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 28
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-virtual {v0, v2, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 40
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 43
    const-string v6, "-"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v5, :cond_3a

    .line 44
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 46
    :cond_3a
    invoke-static {p1}, Lcom/s1243808733/util/Utils;->toUpperCaseFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 48
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    const v8, 0x7f0d05ca

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 50
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v6

    if-eqz v6, :cond_65

    const-string v6, "新建 %s"

    goto :goto_67

    :cond_65
    const-string v6, "Create a %s"

    :goto_67
    new-array v7, v1, [Ljava/lang/Object;

    aput-object p1, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 51
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 53
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_80

    const-string p1, "创建"

    goto :goto_82

    :cond_80
    const-string p1, "create"

    :goto_82
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 54
    const/high16 p1, 0x1040000

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 57
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 58
    invoke-virtual {p0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Lcom/s1243808733/aide/util/CreateXMLDialog$1;

    invoke-direct {v0, p0, v2, v4, p2}, Lcom/s1243808733/aide/util/CreateXMLDialog$1;-><init>(Landroid/app/AlertDialog;Landroid/widget/EditText;Ljava/io/File;Lcom/aide/common/ab;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 69
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 70
    const/4 p1, 0x6

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 71
    new-instance p1, Lcom/s1243808733/aide/util/CreateXMLDialog$2;

    invoke-direct {p1, p0}, Lcom/s1243808733/aide/util/CreateXMLDialog$2;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 88
    new-instance p1, Lcom/s1243808733/aide/util/CreateXMLDialog$3;

    invoke-direct {p1, p0, v2, v4, p2}, Lcom/s1243808733/aide/util/CreateXMLDialog$3;-><init>(Landroid/app/AlertDialog;Landroid/widget/EditText;Ljava/io/File;Lcom/aide/common/ab;)V

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 99
    const-string p0, ""

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
