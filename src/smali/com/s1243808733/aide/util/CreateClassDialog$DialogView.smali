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
.method static bridge synthetic -$$Nest$fgetaddlayoutcontainer(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)Landroid/widget/LinearLayout;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addlayoutcontainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcb_addLayout(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)Landroid/widget/CheckBox;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_addLayout:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcb_autoAdd(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)Landroid/widget/CheckBox;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_autoAdd:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlayoutName(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)Landroid/widget/EditText;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->layoutName:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlayoutNamecontainer(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)Landroid/widget/LinearLayout;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->layoutNamecontainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 15

    .line 657
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 658
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->setOrientation(I)V

    .line 661
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 662
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "类名："

    goto :goto_17

    :cond_15
    const-string v2, "Class Name:"

    :goto_17
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    const/high16 v2, 0x41800000  # 16.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 664
    const v3, 0x1010036

    invoke-static {p1, v3}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 665
    const/high16 v4, 0x41600000  # 14.0f

    invoke-static {v4}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v4

    const/high16 v5, 0x40a00000  # 5.0f

    invoke-static {v5}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v4, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 666
    const/4 v4, -0x2

    invoke-virtual {p0, v1, v4, v4}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addView(Landroid/view/View;II)V

    .line 669
    new-instance v1, Lcom/s1243808733/widget/CustomEditText;

    invoke-direct {v1, p1}, Lcom/s1243808733/widget/CustomEditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->input:Landroid/widget/EditText;

    .line 671
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 672
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 673
    const/4 v6, 0x6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 675
    new-instance v6, Landroid/widget/Spinner;

    invoke-direct {v6, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->spinner:Landroid/widget/Spinner;

    .line 676
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v8

    if-eqz v8, :cond_65

    .line 677
    const-string v8, "spinner_bg"

    invoke-static {v8}, Lcom/blankj/utilcode/util/ResourceUtils;->getDrawableIdByName(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    goto :goto_6e

    .line 680
    :cond_65
    const-string v8, "spinner_bg_2"

    invoke-static {v8}, Lcom/blankj/utilcode/util/ResourceUtils;->getDrawableIdByName(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 684
    :goto_6e
    const/high16 v8, 0x3f000000  # 0.5f

    invoke-static {v8}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    .line 688
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 689
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 692
    new-instance v9, Landroid/widget/CheckBox;

    invoke-direct {v9, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_abstract:Landroid/widget/CheckBox;

    .line 693
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v10

    if-eqz v10, :cond_8f

    const-string v10, "添加Abstract修饰"

    goto :goto_91

    :cond_8f
    const-string v10, "Add Abstract Modification"

    :goto_91
    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 695
    new-instance v9, Landroid/widget/CheckBox;

    invoke-direct {v9, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_addTag:Landroid/widget/CheckBox;

    .line 696
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v10

    if-eqz v10, :cond_a4

    const-string v10, "添加TAG"

    goto :goto_a6

    :cond_a4
    const-string v10, "add TAG"

    :goto_a6
    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 698
    new-instance v9, Landroid/widget/CheckBox;

    invoke-direct {v9, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_autoAdd:Landroid/widget/CheckBox;

    .line 699
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v10

    if-eqz v10, :cond_b9

    const-string v10, "注册到清单文件"

    goto :goto_bb

    :cond_b9
    const-string v10, "Register in the manifest file"

    :goto_bb
    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 700
    iget-object v9, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_autoAdd:Landroid/widget/CheckBox;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 702
    iget-object v9, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_autoAdd:Landroid/widget/CheckBox;

    new-instance v11, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$1;

    invoke-direct {v11, p0}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$1;-><init>(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)V

    invoke-virtual {v9, v11}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 713
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->describecontainer:Landroid/widget/LinearLayout;

    .line 714
    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 716
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 717
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v11

    if-eqz v11, :cond_e7

    const-string v11, "描述："

    goto :goto_e9

    :cond_e7
    const-string v11, "Description:"

    :goto_e9
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 719
    invoke-static {p1, v3}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 720
    invoke-static {v5}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-static {v5}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v11

    invoke-virtual {v9, v7, v2, v7, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 722
    new-instance v2, Lcom/s1243808733/widget/CustomEditText;

    invoke-direct {v2, p1}, Lcom/s1243808733/widget/CustomEditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->describe:Landroid/widget/EditText;

    .line 724
    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->describecontainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9, v4, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 725
    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->describecontainer:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->describe:Landroid/widget/EditText;

    const/4 v11, -0x1

    invoke-virtual {v2, v9, v11, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 727
    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->describecontainer:Landroid/widget/LinearLayout;

    const/high16 v9, 0x41200000  # 10.0f

    invoke-static {v9}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v12

    invoke-static {v9}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v9

    invoke-virtual {v2, v7, v12, v7, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 728
    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->describecontainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v2, v11, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 729
    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->describe:Landroid/widget/EditText;

    const/4 v9, 0x3

    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 735
    new-instance v2, Landroid/widget/CheckBox;

    invoke-direct {v2, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_addLayout:Landroid/widget/CheckBox;

    .line 736
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v9

    if-eqz v9, :cond_13f

    const-string v9, "添加布局"

    goto :goto_141

    :cond_13f
    const-string v9, "Add layout"

    :goto_141
    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 737
    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_addLayout:Landroid/widget/CheckBox;

    new-instance v9, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$2;

    invoke-direct {v9, p0}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$2;-><init>(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)V

    invoke-virtual {v2, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 748
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addlayoutcontainer:Landroid/widget/LinearLayout;

    .line 749
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 751
    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addlayoutcontainer:Landroid/widget/LinearLayout;

    const/4 v9, 0x0

    invoke-static {v9}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v12

    invoke-static {v9}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v9

    invoke-virtual {v2, v7, v12, v7, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 752
    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addlayoutcontainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 754
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 755
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v9

    if-eqz v9, :cond_179

    const-string v9, "布局名："

    goto :goto_17b

    :cond_179
    const-string v9, "Layout name:"

    :goto_17b
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    const/high16 v9, 0x41700000  # 15.0f

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 757
    invoke-static {p1, v3}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 758
    invoke-static {v5}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    invoke-static {v5}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v9

    invoke-virtual {v2, v7, v3, v7, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 760
    new-instance v3, Lcom/s1243808733/widget/CustomEditText;

    invoke-direct {v3, p1}, Lcom/s1243808733/widget/CustomEditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->layoutName:Landroid/widget/EditText;

    .line 761
    invoke-virtual {v3}, Landroid/widget/EditText;->setSingleLine()V

    .line 762
    iget-object v3, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->layoutName:Landroid/widget/EditText;

    const-string v9, "activity_"

    invoke-virtual {v3, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 765
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->layoutNamecontainer:Landroid/widget/LinearLayout;

    .line 766
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 767
    iget-object v3, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->layoutNamecontainer:Landroid/widget/LinearLayout;

    invoke-static {v5}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v5

    invoke-virtual {v3, v7, v7, v7, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 768
    iget-object v3, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->layoutNamecontainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 771
    iget-object v3, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->layoutNamecontainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 772
    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->layoutNamecontainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->layoutName:Landroid/widget/EditText;

    invoke-virtual {v2, v3, v11, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 775
    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addlayoutcontainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->layoutNamecontainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 776
    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addlayoutcontainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_addLayout:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 784
    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_addTag:Landroid/widget/CheckBox;

    new-instance v3, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$3;

    invoke-direct {v3, p0}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$3;-><init>(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 792
    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_abstract:Landroid/widget/CheckBox;

    new-instance v3, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$4;

    invoke-direct {v3, p0}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$4;-><init>(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 800
    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_addTag:Landroid/widget/CheckBox;

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 801
    iget-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_abstract:Landroid/widget/CheckBox;

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 802
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 805
    new-instance v2, Landroid/widget/CheckBox;

    invoke-direct {v2, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_more:Landroid/widget/CheckBox;

    .line 806
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_209

    const-string p1, "更多选项"

    goto :goto_20b

    :cond_209
    const-string p1, "More option.."

    :goto_20b
    invoke-virtual {v2, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 807
    iget-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_more:Landroid/widget/CheckBox;

    new-instance v2, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$5;

    invoke-direct {v2, p0, v8}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView$5;-><init>(Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;Landroid/widget/LinearLayout;)V

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 816
    invoke-virtual {p0, v1}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addView(Landroid/view/View;)V

    .line 821
    invoke-virtual {p0, v6, v11, v4}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addView(Landroid/view/View;II)V

    .line 822
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    invoke-virtual {p0, p1, v11, v1}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addView(Landroid/view/View;II)V

    .line 823
    iget-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addlayoutcontainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, v11, v4}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addView(Landroid/view/View;II)V

    .line 824
    iget-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_autoAdd:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addView(Landroid/view/View;)V

    .line 826
    iget-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_more:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addView(Landroid/view/View;)V

    .line 827
    invoke-virtual {p0, v8}, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->addView(Landroid/view/View;)V

    .line 829
    iget-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_addLayout:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "create_new_class_cb_addlayout"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 830
    iget-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_autoAdd:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "create_new_class_cb_register"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 832
    iget-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_more:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "create_new_class_cb_more"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 834
    iget-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_addTag:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "create_new_class_cb_addTag"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 835
    iget-object p1, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->cb_abstract:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "create_new_class_cb_abstract"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public getInputContent()Ljava/lang/String;
    .registers 2

    .line 840
    iget-object v0, p0, Lcom/s1243808733/aide/util/CreateClassDialog$DialogView;->input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
