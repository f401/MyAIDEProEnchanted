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
    .registers 5
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
    .registers 4

    .line 425
    new-instance p1, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$9;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$9;->val$view3_bth:Lcom/s1243808733/view/ColorBackgroundTextView;

    invoke-virtual {v1}, Lcom/s1243808733/view/ColorBackgroundTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p1, v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;-><init>(Landroid/content/Context;I)V

    .line 426
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$9;->val$view3_txt:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 427
    new-instance v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$9$1;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$9$1;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity$9;)V

    invoke-virtual {p1, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;)V

    .line 435
    invoke-virtual {p1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->show()V

    return-void
.end method
