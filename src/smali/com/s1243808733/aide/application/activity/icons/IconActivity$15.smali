.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$15;
.super Ljava/lang/Object;
.source "IconActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/icons/IconActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)V
    .registers 2

    .line 828
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$15;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 14

    .line 832
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$sfgetsData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 835
    array-length v2, v0

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 836
    :goto_16
    array-length v5, v0

    if-ge v4, v5, :cond_87

    .line 837
    aget-object v5, v0, v4

    .line 838
    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$sfgetsData()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 840
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/blankj/utilcode/util/SpanUtils;->with(Landroid/widget/TextView;)Lcom/blankj/utilcode/util/SpanUtils;

    move-result-object v7

    .line 841
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    const/4 v9, 0x2

    if-nez v8, :cond_5b

    .line 842
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/s1243808733/aide/application/activity/icons/Icon;

    .line 844
    const/high16 v10, 0x41b00000  # 22.0f

    invoke-static {v10}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/s1243808733/aide/application/activity/icons/Icon;->createBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object v10, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$15;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    const v11, 0x1010036

    invoke-static {v10, v11}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v10

    invoke-static {v8, v10}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$ImageUtils;->drawColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 846
    invoke-virtual {v7, v8, v9}, Lcom/blankj/utilcode/util/SpanUtils;->appendImage(Landroid/graphics/Bitmap;I)Lcom/blankj/utilcode/util/SpanUtils;

    move-result-object v8

    .line 847
    const/high16 v10, 0x41200000  # 10.0f

    invoke-static {v10}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/blankj/utilcode/util/SpanUtils;->appendSpace(I)Lcom/blankj/utilcode/util/SpanUtils;

    .line 850
    :cond_5b
    new-array v8, v9, [Ljava/lang/Object;

    aput-object v5, v8, v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x1

    aput-object v6, v8, v9

    const-string v6, "%s (%d)"

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/blankj/utilcode/util/SpanUtils;->append(Ljava/lang/CharSequence;)Lcom/blankj/utilcode/util/SpanUtils;

    .line 852
    invoke-virtual {v7}, Lcom/blankj/utilcode/util/SpanUtils;->create()Landroid/text/SpannableStringBuilder;

    move-result-object v6

    aput-object v6, v2, v4

    .line 854
    iget-object v6, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$15;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    iget-object v6, v6, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->currentTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    move v3, v4

    :cond_84
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 859
    :cond_87
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$15;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 860
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v4, Lcom/s1243808733/aide/application/activity/icons/IconActivity$15$1;

    invoke-direct {v4, p0, v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$15$1;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity$15;[Ljava/lang/String;)V

    .line 861
    invoke-virtual {p1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 870
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 871
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return v1
.end method
