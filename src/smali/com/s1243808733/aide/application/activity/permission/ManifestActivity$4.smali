.class Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$4;
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

    .line 197
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$4;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4

    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 202
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$4;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->setDataChange(Z)V

    .line 203
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity$4;->this$0:Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestActivity;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "annotation_permission"

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method
