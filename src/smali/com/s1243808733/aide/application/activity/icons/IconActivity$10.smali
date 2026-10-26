.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$10;
.super Ljava/lang/Object;
.source "IconActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final val$tips:Landroid/widget/TextView;

.field final val$view2:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 453
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$10;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$10;->val$view2:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$10;->val$tips:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 458
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$10;->val$view2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$10;->val$tips:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$10;->val$view2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$10;->val$tips:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
