.class public Lcom/s1243808733/aide/dependencies/ItemView;
.super Landroid/widget/LinearLayout;
.source "ItemView.java"


# instance fields
.field final cb:Landroid/widget/CheckBox;

.field final ctx:Landroid/content/Context;

.field final text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/ItemView;->ctx:Landroid/content/Context;

    .line 20
    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lcom/s1243808733/aide/dependencies/ItemView;->dp2px(F)I

    move-result v0

    .line 21
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/s1243808733/aide/dependencies/ItemView;->dp2px(F)I

    move-result v1

    .line 23
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/s1243808733/aide/dependencies/ItemView;->setPadding(IIII)V

    .line 25
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/dependencies/ItemView;->cb:Landroid/widget/CheckBox;

    .line 26
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/s1243808733/aide/dependencies/ItemView;->text:Landroid/widget/TextView;

    .line 27
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/s1243808733/aide/dependencies/ItemView;->setGravity(I)V

    .line 29
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 30
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 32
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 33
    const v2, 0x1030042

    invoke-virtual {v1, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 34
    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/dependencies/ItemView;->addView(Landroid/view/View;)V

    .line 38
    invoke-virtual {p0, v1}, Lcom/s1243808733/aide/dependencies/ItemView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static dp2px(F)I
    .locals 2

    .line 50
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/ItemView;->cb:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/ItemView;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
