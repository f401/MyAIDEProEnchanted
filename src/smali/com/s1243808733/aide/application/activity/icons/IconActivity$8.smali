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
    .registers 4
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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 377
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$8;->val$items:[Ljava/lang/Object;

    aget-object p1, p1, p3

    .line 378
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_f

    .line 379
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$8;->val$view2_editor:Landroid/widget/EditText;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1f

    .line 381
    :cond_f
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$8;->val$view2_editor:Landroid/widget/EditText;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 382
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$8;->val$view2_editor:Landroid/widget/EditText;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1f
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
