.class public Lcom/s1243808733/aide/util/QuickKey;
.super Ljava/lang/Object;
.source "QuickKey.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000003(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/s1243808733/aide/util/QuickKey;->getDefaultKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs check(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x0

    move v0, v1

    .line 113
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 119
    :goto_1
    return v1

    .line 114
    :cond_0
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v0

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    const/4 v1, 0x1

    goto :goto_1

    .line 113
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getDefaultKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, ".java"

    aput-object v1, v0, v2

    const-string v1, ".c"

    aput-object v1, v0, v3

    const-string v1, ".cpp"

    aput-object v1, v0, v4

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/QuickKey;->check(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "#sp\n{\n}\n(\n)\n;\n=\n\"\n|\n&\n!\n[\n]\n<\n>\n+\n-\n/\n*\n?\n:\n_"

    .line 109
    :goto_0
    return-object v0

    .line 106
    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, ".xml"

    aput-object v1, v0, v2

    const-string v1, ".htm"

    aput-object v1, v0, v3

    const-string v1, ".html"

    aput-object v1, v0, v4

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/QuickKey;->check(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    const-string v0, "#sp\n<\n>\n/\n=\n\"\n:\n@\n+\n(\n)\n;\n,\n.\n?\n|\n\\\n&\n!\n[\n]\n{\n}\n_\n-"

    goto :goto_0

    .line 109
    :cond_1
    const-string v0, "#sp\n{\n}\n(\n)\n;\n=\n\"\n|\n&\n!\n[\n]\n<\n>\n+\n-\n/\n*\n?\n:\n_"

    goto :goto_0
.end method

.method public static getKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".xml"

    aput-object v1, v0, v2

    const-string v1, ".htm"

    aput-object v1, v0, v3

    const-string v1, ".html"

    aput-object v1, v0, v4

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/QuickKey;->check(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    const-string p0, ".xml"

    .line 100
    :cond_0
    :goto_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {p0}, Lcom/s1243808733/aide/util/QuickKey;->getDefaultKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ".cpp"

    aput-object v1, v0, v2

    const-string v1, ".c"

    aput-object v1, v0, v3

    invoke-static {p0, v0}, Lcom/s1243808733/aide/util/QuickKey;->check(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string p0, ".c"

    goto :goto_0
.end method

.method public static quickKeyTextOnClick(Ljava/lang/Object;Landroid/view/View;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    .line 21
    const-string v1, "onClick_"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 27
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getOConsole()Lcom/aide/ui/views/editor/OConsole;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    return-void
.end method

.method public static setQuickBarVisibility(Ljava/lang/Object;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    const v6, 0x7f08013f

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 32
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    .line 33
    const-string v1, "Hw"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 34
    if-eqz v0, :cond_1

    .line 35
    const v1, 0x7f080143

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 36
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "disable_quickkeybar"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 38
    :cond_0
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 40
    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_3

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method public static showDialog(Landroid/app/Activity;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 46
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, ".java"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, ".xml"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, ".c"

    aput-object v2, v1, v0

    .line 47
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u9009\u62e9"

    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/s1243808733/aide/util/QuickKey$100000000;

    invoke-direct {v2, p0, v1}, Lcom/s1243808733/aide/util/QuickKey$100000000;-><init>(Landroid/app/Activity;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 47
    :cond_0
    const-string v0, "Choose"

    goto :goto_0
.end method

.method public static showModifyKeyDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/16 v4, 0x18

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 61
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 63
    int-to-float v2, v4

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    int-to-float v3, v5

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    int-to-float v4, v4

    invoke-static {v4}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v4

    int-to-float v5, v5

    invoke-static {v5}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

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
    invoke-virtual {v0, v2, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 68
    invoke-virtual {v1, v0, v7, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 69
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u4fee\u6539\u5feb\u6377\u952e"

    :goto_0
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v6, "("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u9ed8\u8ba4"

    :goto_1
    new-instance v3, Lcom/s1243808733/aide/util/QuickKey$100000001;

    invoke-direct {v3, p1}, Lcom/s1243808733/aide/util/QuickKey$100000001;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u4fdd\u5b58"

    :goto_2
    new-instance v3, Lcom/s1243808733/aide/util/QuickKey$100000002;

    invoke-direct {v3, p1, v2}, Lcom/s1243808733/aide/util/QuickKey$100000002;-><init>(Ljava/lang/String;Landroid/widget/EditText;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 69
    :cond_0
    const-string v0, "Modify shortcut key"

    goto :goto_0

    :cond_1
    const-string v0, "Default"

    goto :goto_1

    :cond_2
    const-string v0, "Save"

    goto :goto_2
.end method
