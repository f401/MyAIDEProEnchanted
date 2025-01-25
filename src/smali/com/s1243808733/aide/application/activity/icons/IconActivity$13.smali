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
    .registers 12
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
    .registers 5

    .line 534
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$icon:Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-virtual {p1, p3}, Lcom/s1243808733/aide/application/activity/icons/Icon;->createBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$view3_bth:Lcom/s1243808733/view/ColorBackgroundTextView;

    invoke-virtual {p3}, Lcom/s1243808733/view/ColorBackgroundTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-static {p1, p3}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$ImageUtils;->drawColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 535
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$ImageUtils;->save(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Z)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 14

    .line 541
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$parentFileName:Ljava/lang/String;

    if-nez p1, :cond_6

    const-string p1, ""

    .line 542
    :cond_6
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$checkbox_auto:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const-string v1, "Added to"

    const-string v2, "Exported to"

    const/4 v3, 0x1

    const-string v4, "已添加至"

    const-string v5, "已导出至"

    if-eqz v0, :cond_df

    .line 544
    :try_start_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 546
    iget-object v6, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$icon:Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-virtual {v6}, Lcom/s1243808733/aide/application/activity/icons/Icon;->getSvg()Lcom/caverock/androidsvg/SVG;

    const/4 v6, 0x0

    .line 547
    :goto_22
    iget-object v7, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v7}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$fgetdpi(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_6e

    .line 548
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$toPath:Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {v11}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$fgetdpi(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$view_editor:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 549
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    iget-object v8, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$icon:Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$sfgetdpi_dimen()[I

    move-result-object v9

    aget v9, v9, v6

    invoke-direct {p0, v8, v7, v9}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->save(Lcom/s1243808733/aide/application/activity/icons/Icon;Ljava/io/File;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 552
    :cond_6e
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 553
    iget p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$code:I

    if-ne p1, v3, :cond_8b

    .line 554
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_80

    move-object v2, v5

    :cond_80
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$toPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$mshowMsgDialog(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_192

    .line 556
    :cond_8b
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 557
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_94
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 558
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 559
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_94

    .line 561
    :cond_b1
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2

    if-eqz v2, :cond_ba

    move-object v1, v4

    :cond_ba
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$mshowMsgDialog(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c5
    .catchall {:try_start_17 .. :try_end_c5} :catchall_c7

    goto/16 :goto_192

    :catchall_c7
    move-exception p1

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/util/Utils;->toast(Ljava/lang/String;)Landroid/widget/Toast;

    goto/16 :goto_192

    .line 568
    :cond_df
    :try_start_df
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$view2_editor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 570
    iget-object v6, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$icon:Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-virtual {v6}, Lcom/s1243808733/aide/application/activity/icons/Icon;->getSvg()Lcom/caverock/androidsvg/SVG;

    .line 571
    new-instance v6, Ljava/io/File;

    iget v7, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$code:I

    if-ne v7, v3, :cond_ff

    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$toPath:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    goto :goto_107

    :cond_ff
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$toPath:Ljava/io/File;

    invoke-direct {v7, v8, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, v7

    :goto_107
    iget-object v7, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$view_editor:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 572
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$icon:Lcom/s1243808733/aide/application/activity/icons/Icon;

    invoke-direct {p0, p1, v6, v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->save(Lcom/s1243808733/aide/application/activity/icons/Icon;Ljava/io/File;I)V

    .line 573
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 574
    iget p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$code:I

    if-ne p1, v3, :cond_148

    .line 575
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_12b

    move-object v2, v5

    :cond_12b
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$toPath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$view_editor:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$mshowMsgDialog(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_192

    .line 577
    :cond_148
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_151

    move-object v1, v4

    :cond_151
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/s1243808733/aide/util/ProjectUtils;->getRes(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/s1243808733/util/Utils;->subString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$mshowMsgDialog(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_176
    .catchall {:try_start_df .. :try_end_176} :catchall_177

    goto :goto_192

    :catchall_177
    move-exception p1

    .line 580
    instance-of v0, p1, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_18d

    .line 581
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$view2_editor:Landroid/widget/EditText;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_187

    const-string v0, "图片太大"

    goto :goto_189

    :cond_187
    const-string v0, "OutOfMemoryError"

    :goto_189
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_192

    .line 583
    :cond_18d
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/s1243808733/util/Utils;->showExDialog(Landroid/content/Context;Ljava/lang/Throwable;)V

    :goto_192
    return-void
.end method
