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
    .registers 16

    const/4 v13, 0x4

    const/16 v12, 0x10

    const/4 v11, 0x0

    const/4 v10, -0x2

    const/4 v9, -0x1

    .line 711
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 712
    iput-object p1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->ctx:Landroid/content/Context;

    .line 713
    iput-object p0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    .line 717
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 718
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->getColorAccent()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 719
    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 720
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 721
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 724
    const v2, 0x3e851eb8    # 0.26f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 725
    invoke-virtual {p0, v1, v9, v9}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->addView(Landroid/view/View;II)V

    .line 727
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 728
    const/16 v2, 0x14

    int-to-float v2, v2

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    int-to-float v3, v13

    invoke-static {v3}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    const/16 v4, 0xa

    int-to-float v4, v4

    invoke-static {v4}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v4

    int-to-float v5, v13

    invoke-static {v5}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 729
    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 731
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 732
    const v3, 0x7f0800a6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 733
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 735
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 736
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 738
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 739
    const/16 v5, 0x22

    int-to-float v5, v5

    invoke-static {v5}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v5

    .line 740
    invoke-virtual {v4, v2, v5, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 742
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float v7, v12

    invoke-static {v7}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v7

    int-to-float v8, v12

    invoke-static {v8}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 743
    div-int/lit8 v7, v5, 0x2

    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 744
    div-int/lit8 v7, v5, 0x2

    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 745
    invoke-virtual {v4, v3, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 746
    invoke-virtual {v1, v4, v5, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 748
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 749
    const v5, 0x7f0800a7

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setId(I)V

    .line 750
    const v5, 0x1030042

    invoke-virtual {v4, p1, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 751
    int-to-float v5, v12

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 752
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 753
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 755
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 756
    const v6, 0x1030046

    invoke-virtual {v5, p1, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 757
    const/16 v6, 0xb

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 759
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 760
    const/4 v7, 0x6

    int-to-float v7, v7

    invoke-static {v7}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v7

    invoke-virtual {v6, v7, v11, v11, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 761
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 762
    invoke-virtual {v6, v4, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 763
    invoke-virtual {v6, v5, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 764
    invoke-virtual {v1, v6, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 766
    new-instance v6, Landroid/view/View;

    invoke-direct {v6, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 767
    invoke-virtual {p0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->getColorAccent()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 769
    invoke-virtual {p0, v1, v9, v10}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->addView(Landroid/view/View;II)V

    .line 770
    int-to-float v1, v13

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    invoke-virtual {p0, v6, v1, v11}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->addView(Landroid/view/View;II)V

    .line 772
    new-instance v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;-><init>()V

    iput-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    .line 773
    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iput-object v6, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bar_left:Landroid/view/View;

    .line 774
    iget-object v1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iput-object v0, v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bg:Landroid/view/View;

    .line 776
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iput-object v2, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 777
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iput-object v3, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->smallicon:Landroid/widget/ImageView;

    .line 778
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iput-object v4, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 779
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iput-object v5, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 781
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->setGravity(I)V

    return-void
.end method


# virtual methods
.method getColorAccent()I
    .registers 2

    .line 639
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getItemType()I
    .registers 2

    .line 635
    iget v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->itemType:I

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 788
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public selected(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 644
    if-eqz p1, :cond_0

    .line 645
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bar_left:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 646
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 652
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->itemView:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;

    new-instance v1, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView$100000003;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView$100000003;-><init>(Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bar_left:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 649
    iget-object v0, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->viewHolder:Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;

    iget-object v0, v0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ViewHolder;->bg:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setItemType(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 631
    iput p1, p0, Lcom/s1243808733/aide/filebrowser/FileBrowserAdapter$ItemView;->itemType:I

    return-void
.end method
