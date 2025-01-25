.class public Lcom/s1243808733/util/BatchReplace;
.super Ljava/lang/Object;
.source "BatchReplace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/util/BatchReplace$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 12

    .line 19
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v6

    .line 21
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 23
    const/high16 v2, 0x41c00000  # 24.0f

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v3, v4, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 25
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    if-eqz v6, :cond_25

    .line 26
    const-string v3, "目录或文件"

    goto :goto_27

    :cond_25
    const-string v3, "Directory or file"

    :goto_27
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_2f

    .line 27
    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :cond_2f
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    if-eqz v6, :cond_39

    .line 29
    const-string p1, "原内容"

    goto :goto_3b

    :cond_39
    const-string p1, "Old content"

    :goto_3b
    invoke-virtual {v3, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 30
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    if-eqz v6, :cond_48

    .line 31
    const-string p1, "新内容"

    goto :goto_4a

    :cond_48
    const-string p1, "New content"

    :goto_4a
    invoke-virtual {v4, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 32
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    if-eqz v6, :cond_57

    .line 33
    const-string p1, "后缀过滤 .java|.xml，可空"

    goto :goto_59

    :cond_57
    const-string p1, "Suffix filter .java|.xml, can be empty"

    :goto_59
    invoke-virtual {v5, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 34
    new-instance p1, Landroid/widget/CheckBox;

    invoke-direct {p1, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    if-eqz v6, :cond_66

    .line 35
    const-string v7, "替换子目录"

    goto :goto_68

    :cond_66
    const-string v7, "Replace subdirectory"

    :goto_68
    invoke-virtual {p1, v7}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 38
    const/4 v1, -0x1

    const/4 v7, -0x2

    invoke-virtual {v0, v2, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 39
    invoke-virtual {v0, v3, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 40
    invoke-virtual {v0, v4, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 41
    invoke-virtual {v0, v5, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 42
    invoke-virtual {v0, p1, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 44
    new-instance v7, Landroid/widget/ScrollView;

    invoke-direct {v7, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v7, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 46
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v6, :cond_91

    .line 47
    const-string v8, "批量替换"

    goto :goto_93

    :cond_91
    const-string v8, "Batch Replace"

    :goto_93
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 49
    const v7, 0x104000a

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 50
    const/high16 v7, 0x1040000

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 53
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    new-instance v9, Lcom/s1243808733/util/BatchReplace$1;

    move-object v0, v9

    move-object v1, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/s1243808733/util/BatchReplace$1;-><init>(Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;ZLandroid/app/Activity;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
