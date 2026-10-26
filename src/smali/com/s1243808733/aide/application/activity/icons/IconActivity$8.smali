.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$8;
.super Ljava/lang/Object;
.source "IconActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

.field final val$items:[Ljava/lang/Object;

.field final val$view2_editor:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;[Ljava/lang/Object;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 373
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$8;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$8;->val$items:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$8;->val$view2_editor:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$8;->val$items:[Ljava/lang/Object;

    aget-object v0, v0, p3

    .line 378
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 379
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$8;->val$view2_editor:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 382
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$8;->val$view2_editor:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 382
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$8;->val$view2_editor:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
