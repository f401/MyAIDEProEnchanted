.class Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000001;
.super Ljava/lang/Object;
.source "ManifestActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000001;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000001;)Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000001;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    .line 173
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000001;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-static {v0, v1}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->access$1000022(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;Z)V

    .line 174
    return v1
.end method
