.class Lcom/s1243808733/aide/AideMainActivity$27$1;
.super Ljava/lang/Object;
.source "AideMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/AideMainActivity$27;->onDenied(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/AideMainActivity$27;

.field final val$permissionsDeniedForever:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/AideMainActivity$27;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1428
    iput-object p1, p0, Lcom/s1243808733/aide/AideMainActivity$27$1;->this$1:Lcom/s1243808733/aide/AideMainActivity$27;

    iput-object p2, p0, Lcom/s1243808733/aide/AideMainActivity$27$1;->val$permissionsDeniedForever:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1432
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$27$1;->val$permissionsDeniedForever:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1433
    iget-object v0, p0, Lcom/s1243808733/aide/AideMainActivity$27$1;->this$1:Lcom/s1243808733/aide/AideMainActivity$27;

    iget-object v0, v0, Lcom/s1243808733/aide/AideMainActivity$27;->this$0:Lcom/s1243808733/aide/AideMainActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/AideMainActivity;->-$$Nest$mrequestPermission(Lcom/s1243808733/aide/AideMainActivity;)V

    .line 1435
    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->launchAppDetailsSettings()V

    goto :goto_0
.end method
