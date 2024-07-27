.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021;
.super Ljava/lang/Object;
.source "IconActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021;)Lcom/s1243808733/aide/application/activity/icons/IconActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 15
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v12, 0x2

    const/4 v5, 0x0

    .line 832
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$L1000003()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 834
    array-length v1, v0

    new-array v6, v1, [Ljava/lang/CharSequence;

    const/4 v1, -0x1

    move v3, v1

    move v4, v5

    .line 836
    :goto_0
    array-length v1, v0

    if-lt v4, v1, :cond_0

    .line 859
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021$100000020;

    invoke-direct {v2, p0, v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021$100000020;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021;[Ljava/lang/String;)V

    invoke-virtual {v1, v6, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 871
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 872
    return v5

    .line 837
    :cond_0
    aget-object v7, v0, v4

    .line 838
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$L1000003()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 840
    const/4 v2, 0x0

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v2}, Lcom/blankj/utilcode/util/SpanUtils;->with(Landroid/widget/TextView;)Lcom/blankj/utilcode/util/SpanUtils;

    move-result-object v8

    .line 841
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 842
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/aide/application/activity/icons/Icon;

    .line 844
    const/16 v9, 0x16

    int-to-float v9, v9

    invoke-static {v9}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/s1243808733/aide/application/activity/icons/Icon;->createBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v9, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    const v10, 0x1010036

    invoke-static {v9, v10}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v9

    invoke-static {v2, v9}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$ImageUtils;->drawColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 846
    invoke-virtual {v8, v2, v12}, Lcom/blankj/utilcode/util/SpanUtils;->appendImage(Landroid/graphics/Bitmap;I)Lcom/blankj/utilcode/util/SpanUtils;

    move-result-object v2

    const/16 v9, 0xa

    int-to-float v9, v9

    invoke-static {v9}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/blankj/utilcode/util/SpanUtils;->appendSpace(I)Lcom/blankj/utilcode/util/SpanUtils;

    .line 850
    :cond_1
    const-string v2, "%s (%d)"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v7, v9, v5

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v11, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v11, v9, v10

    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/blankj/utilcode/util/SpanUtils;->append(Ljava/lang/CharSequence;)Lcom/blankj/utilcode/util/SpanUtils;

    .line 852
    invoke-virtual {v8}, Lcom/blankj/utilcode/util/SpanUtils;->create()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    aput-object v1, v6, v4

    .line 854
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000021;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    iget-object v1, v1, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->currentTag:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    .line 836
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v3, v1

    move v4, v2

    goto/16 :goto_0

    :cond_2
    move v1, v3

    goto :goto_1
.end method
