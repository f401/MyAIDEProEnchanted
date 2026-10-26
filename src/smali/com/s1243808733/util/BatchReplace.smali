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
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 11

    const/4 v2, 0x0

    const/high16 v1, 0x41c00000    # 24.0f

    const/4 v10, 0x0

    const/4 v8, -0x2

    const/4 v9, -0x1

    .line 19
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v6

    .line 21
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 23
    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v0

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    invoke-virtual {v7, v0, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 25
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    if-eqz v6, :cond_1

    .line 26
    const-string v0, "\u76ee\u5f55\u6216\u6587\u4ef6"

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :cond_0
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    if-eqz v6, :cond_2

    .line 29
    const-string v0, "\u539f\u5185\u5bb9"

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 30
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    if-eqz v6, :cond_3

    .line 31
    const-string v0, "\u65b0\u5185\u5bb9"

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 32
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    if-eqz v6, :cond_4

    .line 33
    const-string v0, "\u540e\u7f00\u8fc7\u6ee4 .java|.xml\uff0c\u53ef\u7a7a"

    :goto_3
    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 34
    new-instance v1, Landroid/widget/CheckBox;

    invoke-direct {v1, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    if-eqz v6, :cond_5

    .line 35
    const-string v0, "\u66ff\u6362\u5b50\u76ee\u5f55"

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 36
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 38
    invoke-virtual {v7, v2, v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 39
    invoke-virtual {v7, v3, v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 40
    invoke-virtual {v7, v4, v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 41
    invoke-virtual {v7, v5, v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 42
    invoke-virtual {v7, v1, v9, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 44
    new-instance v8, Landroid/widget/ScrollView;

    invoke-direct {v8, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v8, v7}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 46
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v6, :cond_6

    .line 47
    const-string v0, "\u6279\u91cf\u66ff\u6362"

    :goto_5
    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 48
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 49
    const v7, 0x104000a

    invoke-virtual {v0, v7, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 50
    const/high16 v7, 0x1040000

    invoke-virtual {v0, v7, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 53
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    new-instance v0, Lcom/s1243808733/util/BatchReplace$1;

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/s1243808733/util/BatchReplace$1;-><init>(Landroid/widget/CheckBox;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;ZLandroid/app/Activity;)V

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 26
    :cond_1
    const-string v0, "Directory or file"

    goto/16 :goto_0

    .line 29
    :cond_2
    const-string v0, "Old content"

    goto :goto_1

    .line 31
    :cond_3
    const-string v0, "New content"

    goto :goto_2

    .line 33
    :cond_4
    const-string v0, "Suffix filter .java|.xml, can be empty"

    goto :goto_3

    .line 35
    :cond_5
    const-string v0, "Replace subdirectory"

    goto :goto_4

    .line 47
    :cond_6
    const-string v0, "Batch Replace"

    goto :goto_5
.end method
