.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$9$1;
.super Ljava/lang/Object;
.source "IconActivity.java"

# interfaces
.implements Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/icons/IconActivity$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/application/activity/icons/IconActivity$9;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity$9;)V
    .registers 2

    .line 427
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$9$1;->this$1:Lcom/s1243808733/aide/application/activity/icons/IconActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .registers 3

    .line 431
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$9$1;->this$1:Lcom/s1243808733/aide/application/activity/icons/IconActivity$9;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$9;->val$view3_bth:Lcom/s1243808733/view/ColorBackgroundTextView;

    invoke-virtual {v0, p1}, Lcom/s1243808733/view/ColorBackgroundTextView;->setColor(I)V

    return-void
.end method
