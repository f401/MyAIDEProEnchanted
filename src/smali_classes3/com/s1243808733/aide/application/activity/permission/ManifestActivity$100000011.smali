.class Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000011;
.super Ljava/lang/Object;
.source "ManifestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000011;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000011;)Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000011;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$100000011;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->finish()V

    return-void
.end method
