.class public final Lcom/termux/app/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/DialogUtils$TextSetListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static textInput(Landroid/app/Activity;ILjava/lang/String;ILcom/termux/app/DialogUtils$TextSetListener;ILcom/termux/app/DialogUtils$TextSetListener;ILcom/termux/app/DialogUtils$TextSetListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 24

    .line 25
    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    new-instance v7, Landroid/widget/EditText;

    invoke-direct {v7, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {v7}, Landroid/widget/EditText;->setSingleLine()V

    if-eqz v1, :cond_25

    .line 28
    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v8, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 32
    :cond_25
    const/4 v1, 0x1

    new-array v8, v1, [Landroid/app/AlertDialog;

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x42

    invoke-virtual {v7, v9, v10}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 34
    new-instance v9, Lcom/termux/app/DialogUtils$1;

    invoke-direct {v9, v3, v7, v8}, Lcom/termux/app/DialogUtils$1;-><init>(Lcom/termux/app/DialogUtils$TextSetListener;Landroid/widget/EditText;[Landroid/app/AlertDialog;)V

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    const/high16 v10, 0x3f800000  # 1.0f

    invoke-static {v1, v10, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    .line 45
    const/high16 v10, 0x41800000  # 16.0f

    mul-float v10, v10, v9

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 46
    const/high16 v11, 0x41c00000  # 24.0f

    mul-float v9, v9, v11

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 48
    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 50
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v1, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-virtual {v11, v10, v10, v10, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 52
    invoke-virtual {v11, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 54
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    move v0, p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/termux/app/DialogUtils$2;

    invoke-direct {v1, v3, v7}, Lcom/termux/app/DialogUtils$2;-><init>(Lcom/termux/app/DialogUtils$TextSetListener;Landroid/widget/EditText;)V

    .line 56
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz v4, :cond_96

    .line 64
    new-instance v1, Lcom/termux/app/DialogUtils$3;

    invoke-direct {v1, v4, v7}, Lcom/termux/app/DialogUtils$3;-><init>(Lcom/termux/app/DialogUtils$TextSetListener;Landroid/widget/EditText;)V

    move/from16 v2, p5

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_96
    if-nez v5, :cond_9f

    .line 73
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_a9

    .line 75
    :cond_9f
    new-instance v1, Lcom/termux/app/DialogUtils$4;

    invoke-direct {v1, v5, v7}, Lcom/termux/app/DialogUtils$4;-><init>(Lcom/termux/app/DialogUtils$TextSetListener;Landroid/widget/EditText;)V

    move/from16 v2, p7

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_a9
    if-eqz v6, :cond_ae

    .line 83
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    :cond_ae
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v8, v1

    .line 86
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 87
    aget-object v0, v8, v1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
