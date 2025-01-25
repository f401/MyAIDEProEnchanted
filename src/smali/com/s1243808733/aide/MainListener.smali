.class public Lcom/s1243808733/aide/MainListener;
.super Ljava/lang/Object;
.source "MainListener.java"


# direct methods
.method static bridge synthetic -$$Nest$smgetSelectionContent()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/s1243808733/aide/MainListener;->getSelectionContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addProjectInfoDialogMoreButton(Landroid/app/AlertDialog$Builder;Landroid/app/Activity;)V
    .registers 9

    if-eqz p0, :cond_84

    .line 554
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 556
    new-instance v0, Landroid/text/SpannableString;

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Zk;->QX()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 557
    invoke-virtual {v0}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v1

    .line 559
    const-string v2, "(?:^|\\s)(/\\S+(?:\\s\\S+)*)(?=\\s|$)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 561
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 563
    const v3, 0x1010212

    invoke-static {p1, v3}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    .line 564
    :cond_2b
    :goto_2b
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 565
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 566
    invoke-static {p1}, Lcom/blankj/utilcode/util/FileUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 567
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    move v4, v3

    .line 569
    :goto_44
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5f

    .line 570
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_5c

    .line 571
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_5c

    move v3, v4

    goto :goto_5f

    :cond_5c
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 579
    :cond_5f
    :goto_5f
    new-instance v4, Lcom/s1243808733/aide/MainListener$7;

    invoke-direct {v4, p1}, Lcom/s1243808733/aide/MainListener$7;-><init>(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    .line 579
    const/16 v5, 0x21

    invoke-virtual {v0, v4, v3, p1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2b

    .line 597
    :cond_6e
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 599
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_7a

    const-string p1, "备份项目"

    goto :goto_7c

    :cond_7a
    const-string p1, "Backup"

    :goto_7c
    new-instance v0, Lcom/s1243808733/aide/MainListener$8;

    invoke-direct {v0}, Lcom/s1243808733/aide/MainListener$8;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_84
    return-void
.end method

.method private static getSelectionContent()Ljava/lang/String;
    .registers 1

    .line 522
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getAIDEEditorPager()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->getSelectionContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)V
    .registers 2

    .line 515
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    .line 516
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    return-void
.end method

.method public static onAddToProject()V
    .registers 7

    .line 341
    invoke-static {}, Lcom/s1243808733/util/Utils;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 343
    const v1, 0x7f0d05b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 344
    const v2, 0x7f0d05b8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 345
    const v3, 0x7f0d05bc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 346
    const v4, 0x7f0d05bd

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string v4, "添加依赖"

    goto :goto_2f

    :cond_2d
    const-string v4, "Add Dependency"

    :goto_2f
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v0, v5, v1

    const/4 v0, 0x4

    aput-object v4, v5, v0

    .line 349
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 350
    const v1, 0x7f0d0023

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/MainListener$2;

    invoke-direct {v1, v5}, Lcom/s1243808733/aide/MainListener$2;-><init>([Ljava/lang/String;)V

    .line 351
    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static onCnommonEditTextDialogShow(Ljava/lang/Object;Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 14

    .line 70
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    .line 74
    const-string v1, "u7"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 82
    new-instance v6, Landroid/widget/EditText;

    invoke-direct {v6, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 83
    const-string v1, "J8"

    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 86
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 88
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 89
    const/high16 v3, 0x41c00000  # 24.0f

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v4

    const/high16 v7, 0x41200000  # 10.0f

    invoke-static {v7}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v7

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    const/4 v9, 0x0

    invoke-virtual {v2, v4, v7, v3, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 90
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 92
    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v2, v6, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 94
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 96
    const-string v4, "we"

    invoke-virtual {v0, v4}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 97
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 98
    invoke-static {v5}, Lcom/blankj/utilcode/util/StringUtils;->isTrimEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7d

    .line 99
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 103
    :cond_7d
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 104
    const-string v2, "com.aide.common.C"

    invoke-static {v2}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v2

    const/4 v7, 0x3

    new-array v10, v7, [Ljava/lang/Object;

    aput-object p0, v10, v9

    aput-object p1, v10, v1

    const/4 v11, 0x2

    aput-object v6, v10, v11

    invoke-virtual {v2, v10}, Lcom/blankj/utilcode/util/ReflectUtils;->newInstance([Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    const v10, 0x104000a

    invoke-virtual {v3, v10, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 106
    const/high16 v2, 0x1040000

    const/4 v10, 0x0

    invoke-virtual {v3, v2, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    const-string v2, "tp"

    invoke-virtual {v0, v2}, Lcom/blankj/utilcode/util/ReflectUtils;->field(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_e8

    .line 110
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v10, "none"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 111
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d06a4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_cd
    const-string v2, "com.aide.common.D"

    invoke-static {v2}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v9

    aput-object p1, v7, v1

    aput-object v6, v7, v11

    invoke-virtual {v2, v7}, Lcom/blankj/utilcode/util/ReflectUtils;->newInstance([Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 116
    :cond_e8
    const-string v0, "com.aide.common.E"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p0, v2, v9

    invoke-virtual {v0, v2}, Lcom/blankj/utilcode/util/ReflectUtils;->newInstance([Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v3, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 122
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 124
    new-instance v0, Lcom/s1243808733/aide/MainListener$1;

    move-object v2, v0

    move-object v3, p1

    move-object v7, p0

    invoke-direct/range {v2 .. v8}, Lcom/s1243808733/aide/MainListener$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;Landroid/app/AlertDialog;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 336
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object p0
.end method

.method public static onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .registers 11

    .line 430
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    .line 432
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "选择操作"

    goto :goto_f

    :cond_d
    const-string v1, "Select actions"

    :goto_f
    invoke-virtual {p0, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 435
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-eqz v1, :cond_e2

    .line 436
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0800e4

    if-ne v2, v3, :cond_28

    goto/16 :goto_e2

    .line 440
    :cond_28
    const v2, 0x7f08007e

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 442
    const v3, 0x7f080078

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 443
    const v4, 0x7f080077

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 444
    const v5, 0x7f080074

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 445
    const v6, 0x7f08008f

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 447
    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_56

    .line 448
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_79

    .line 450
    :cond_56
    invoke-static {}, Lcom/s1243808733/aide/MainListener;->getSelectionContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 451
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 452
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 453
    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 454
    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_79

    .line 456
    :cond_6d
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 457
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 458
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 459
    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 463
    :goto_79
    const v2, 0x7f0801b6

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_e2

    .line 465
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    .line 467
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 468
    const-string v2, "翻译内容"

    invoke-interface {p1, v2}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 469
    new-instance v3, Lcom/s1243808733/aide/MainListener$3;

    invoke-direct {v3, v0, p0}, Lcom/s1243808733/aide/MainListener$3;-><init>(Lcom/aide/ui/MainActivity;Landroid/view/ActionMode;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 480
    :cond_9a
    const-string v2, "layout"

    invoke-static {v2}, Lcom/s1243808733/aide/util/AIDEUtils;->checkEditorFileParentName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 481
    const-string v2, ".xml"

    invoke-static {v2}, Lcom/s1243808733/aide/util/AIDEUtils;->checkEditorFileNameSuffix(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 482
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2

    if-eqz v2, :cond_b3

    const-string v2, "视图工具"

    goto :goto_b5

    :cond_b3
    const-string v2, "View tools"

    :goto_b5
    invoke-interface {p1, v2}, Landroid/view/SubMenu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    .line 483
    const-string v3, "View2Java"

    invoke-interface {v2, v3}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    .line 484
    const-string v4, "View2Style"

    invoke-interface {v2, v4}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 485
    new-instance v4, Lcom/s1243808733/aide/MainListener$4;

    invoke-direct {v4, v0, p0}, Lcom/s1243808733/aide/MainListener$4;-><init>(Lcom/aide/ui/MainActivity;Landroid/view/ActionMode;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 494
    new-instance v3, Lcom/s1243808733/aide/MainListener$5;

    invoke-direct {v3, v0, p0}, Lcom/s1243808733/aide/MainListener$5;-><init>(Lcom/aide/ui/MainActivity;Landroid/view/ActionMode;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 505
    :cond_d5
    invoke-interface {p1}, Landroid/view/SubMenu;->size()I

    move-result p0

    if-nez p0, :cond_e2

    .line 506
    invoke-interface {p1}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_e2
    :goto_e2
    return-void
.end method

.method public static onCreateClass(Ljava/lang/String;Lcom/aide/common/ab;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aide/common/ab<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 372
    const-string v0, "abcd.Zi"

    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/String;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    .line 374
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "Hw"

    invoke-virtual {v0, v2, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 375
    invoke-static {}, Lcom/s1243808733/util/Utils;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/s1243808733/aide/util/CreateXMLDialog;->showDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/aide/common/ab;)V

    goto :goto_2d

    .line 378
    :cond_26
    invoke-static {}, Lcom/s1243808733/util/Utils;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/s1243808733/aide/util/CreateClassDialog;->showDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/aide/common/ab;)V

    :goto_2d
    return-void
.end method

.method public static onShowCreateDialog(Labcd/nf;)V
    .registers 1

    .line 368
    invoke-static {}, Lcom/s1243808733/util/Utils;->getMainActivity()Lcom/aide/ui/MainActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/s1243808733/aide/project/ProjectDialog;->showCreateDialog(Landroid/app/Activity;)V

    return-void
.end method

.method public static onShowCreateProjectDialog(Landroid/app/Activity;)V
    .registers 1

    .line 383
    invoke-static {p0}, Lcom/s1243808733/aide/project/ProjectDialog;->showCreateDialog(Landroid/app/Activity;)V

    return-void
.end method

.method public static onShowSelectModeDialog(Landroid/app/Activity;)V
    .registers 1

    return-void
.end method

.method public static onSplitViewCloseSplit(Lcom/aide/ui/views/SplitView;ZLjava/lang/Runnable;)V
    .registers 8

    .line 393
    invoke-virtual {p0}, Lcom/aide/ui/views/SplitView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->isLandscape(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableDrawer()Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 396
    :cond_15
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainDrawerLayout()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_30

    .line 398
    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "closeDrawer"

    invoke-virtual {v0, v4, v3}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    goto :goto_41

    .line 400
    :cond_30
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "split_view_open"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 402
    :goto_41
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    const-string p1, "closeSplit_SOURCE"

    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    return-void
.end method

.method public static onSplitViewOpenSplit(Lcom/aide/ui/views/SplitView;ZZ)V
    .registers 6

    .line 406
    invoke-virtual {p0}, Lcom/aide/ui/views/SplitView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->isLandscape(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableDrawer()Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    .line 409
    :cond_15
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainDrawerLayout()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_30

    .line 411
    invoke-static {v0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    const/4 p2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "openDrawer"

    invoke-virtual {p0, p2, p1}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    goto :goto_59

    .line 413
    :cond_30
    invoke-static {p0}, Lcom/blankj/utilcode/util/ReflectUtils;->reflect(Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "openSplit_SOURCE"

    invoke-virtual {p0, p1, v0}, Lcom/blankj/utilcode/util/ReflectUtils;->method(Ljava/lang/String;[Ljava/lang/Object;)Lcom/blankj/utilcode/util/ReflectUtils;

    .line 414
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "split_view_open"

    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_59
    return-void
.end method

.method public static setContentView(I)V
    .registers 3

    .line 419
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    .line 420
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableDrawer()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 421
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isTrainerMode()Z

    move-result v1

    if-nez v1, :cond_17

    .line 422
    const p0, 0x7f0a0052

    invoke-virtual {v0, p0}, Lcom/s1243808733/aide/AideMainActivity;->setContentView(I)V

    goto :goto_1a

    .line 424
    :cond_17
    invoke-virtual {v0, p0}, Lcom/s1243808733/aide/AideMainActivity;->setContentView(I)V

    .line 426
    :goto_1a
    invoke-virtual {v0}, Lcom/s1243808733/aide/AideMainActivity;->setEditorBackground()V

    return-void
.end method

.method public static setProjectInfoDialog(Landroid/app/AlertDialog;)V
    .registers 3

    .line 529
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 530
    const v0, 0x102000b

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 531
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 532
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 533
    const/high16 v1, 0x41600000  # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 535
    new-instance v0, Lcom/s1243808733/aide/MainListener$6;

    invoke-direct {v0}, Lcom/s1243808733/aide/MainListener$6;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method
