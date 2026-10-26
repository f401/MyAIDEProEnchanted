.class public Lcom/s1243808733/util/JavaEscape;
.super Ljava/lang/Object;
.source "JavaEscape.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escapeText(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 80
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 81
    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v1, "\'"

    const-string v2, "\\\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 84
    if-eqz p1, :cond_0

    .line 85
    const-string v1, "\n"

    const-string v2, "\"\n + \"\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static invertEscapeText(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 94
    if-eqz p1, :cond_0

    .line 95
    const-string v0, "\"\n + \"\\n"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_0
    const-string v1, "\\\\"

    const-string v2, "\\"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string v1, "\\\""

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string v1, "\\\'"

    const-string v2, "\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :cond_0
    const-string v0, "\\n"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v7, -0x2

    const/high16 v2, 0x41c00000    # 24.0f

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 15
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 17
    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 19
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :cond_0
    new-instance v2, Landroid/widget/CheckBox;

    invoke-direct {v2, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 25
    const-string v3, "appendLine"

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {v0, v1, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 28
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 30
    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {v3, v0, v5, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 34
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u4ee3\u7801\u8f6c\u4e49"

    :goto_0
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 36
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 38
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u8f6c\u4e49"

    :goto_1
    invoke-virtual {v3, v0, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 39
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u53cd\u8f6c\u4e49"

    :goto_2
    invoke-virtual {v3, v0, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 40
    const v3, 0x1040001

    invoke-virtual {v0, v3, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 43
    new-instance v3, Lcom/s1243808733/util/JavaEscape$1;

    invoke-direct {v3, v0}, Lcom/s1243808733/util/JavaEscape$1;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 53
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/s1243808733/util/JavaEscape$2;

    invoke-direct {v4, v1, v2}, Lcom/s1243808733/util/JavaEscape$2;-><init>(Landroid/widget/EditText;Landroid/widget/CheckBox;)V

    .line 54
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    new-instance v4, Lcom/s1243808733/util/JavaEscape$3;

    invoke-direct {v4, v1, v2}, Lcom/s1243808733/util/JavaEscape$3;-><init>(Landroid/widget/EditText;Landroid/widget/CheckBox;)V

    .line 62
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v2, Lcom/s1243808733/util/JavaEscape$4;

    invoke-direct {v2, v1}, Lcom/s1243808733/util/JavaEscape$4;-><init>(Landroid/widget/EditText;)V

    .line 70
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 35
    :cond_1
    const-string v0, "Code escape"

    goto :goto_0

    .line 38
    :cond_2
    const-string v0, "Escape"

    goto :goto_1

    .line 39
    :cond_3
    const-string v0, "Invert Escape"

    goto :goto_2
.end method
