.class Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$10;
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

    .line 339
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$10;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 343
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$10;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->finish()V

    return-void
.end method
