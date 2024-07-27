.class Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;
.super Landroid/widget/LinearLayout;
.source "CreateClassDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/util/CreateClassDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DialogView"
.end annotation


# instance fields
.field private addlayoutcontainer:Landroid/widget/LinearLayout;

.field public cb_abstract:Landroid/widget/CheckBox;

.field private cb_addLayout:Landroid/widget/CheckBox;

.field public cb_addTag:Landroid/widget/CheckBox;

.field private cb_autoAdd:Landroid/widget/CheckBox;

.field public cb_more:Landroid/widget/CheckBox;

.field public describe:Landroid/widget/EditText;

.field public describecontainer:Landroid/widget/LinearLayout;

.field public final input:Landroid/widget/EditText;

.field private layoutName:Landroid/widget/EditText;

.field private layoutNamecontainer:Landroid/widget/LinearLayout;

.field public final spinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 11

    const/4 v8, 0x5

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 657
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 658
    invoke-virtual {p0, v6}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->setOrientation(I)V

    .line 661
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 662
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u7c7b\u540d\uff1a"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    const/16 v0, 0x10

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 664
    const v0, 0x1010036

    invoke-static {p1, v0}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 665
    const/16 v0, 0xe

    int-to-float v0, v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v0

    int-to-float v2, v8

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-virtual {v1, v4, v0, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 666
    invoke-virtual {p0, v1, v5, v5}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addView(Landroid/view/View;II)V

    .line 669
    new-instance v0, Lcom/s1243808733/widget/CustomEditText;

    invoke-direct {v0, p1}, Lcom/s1243808733/widget/CustomEditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->input:Landroid/widget/EditText;

    .line 671
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->input:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 672
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->input:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 673
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->input:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 675
    new-instance v0, Landroid/widget/Spinner;

    invoke-direct {v0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->spinner:Landroid/widget/Spinner;

    .line 676
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->spinner:Landroid/widget/Spinner;

    const-string v1, "spinner_bg"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getDrawableIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 684
    :goto_1
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->spinner:Landroid/widget/Spinner;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    .line 688
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 689
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 692
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_abstract:Landroid/widget/CheckBox;

    .line 693
    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_abstract:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u6dfb\u52a0Abstract\u4fee\u9970"

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 695
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_addTag:Landroid/widget/CheckBox;

    .line 696
    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_addTag:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "\u6dfb\u52a0TAG"

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 698
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_autoAdd:Landroid/widget/CheckBox;

    .line 699
    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_autoAdd:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "\u6ce8\u518c\u5230\u6e05\u5355\u6587\u4ef6"

    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 700
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_autoAdd:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_autoAdd:Landroid/widget/CheckBox;

    new-instance v2, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$100000002;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$100000002;-><init>(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 713
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->describecontainer:Landroid/widget/LinearLayout;

    .line 714
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->describecontainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 716
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 717
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u63cf\u8ff0\uff1a"

    :goto_5
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    const/16 v0, 0x10

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 719
    const v0, 0x1010036

    invoke-static {p1, v0}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 720
    int-to-float v0, v8

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v0

    int-to-float v3, v8

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    invoke-virtual {v2, v4, v0, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 722
    new-instance v0, Lcom/s1243808733/widget/CustomEditText;

    invoke-direct {v0, p1}, Lcom/s1243808733/widget/CustomEditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->describe:Landroid/widget/EditText;

    .line 724
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->describecontainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v5, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 725
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->describecontainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->describe:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 727
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->describecontainer:Landroid/widget/LinearLayout;

    const/16 v2, 0xa

    int-to-float v2, v2

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    const/16 v3, 0xa

    int-to-float v3, v3

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    invoke-virtual {v0, v4, v2, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 728
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->describecontainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 729
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->describe:Landroid/widget/EditText;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 735
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_addLayout:Landroid/widget/CheckBox;

    .line 736
    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_addLayout:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "\u6dfb\u52a0\u5e03\u5c40"

    :goto_6
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 737
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_addLayout:Landroid/widget/CheckBox;

    new-instance v2, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$100000003;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$100000003;-><init>(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 748
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addlayoutcontainer:Landroid/widget/LinearLayout;

    .line 749
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addlayoutcontainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 751
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addlayoutcontainer:Landroid/widget/LinearLayout;

    int-to-float v2, v4

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    int-to-float v3, v4

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    invoke-virtual {v0, v4, v2, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 752
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addlayoutcontainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 754
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 755
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "\u5e03\u5c40\u540d\uff1a"

    :goto_7
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    const/16 v0, 0xf

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 757
    const v0, 0x1010036

    invoke-static {p1, v0}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 758
    int-to-float v0, v8

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v0

    int-to-float v3, v8

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    invoke-virtual {v2, v4, v0, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 760
    new-instance v0, Lcom/s1243808733/widget/CustomEditText;

    invoke-direct {v0, p1}, Lcom/s1243808733/widget/CustomEditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->layoutName:Landroid/widget/EditText;

    .line 761
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->layoutName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 762
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->layoutName:Landroid/widget/EditText;

    const-string v3, "activity_"

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 765
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->layoutNamecontainer:Landroid/widget/LinearLayout;

    .line 766
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->layoutNamecontainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 767
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->layoutNamecontainer:Landroid/widget/LinearLayout;

    int-to-float v3, v8

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    invoke-virtual {v0, v4, v4, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 768
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->layoutNamecontainer:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 771
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->layoutNamecontainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 772
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->layoutNamecontainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->layoutName:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 775
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addlayoutcontainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->layoutNamecontainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 776
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addlayoutcontainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_addLayout:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 784
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_addTag:Landroid/widget/CheckBox;

    new-instance v2, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$100000004;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$100000004;-><init>(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 792
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_abstract:Landroid/widget/CheckBox;

    new-instance v2, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$100000005;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$100000005;-><init>(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 800
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_addTag:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 801
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_abstract:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 802
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 805
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_more:Landroid/widget/CheckBox;

    .line 806
    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_more:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "\u66f4\u591a\u9009\u9879"

    :goto_8
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 807
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_more:Landroid/widget/CheckBox;

    new-instance v2, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$100000006;

    invoke-direct {v2, p0, v1}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$100000006;-><init>(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 816
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->input:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addView(Landroid/view/View;)V

    .line 821
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->spinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0, v7, v5}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addView(Landroid/view/View;II)V

    .line 822
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-virtual {p0, v0, v7, v2}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addView(Landroid/view/View;II)V

    .line 823
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addlayoutcontainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v7, v5}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addView(Landroid/view/View;II)V

    .line 824
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_autoAdd:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addView(Landroid/view/View;)V

    .line 826
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_more:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addView(Landroid/view/View;)V

    .line 827
    invoke-virtual {p0, v1}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addView(Landroid/view/View;)V

    .line 829
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_addLayout:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "create_new_class_cb_addlayout"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 830
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_autoAdd:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "create_new_class_cb_register"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 832
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_more:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "create_new_class_cb_more"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 834
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_addTag:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "create_new_class_cb_addTag"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 835
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_abstract:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "create_new_class_cb_abstract"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    .line 662
    :cond_0
    const-string v0, "Class Name:"

    goto/16 :goto_0

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->spinner:Landroid/widget/Spinner;

    const-string v1, "spinner_bg_2"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getDrawableIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    goto/16 :goto_1

    .line 693
    :cond_2
    const-string v0, "Add Abstract Modification"

    goto/16 :goto_2

    .line 696
    :cond_3
    const-string v0, "add TAG"

    goto/16 :goto_3

    .line 699
    :cond_4
    const-string v0, "Register in the manifest file"

    goto/16 :goto_4

    .line 717
    :cond_5
    const-string v0, "Description:"

    goto/16 :goto_5

    .line 736
    :cond_6
    const-string v0, "Add layout"

    goto/16 :goto_6

    .line 755
    :cond_7
    const-string v0, "Layout name:"

    goto/16 :goto_7

    .line 806
    :cond_8
    const-string v0, "More option.."

    goto/16 :goto_8
.end method

.method static synthetic access$L1000018(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_autoAdd:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$L1000019(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addlayoutcontainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$L1000020(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->layoutNamecontainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$L1000021(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->layoutName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$L1000022(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_addLayout:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$S1000018(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;Landroid/widget/CheckBox;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_autoAdd:Landroid/widget/CheckBox;

    return-void
.end method

.method static synthetic access$S1000019(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;Landroid/widget/LinearLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addlayoutcontainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$S1000020(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;Landroid/widget/LinearLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->layoutNamecontainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$S1000021(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;Landroid/widget/EditText;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->layoutName:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$S1000022(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;Landroid/widget/CheckBox;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_addLayout:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public getInputContent()Ljava/lang/String;
    .registers 2

    .line 840
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
