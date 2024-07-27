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

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static textInput(Landroid/app/Activity;ILjava/lang/String;ILcom/termux/app/DialogUtils$TextSetListener;ILcom/termux/app/DialogUtils$TextSetListener;ILcom/termux/app/DialogUtils$TextSetListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/termux/app/DialogUtils$TextSetListener;",
            "I",
            "Lcom/termux/app/DialogUtils$TextSetListener;",
            "I",
            "Lcom/termux/app/DialogUtils$TextSetListener;",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ")V"
        }
    .end annotation

    .line 25
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 27
    if-eqz p2, :cond_0

    .line 28
    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 32
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/app/AlertDialog;

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x42

    invoke-virtual {v1, v3, v4}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 34
    new-instance v3, Lcom/termux/app/DialogUtils$100000000;

    invoke-direct {v3, p4, v1, v2}, Lcom/termux/app/DialogUtils$100000000;-><init>(Lcom/termux/app/DialogUtils$TextSetListener;Landroid/widget/EditText;[Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 43
    const/4 v3, 0x1

    const/4 v4, 0x1

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 45
    const/16 v4, 0x10

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 46
    const/16 v5, 0x18

    int-to-float v5, v5

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 48
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 50
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-virtual {v5, v4, v4, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 52
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 54
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/termux/app/DialogUtils$100000001;

    invoke-direct {v4, p4, v1}, Lcom/termux/app/DialogUtils$100000001;-><init>(Lcom/termux/app/DialogUtils$TextSetListener;Landroid/widget/EditText;)V

    invoke-virtual {v3, p3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 63
    if-eqz p6, :cond_1

    .line 64
    new-instance v4, Lcom/termux/app/DialogUtils$100000002;

    invoke-direct {v4, p6, v1}, Lcom/termux/app/DialogUtils$100000002;-><init>(Lcom/termux/app/DialogUtils$TextSetListener;Landroid/widget/EditText;)V

    invoke-virtual {v3, p5, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    :cond_1
    if-nez p8, :cond_3

    .line 73
    const/high16 v4, 0x1040000

    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 83
    :goto_0
    if-eqz p9, :cond_2

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    aput-object v3, v2, v1

    .line 86
    const/4 v1, 0x0

    aget-object v1, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 87
    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 75
    :cond_3
    new-instance v4, Lcom/termux/app/DialogUtils$100000003;

    move-object/from16 v0, p8

    invoke-direct {v4, v0, v1}, Lcom/termux/app/DialogUtils$100000003;-><init>(Lcom/termux/app/DialogUtils$TextSetListener;Landroid/widget/EditText;)V

    move/from16 v0, p7

    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
