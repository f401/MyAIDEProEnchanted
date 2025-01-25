.class public Lcom/s1243808733/util/JavaEscape;
.super Ljava/lang/Object;
.source "JavaEscape.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escapeText(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    .line 80
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 81
    const-string v0, "\""

    const-string v1, "\\\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 82
    const-string v0, "\'"

    const-string v1, "\\\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 84
    const-string v0, "\n"

    if-eqz p1, :cond_23

    .line 85
    const-string p1, "\"\n + \"\\n"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_29

    .line 87
    :cond_23
    const-string p1, "\\n"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :goto_29
    return-object p0
.end method

.method public static invertEscapeText(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    .line 94
    const-string v0, "\n"

    if-eqz p1, :cond_b

    .line 95
    const-string p1, "\"\n + \"\\n"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    .line 97
    :cond_b
    const-string p1, "\\n"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 99
    :goto_11
    const-string p1, "\\\\"

    const-string v0, "\\"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 101
    const-string p1, "\\\""

    const-string v0, "\""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 102
    const-string p1, "\\\'"

    const-string v0, "\'"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 7

    .line 15
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 17
    const/high16 v1, 0x41c00000  # 24.0f

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 19
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_21

    .line 21
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :cond_21
    new-instance p1, Landroid/widget/CheckBox;

    invoke-direct {p1, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 25
    const-string v2, "appendLine"

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 27
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 30
    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {v4, v0, v2, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 34
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p0

    if-eqz p0, :cond_49

    const-string p0, "代码转义"

    goto :goto_4b

    :cond_49
    const-string p0, "Code escape"

    :goto_4b
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 36
    invoke-virtual {p0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 38
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_5c

    const-string v0, "转义"

    goto :goto_5e

    :cond_5c
    const-string v0, "Escape"

    :goto_5e
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 39
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string v0, "反转义"

    goto :goto_6e

    :cond_6c
    const-string v0, "Invert Escape"

    :goto_6e
    invoke-virtual {p0, v0, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 40
    const v0, 0x1040001

    invoke-virtual {p0, v0, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 42
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 43
    new-instance v0, Lcom/s1243808733/util/JavaEscape$1;

    invoke-direct {v0, p0}, Lcom/s1243808733/util/JavaEscape$1;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 53
    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v2, Lcom/s1243808733/util/JavaEscape$2;

    invoke-direct {v2, v1, p1}, Lcom/s1243808733/util/JavaEscape$2;-><init>(Landroid/widget/EditText;Landroid/widget/CheckBox;)V

    .line 54
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v2, Lcom/s1243808733/util/JavaEscape$3;

    invoke-direct {v2, v1, p1}, Lcom/s1243808733/util/JavaEscape$3;-><init>(Landroid/widget/EditText;Landroid/widget/CheckBox;)V

    .line 62
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const/4 p1, -0x3

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    new-instance p1, Lcom/s1243808733/util/JavaEscape$4;

    invoke-direct {p1, v1}, Lcom/s1243808733/util/JavaEscape$4;-><init>(Landroid/widget/EditText;)V

    .line 70
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
