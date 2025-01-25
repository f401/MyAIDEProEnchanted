.class Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$11;
.super Ljava/lang/Object;
.source "ManifestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->onBackPressed()V
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

    .line 332
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$11;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 336
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$11;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->-$$Nest$msave(Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;Z)V

    return-void
.end method
