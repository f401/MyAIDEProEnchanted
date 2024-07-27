.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000014;
.super Ljava/lang/Object;
.source "IconActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

.field private final val$tips:Landroid/widget/TextView;

.field private final val$view2:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000014;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000014;->val$view2:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000014;->val$tips:Landroid/widget/TextView;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000014;)Lcom/s1243808733/aide/application/activity/icons/IconActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000014;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/CompoundButton;",
            "Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 457
    if-eqz p2, :cond_0

    .line 458
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000014;->val$view2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000014;->val$tips:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000014;->val$view2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$100000014;->val$tips:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
