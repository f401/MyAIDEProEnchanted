.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;
.super Ljava/lang/Object;
.source "IconActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/icons/IconActivity;->exportToPNG(Landroid/app/Activity;Lcom/s1243808733/aide/application/activity/icons/Icon;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

.field final val$activity:Landroid/app/Activity;

.field final val$checkbox_auto:Landroid/widget/CheckBox;

.field final val$code:I

.field final val$dialog:Landroid/app/AlertDialog;

.field final val$icon:Lcom/s1243808733/aide/application/activity/icons/Icon;

.field final val$parentFileName:Ljava/lang/String;

.field final val$toPath:Ljava/io/File;

.field final val$view2_editor:Landroid/widget/EditText;

.field final val$view3_bth:Lcom/s1243808733/view/ColorBackgroundTextView;

.field final val$view_editor:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Lcom/s1243808733/aide/application/activity/icons/Icon;Lcom/s1243808733/view/ColorBackgroundTextView;Ljava/lang/String;Landroid/widget/CheckBox;Ljava/io/File;Landroid/widget/EditText;Landroid/app/AlertDialog;ILandroid/widget/EditText;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 530
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$icon:Lcom/s1243808733/aide/application/activity/icons/Icon;

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$view3_bth:Lcom/s1243808733/view/ColorBackgroundTextView;

    iput-object p4, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$parentFileName:Ljava/lang/String;

    iput-object p5, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$checkbox_auto:Landroid/widget/CheckBox;

    iput-object p6, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$toPath:Ljava/io/File;

    iput-object p7, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$view_editor:Landroid/widget/EditText;

    iput-object p8, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$dialog:Landroid/app/AlertDialog;

    iput p9, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$code:I

    iput-object p10, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$view2_editor:Landroid/widget/EditText;

    iput-object p11, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private save(Lcom/s1243808733/aide/application/activity/icons/Icon;Ljava/io/File;I)V
    .locals 3

    .line 534
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$icon:Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-virtual {v0, p3}, Lcom/s1243808733/aide/application/activity/icons/Icon;->createBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$view3_bth:Lcom/s1243808733/view/ColorBackgroundTextView;

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
    .locals 11

    const/4 v10, 0x1

    .line 541
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$parentFileName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 542
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$checkbox_auto:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    const-string v1, "Added to"

    const-string v2, "Exported to"

    if-eqz v3, :cond_6

    .line 544
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 546
    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$icon:Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-virtual {v3}, Lcom/s1243808733/aide/application/activity/icons/Icon;->getSvg()Lcom/caverock/androidsvg/SVG;

    const/4 v3, 0x0

    .line 547
    :goto_0
    iget-object v5, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v5}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$fgetdpi(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 548
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$toPath:Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v9}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$fgetdpi(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$view_editor:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 549
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    iget-object v6, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$icon:Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$sfgetdpi_dimen()[I

    move-result-object v7

    aget v7, v7, v3

    invoke-direct {p0, v6, v5, v7}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->save(Lcom/s1243808733/aide/application/activity/icons/Icon;Ljava/io/File;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 553
    iget v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$code:I

    if-ne v0, v10, :cond_3

    .line 554
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    const-string v2, "\u5df2\u5bfc\u51fa\u81f3"

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$toPath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$mshowMsgDialog(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :goto_1
    return-void

    .line 556
    :cond_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 557
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 558
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 559
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 561
    :catchall_0
    move-exception v0

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/String;)Landroid/widget/Toast;

    goto :goto_1

    .line 561
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_5

    const-string v1, "\u5df2\u6dfb\u52a0\u81f3"

    :cond_5
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$mshowMsgDialog(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 568
    :cond_6
    :try_start_4
    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$view2_editor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 570
    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$icon:Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-virtual {v3}, Lcom/s1243808733/aide/application/activity/icons/Icon;->getSvg()Lcom/caverock/androidsvg/SVG;

    .line 571
    new-instance v5, Ljava/io/File;

    iget v3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$code:I

    if-ne v3, v10, :cond_7

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$toPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    :goto_3
    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$view_editor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$icon:Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-direct {p0, v0, v5, v4}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->save(Lcom/s1243808733/aide/application/activity/icons/Icon;Ljava/io/File;I)V

    .line 573
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 574
    iget v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$code:I

    if-ne v0, v10, :cond_8

    .line 575
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "\u5df2\u5bfc\u51fa\u81f3"

    :goto_4
    :try_start_5
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$toPath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$view_editor:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$mshowMsgDialog(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    .line 577
    :catchall_1
    move-exception v0

    .line 580
    instance-of v1, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v1, :cond_a

    .line 581
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$view2_editor:Landroid/widget/EditText;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "\u56fe\u7247\u592a\u5927"

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 571
    :cond_7
    :try_start_6
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$toPath:Ljava/io/File;

    invoke-direct {v3, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_3

    .line 577
    :cond_8
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "\u5df2\u6dfb\u52a0\u81f3"

    :goto_6
    :try_start_7
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/s1243808733/aide/util/ProjectUtils;->getRes(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/s1243808733/util/Utils;->subString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$mshowMsgDialog(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    .line 581
    :cond_9
    const-string v0, "OutOfMemoryError"

    goto :goto_5

    .line 583
    :cond_a
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_b
    move-object v0, v1

    goto :goto_6

    :cond_c
    move-object v0, v2

    goto :goto_4
.end method
