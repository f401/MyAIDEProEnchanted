.class Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$5;
.super Ljava/lang/Object;
.source "ManifestActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$5;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 2

    .line 211
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$5;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->-$$Nest$mmultipleMode(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)V

    const/4 p1, 0x0

    return p1
.end method
