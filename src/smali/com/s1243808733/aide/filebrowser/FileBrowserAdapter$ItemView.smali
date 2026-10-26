.class public Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;
.super Landroid/widget/RelativeLayout;
.source "FileBrowserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView$ggg;
    }
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field private itemType:I

.field final itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

.field public viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    const/high16 v13, 0x41800000    # 16.0f

    const/high16 v12, 0x40800000    # 4.0f

    const/4 v11, 0x0

    const/4 v10, -0x2

    const/4 v9, -0x1

    .line 729
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 730
    iput-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->ctx:Landroid/content/Context;

    .line 731
    iput-object p0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    .line 735
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 736
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->getColorAccent()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 737
    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 738
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 739
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 741
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 742
    const v2, 0x3e851eb8    # 0.26f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 743
    invoke-virtual {p0, v1, v9, v9}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->addView(Landroid/view/View;II)V

    .line 745
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 746
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-static {v12}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v4

    invoke-static {v12}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 747
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 749
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 750
    const v3, 0x7f0800a6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 751
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 753
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 754
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 756
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 757
    const/high16 v5, 0x42080000    # 34.0f

    invoke-static {v5}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v5

    .line 758
    invoke-virtual {v4, v2, v5, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 760
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v13}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v7

    invoke-static {v13}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 761
    div-int/lit8 v7, v5, 0x2

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 762
    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 763
    invoke-virtual {v4, v3, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 764
    invoke-virtual {v1, v4, v5, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 766
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 767
    const v5, 0x7f0800a7

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setId(I)V

    .line 768
    const v5, 0x1030042

    invoke-virtual {v4, p1, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 769
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 770
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 771
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 773
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 774
    const v6, 0x1030046

    invoke-virtual {v5, p1, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 775
    const/high16 v6, 0x41300000    # 11.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 777
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 778
    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v7}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v7

    invoke-virtual {v6, v7, v11, v11, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 779
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 780
    invoke-virtual {v6, v4, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 781
    invoke-virtual {v6, v5, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 782
    invoke-virtual {v1, v6, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 784
    new-instance v6, Landroid/view/View;

    invoke-direct {v6, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 785
    invoke-virtual {p0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->getColorAccent()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 787
    invoke-virtual {p0, v1, v9, v10}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->addView(Landroid/view/View;II)V

    .line 788
    invoke-static {v12}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    invoke-virtual {p0, v6, v1, v11}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->addView(Landroid/view/View;II)V

    .line 790
    new-instance v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;-><init>()V

    iput-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    .line 791
    iput-object v6, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bar_left:Landroid/view/View;

    .line 792
    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iput-object v0, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bg:Landroid/view/View;

    .line 794
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iput-object v2, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 795
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iput-object v3, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->smallicon:Landroid/widget/ImageView;

    .line 796
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iput-object v4, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 797
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iput-object v5, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 799
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->setGravity(I)V

    return-void
.end method


# virtual methods
.method getColorAccent()I
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getItemType()I
    .locals 1

    .line 652
    iget v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->itemType:I

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 806
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public selected(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 662
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bar_left:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 663
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 670
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    new-instance v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView$1;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView$1;-><init>(Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bar_left:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 667
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bg:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setItemType(I)V
    .locals 0

    .line 648
    iput p1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->itemType:I

    return-void
.end method
