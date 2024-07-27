.class public Lcom/s1243808733/aide/dependencies/ItemView;
.super Landroid/widget/LinearLayout;
.source "ItemView.java"


# instance fields
.field final cb:Landroid/widget/CheckBox;

.field final ctx:Landroid/content/Context;

.field final text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/16 v3, 0x10

    const/4 v2, 0x0

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/ItemView;->ctx:Landroid/content/Context;

    .line 20
    int-to-float v0, v3

    invoke-static {v0}, Lcom/s1243808733/aide/dependencies/ItemView;->dp2px(F)I

    move-result v0

    .line 21
    const/16 v1, 0x8

    int-to-float v1, v1

    invoke-static {v1}, Lcom/s1243808733/aide/dependencies/ItemView;->dp2px(F)I

    move-result v1

    .line 23
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/s1243808733/aide/dependencies/ItemView;->setPadding(IIII)V

    .line 25
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/dependencies/ItemView;->cb:Landroid/widget/CheckBox;

    .line 26
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/dependencies/ItemView;->text:Landroid/widget/TextView;

    .line 27
    invoke-virtual {p0, v3}, Lcom/s1243808733/aide/dependencies/ItemView;->setGravity(I)V

    .line 29
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/ItemView;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 30
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/ItemView;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 32
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/ItemView;->text:Landroid/widget/TextView;

    const/16 v1, 0xa

    int-to-float v1, v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 33
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/ItemView;->text:Landroid/widget/TextView;

    const v1, 0x1030042

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 34
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/ItemView;->text:Landroid/widget/TextView;

    const/16 v1, 0xf

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 37
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/ItemView;->cb:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/dependencies/ItemView;->addView(Landroid/view/View;)V

    .line 38
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/ItemView;->text:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/dependencies/ItemView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static dp2px(F)I
    .registers 3

    .line 50
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 51
    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public setChecked(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/ItemView;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/ItemView;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
