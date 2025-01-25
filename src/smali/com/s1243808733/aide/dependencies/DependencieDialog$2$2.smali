.class Lcom/s1243808733/aide/dependencies/DependencieDialog$2$2;
.super Ljava/lang/Object;
.source "DependencieDialog.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/dependencies/DependencieDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/dependencies/DependencieDialog$2;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/dependencies/DependencieDialog$2;)V
    .registers 2

    .line 262
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$2$2;->this$1:Lcom/s1243808733/aide/dependencies/DependencieDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4

    .line 266
    iget-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$2$2;->this$1:Lcom/s1243808733/aide/dependencies/DependencieDialog$2;

    iget-object v0, p1, Lcom/s1243808733/aide/dependencies/DependencieDialog$2;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    invoke-virtual {v0}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->getAndroidXList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/s1243808733/aide/dependencies/DependencieDialog$2;->-$$Nest$mtoggleList(Lcom/s1243808733/aide/dependencies/DependencieDialog$2;ILjava/util/List;)V

    const/4 p1, 0x0

    return p1
.end method
