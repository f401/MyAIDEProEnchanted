.class Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$2;
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

    .line 169
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$2;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3

    .line 173
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$2;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->-$$Nest$msave(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;Z)V

    return v0
.end method
