.class Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;
.super Landroid/widget/LinearLayout;
.source "ProjectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/project/ProjectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TitleEditText"
.end annotation


# instance fields
.field private editText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 6

    .line 583
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 584
    new-instance v0, Lcom/s1243808733/widget/CustomEditText;

    invoke-direct {v0, p1}, Lcom/s1243808733/widget/CustomEditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;->editText:Landroid/widget/EditText;

    .line 585
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 586
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;->setOrientation(I)V

    .line 587
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 588
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    const/16 v1, 0x10

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 591
    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;->addView(Landroid/view/View;)V

    .line 592
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;->editText:Landroid/widget/EditText;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;->addView(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .registers 2

    .line 595
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;->editText:Landroid/widget/EditText;

    return-object v0
.end method
