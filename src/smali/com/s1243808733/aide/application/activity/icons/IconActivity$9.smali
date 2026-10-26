.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$9;
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

.field final val$view3_bth:Lcom/s1243808733/view/ColorBackgroundTextView;

.field final val$view3_txt:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Landroid/app/Activity;Lcom/s1243808733/view/ColorBackgroundTextView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 421
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$9;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$9;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$9;->val$view3_bth:Lcom/s1243808733/view/ColorBackgroundTextView;

    iput-object p4, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$9;->val$view3_txt:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 425
    new-instance v0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$9;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$9;->val$view3_bth:Lcom/s1243808733/view/ColorBackgroundTextView;

    invoke-virtual {v2}, Lcom/s1243808733/view/ColorBackgroundTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;-><init>(Landroid/content/Context;I)V

    .line 426
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$9;->val$view3_txt:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 427
    new-instance v1, Lcom/s1243808733/aide/application/activity/icons/IconActivity$9$1;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$9$1;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity$9;)V

    invoke-virtual {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;)V

    .line 435
    invoke-virtual {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->show()V

    return-void
.end method
