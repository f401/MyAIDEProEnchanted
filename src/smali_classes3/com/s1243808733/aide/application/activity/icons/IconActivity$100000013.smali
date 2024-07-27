.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000013;
.super Ljava/lang/Object;
.source "IconActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

.field private final val$activity:Landroid/app/Activity;

.field private final val$view3_bth:Lcom/s1243808733/view/ColorBackgroundTextView;

.field private final val$view3_txt:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Landroid/app/Activity;Lcom/s1243808733/view/ColorBackgroundTextView;Landroid/widget/TextView;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000013;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000013;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000013;->val$view3_bth:Lcom/s1243808733/view/ColorBackgroundTextView;

    iput-object p4, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000013;->val$view3_txt:Landroid/widget/TextView;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000013;)Lcom/s1243808733/aide/application/activity/icons/IconActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000013;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 425
    new-instance v0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000013;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000013;->val$view3_bth:Lcom/s1243808733/view/ColorBackgroundTextView;

    invoke-virtual {v2}, Lcom/s1243808733/view/ColorBackgroundTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;-><init>(Landroid/content/Context;I)V

    .line 426
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000013;->val$view3_txt:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 427
    new-instance v1, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000013$100000012;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000013;->val$view3_bth:Lcom/s1243808733/view/ColorBackgroundTextView;

    invoke-direct {v1, p0, v2}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000013$100000012;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000013;Lcom/s1243808733/view/ColorBackgroundTextView;)V

    invoke-virtual {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;)V

    .line 435
    invoke-virtual {v0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->show()V

    return-void
.end method
