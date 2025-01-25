.class Lcom/s1243808733/aide/application/activity/icons/IconActivity$15$1;
.super Ljava/lang/Object;
.source "IconActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/icons/IconActivity$15;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/application/activity/icons/IconActivity$15;

.field final val$keySet:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity$15;[Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 861
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$15$1;->this$1:Lcom/s1243808733/aide/application/activity/icons/IconActivity$15;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$15$1;->val$keySet:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 865
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$15$1;->this$1:Lcom/s1243808733/aide/application/activity/icons/IconActivity$15;

    iget-object v0, v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$15;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$15$1;->val$keySet:[Ljava/lang/String;

    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->setAdapterData(Ljava/lang/String;)V

    .line 866
    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$15$1;->this$1:Lcom/s1243808733/aide/application/activity/icons/IconActivity$15;

    iget-object p2, p2, Lcom/s1243808733/aide/application/activity/icons/IconActivity$15;->this$0:Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    invoke-static {p2}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->notifyDataSetChanged()V

    .line 867
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
