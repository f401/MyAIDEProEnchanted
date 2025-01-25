.class public Lcom/s1243808733/aide/util/QuickKey;
.super Ljava/lang/Object;
.source "QuickKey.java"


# direct methods
.method static bridge synthetic -$$Nest$smgetDefaultKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/s1243808733/aide/util/QuickKey;->getDefaultKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs check(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 113
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_1e

    .line 114
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v1

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1e
    return v0
.end method

.method private static getDefaultKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 104
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, ".java"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, ".c"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, ".cpp"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-static {p0, v1}, Lcom/s1243808733/aide/util/QuickKey;->check(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    const-string v2, "#sp\n{\n}\n(\n)\n;\n=\n\"\n|\n&\n!\n[\n]\n<\n>\n+\n-\n/\n*\n?\n:\n_"

    if-eqz v1, :cond_1b

    return-object v2

    .line 106
    :cond_1b
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".xml"

    aput-object v1, v0, v3

    const-string v1, ".htm"

    aput-object v1, v0, v4

    const-string v1, ".html"

    aput-object v1, v0, v5

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/QuickKey;->check(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_32

    .line 107
    const-string p0, "#sp\n<\n>\n/\n=\n\"\n:\n@\n+\n(\n)\n;\n,\n.\n?\n|\n\\\n&\n!\n[\n]\n{\n}\n_\n-"

    return-object p0

    :cond_32
    return-object v2
.end method

.method public static getKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 95
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".xml"

    aput-object v2, v0, v1

    const-string v3, ".htm"

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const-string v3, ".html"

    const/4 v5, 0x2

    aput-object v3, v0, v5

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/QuickKey;->check(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move-object p0, v2

    goto :goto_2b

    .line 97
    :cond_1a
    new-array v0, v5, [Ljava/lang/String;

    const-string v2, ".cpp"

    aput-object v2, v0, v1

    const-string v1, ".c"

    aput-object v1, v0, v4

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/QuickKey;->check(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    move-object p0, v1

    .line 100
    :cond_2b
    :goto_2b
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0}, Lcom/s1243808733/aide/util/QuickKey;->getDefaultKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static quickKeyTextOnClick(Ljava/lang/Object;Landroid/view/View;)V
    .registers 4

    .line 20
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "onClick_"

    invoke-virtual {p0, v1, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "input_method"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 27
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getOConsole()Lcom/aide/ui/views/editor/OConsole;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    return-void
.end method

.method public static setQuickBarVisibility(Ljava/lang/Object;Z)V
    .registers 7

    .line 32
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    .line 33
    const-string v0, "Hw"

    invoke-virtual {p0, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_48

    .line 35
    const v0, 0x7f080143

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 36
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "disable_quickkeybar"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x8

    const v4, 0x7f08013f

    if-nez v1, :cond_41

    .line 37
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_34

    goto :goto_41

    .line 40
    :cond_34
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p1, :cond_3b

    goto :goto_3d

    :cond_3b
    const/16 v3, 0x8

    :goto_3d
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_48

    .line 38
    :cond_41
    :goto_41
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_48
    :goto_48
    return-void
.end method

.method public static showDialog(Landroid/app/Activity;)V
    .registers 4

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".java"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".xml"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ".c"

    aput-object v2, v0, v1

    .line 47
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "选择"

    goto :goto_22

    :cond_20
    const-string v2, "Choose"

    :goto_22
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/aide/util/QuickKey$1;

    invoke-direct {v2, p0, v0}, Lcom/s1243808733/aide/util/QuickKey$1;-><init>(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static showModifyKeyDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 8

    .line 61
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 63
    const/high16 v2, 0x41c00000  # 24.0f

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v5

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-static {v4}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v4

    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 64
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-static {p1}, Lcom/s1243808733/aide/util/QuickKey;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setMinLines(I)V

    .line 67
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 68
    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 69
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3

    if-eqz v3, :cond_4b

    const-string v3, "修改快捷键"

    goto :goto_4d

    :cond_4b
    const-string v3, "Modify shortcut key"

    :goto_4d
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 71
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 72
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_72

    const-string v0, "默认"

    goto :goto_74

    :cond_72
    const-string v0, "Default"

    :goto_74
    new-instance v1, Lcom/s1243808733/aide/util/QuickKey$3;

    invoke-direct {v1, p1}, Lcom/s1243808733/aide/util/QuickKey$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 80
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_86

    const-string v0, "保存"

    goto :goto_88

    :cond_86
    const-string v0, "Save"

    :goto_88
    new-instance v1, Lcom/s1243808733/aide/util/QuickKey$2;

    invoke-direct {v1, p1, v2}, Lcom/s1243808733/aide/util/QuickKey$2;-><init>(Ljava/lang/String;Landroid/widget/EditText;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 89
    const/high16 p1, 0x1040000

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 90
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 91
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
