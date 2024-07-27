.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;
.super Ljava/lang/Object;
.source "IconActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

.field private final val$activity:Landroid/app/Activity;

.field private final val$checkbox_auto:Landroid/widget/CheckBox;

.field private final val$code:I

.field private final val$dialog:Landroid/app/AlertDialog;

.field private final val$icon:Lcom/s1243808733/aide/application/activity/icons/Icon;

.field private final val$parentFileName:Ljava/lang/String;

.field private final val$toPath:Ljava/io/File;

.field private final val$view2_editor:Landroid/widget/EditText;

.field private final val$view3_bth:Lcom/s1243808733/view/ColorBackgroundTextView;

.field private final val$view_editor:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Lcom/s1243808733/aide/application/activity/icons/Icon;Lcom/s1243808733/view/ColorBackgroundTextView;Ljava/lang/String;Landroid/widget/CheckBox;Ljava/io/File;Landroid/widget/EditText;Landroid/app/AlertDialog;ILandroid/widget/EditText;Landroid/app/Activity;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$icon:Lcom/s1243808733/aide/application/activity/icons/Icon;

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$view3_bth:Lcom/s1243808733/view/ColorBackgroundTextView;

    iput-object p4, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$parentFileName:Ljava/lang/String;

    iput-object p5, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$checkbox_auto:Landroid/widget/CheckBox;

    iput-object p6, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$toPath:Ljava/io/File;

    iput-object p7, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$view_editor:Landroid/widget/EditText;

    iput-object p8, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$dialog:Landroid/app/AlertDialog;

    iput p9, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$code:I

    iput-object p10, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$view2_editor:Landroid/widget/EditText;

    iput-object p11, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$activity:Landroid/app/Activity;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;)Lcom/s1243808733/aide/application/activity/icons/IconActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    return-object v0
.end method

.method private save(Lcom/s1243808733/aide/application/activity/icons/Icon;Ljava/io/File;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/aide/application/activity/icons/Icon;",
            "Ljava/io/File;",
            "I)V"
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$icon:Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-virtual {v0, p3}, Lcom/s1243808733/aide/application/activity/icons/Icon;->createBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$view3_bth:Lcom/s1243808733/view/ColorBackgroundTextView;

    invoke-virtual {v1}, Lcom/s1243808733/view/ColorBackgroundTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$ImageUtils;->drawColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 535
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v2, 0x1

    invoke-static {v0, p2, v1, v2}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Z)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v9, 0x1

    .line 541
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$parentFileName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    move-object v1, v0

    .line 542
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$checkbox_auto:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 544
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 546
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$icon:Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-virtual {v2}, Lcom/s1243808733/aide/application/activity/icons/Icon;->getSvg()Lcom/caverock/androidsvg/SVG;

    .line 547
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v3}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$L1000005(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 552
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 553
    iget v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$code:I

    if-ne v1, v9, :cond_3

    .line 554
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u5df2\u5bfc\u51fa\u81f3"

    :goto_2
    :try_start_1
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$toPath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$1000008(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 583
    :goto_3
    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$parentFileName:Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    .line 548
    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$toPath:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v7}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$L1000005(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$view_editor:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 549
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$icon:Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$L1000006()[I

    move-result-object v5

    aget v5, v5, v2

    invoke-direct {p0, v4, v3, v5}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->save(Lcom/s1243808733/aide/application/activity/icons/Icon;Ljava/io/File;I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 547
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 554
    :cond_2
    const-string v0, "Exported to"

    goto :goto_2

    .line 556
    :cond_3
    :try_start_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 557
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 559
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 561
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u5df2\u6dfb\u52a0\u81f3"

    :goto_5
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$1000008(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    .line 564
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_3

    .line 557
    :cond_4
    :try_start_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 558
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 559
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    .line 561
    :cond_5
    const-string v0, "Added to"

    goto :goto_5

    .line 568
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$view2_editor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 570
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$icon:Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/icons/Icon;->getSvg()Lcom/caverock/androidsvg/SVG;

    .line 571
    new-instance v3, Ljava/io/File;

    iget v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$code:I

    if-ne v0, v9, :cond_7

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$toPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    :goto_6
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$view_editor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$icon:Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-direct {p0, v0, v3, v2}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->save(Lcom/s1243808733/aide/application/activity/icons/Icon;Ljava/io/File;I)V

    .line 573
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 574
    iget v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$code:I

    if-ne v0, v9, :cond_9

    .line 575
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "\u5df2\u5bfc\u51fa\u81f3"

    :goto_7
    :try_start_7
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$toPath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$view_editor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$1000008(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_3

    .line 577
    :catch_1
    move-exception v0

    .line 580
    instance-of v1, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v1, :cond_c

    .line 581
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$view2_editor:Landroid/widget/EditText;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "\u56fe\u7247\u592a\u5927"

    :goto_8
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 571
    :cond_7
    :try_start_8
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$toPath:Ljava/io/File;

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_6

    .line 575
    :cond_8
    const-string v0, "Exported to"

    goto :goto_7

    .line 577
    :cond_9
    :try_start_9
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "\u5df2\u6dfb\u52a0\u81f3"

    move-object v1, v0

    :goto_9
    :try_start_a
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/s1243808733/aide/util/ProjectUtils;->getRes(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v4, v0}, Lcom/s1243808733/util/Utils;->subString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->access$1000008(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_3

    :cond_a
    const-string v0, "Added to"

    move-object v1, v0

    goto :goto_9

    .line 581
    :cond_b
    const-string v0, "OutOfMemoryError"

    goto :goto_8

    .line 583
    :cond_c
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000017;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto/16 :goto_3
.end method
