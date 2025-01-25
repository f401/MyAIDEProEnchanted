.class Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$1;
.super Ljava/lang/Object;
.source "ManifestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

.field final val$item:Lcom/s1243808733/aide/application/activity/permission/Permission;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;Lcom/s1243808733/aide/application/activity/permission/Permission;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$1;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$1;->val$item:Lcom/s1243808733/aide/application/activity/permission/Permission;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 141
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$1;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->-$$Nest$fgetmainAdapter(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$1;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->-$$Nest$fgetmainAdapter(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->getCurrentList()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$1;->val$item:Lcom/s1243808733/aide/application/activity/permission/Permission;

    invoke-static {p1, p2}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->remove(Ljava/util/List;Lcom/s1243808733/aide/application/activity/permission/Permission;)V

    .line 142
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$1;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->-$$Nest$fgetmainAdapter(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter;->notifyDataSetChanged()V

    .line 143
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$1;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->setDataChange(Z)V

    return-void
.end method
