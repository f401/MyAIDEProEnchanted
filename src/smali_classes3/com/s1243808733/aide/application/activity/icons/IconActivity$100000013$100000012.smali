.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000013$100000012;
.super Ljava/lang/Object;
.source "IconActivity.java"

# interfaces
.implements Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000013;

.field private final val$view3_bth:Lcom/s1243808733/view/ColorBackgroundTextView;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000013;Lcom/s1243808733/view/ColorBackgroundTextView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000013$100000012;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000013;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000013$100000012;->val$view3_bth:Lcom/s1243808733/view/ColorBackgroundTextView;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000013$100000012;)Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000013;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000013$100000012;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000013;

    return-object v0
.end method


# virtual methods
.method public onColorChanged(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000013$100000012;->val$view3_bth:Lcom/s1243808733/view/ColorBackgroundTextView;

    invoke-virtual {v0, p1}, Lcom/s1243808733/view/ColorBackgroundTextView;->setColor(I)V

    return-void
.end method
