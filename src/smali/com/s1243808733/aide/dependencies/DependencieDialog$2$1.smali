.class Lcom/s1243808733/aide/dependencies/DependencieDialog$2$1;
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
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$2$1;->this$1:Lcom/s1243808733/aide/dependencies/DependencieDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$2$1;->this$1:Lcom/s1243808733/aide/dependencies/DependencieDialog$2;

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/s1243808733/aide/dependencies/DependencieDialog$2;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    invoke-virtual {v2}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->getAppCompatList()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/s1243808733/aide/dependencies/DependencieDialog$2;->-$$Nest$mtoggleList(Lcom/s1243808733/aide/dependencies/DependencieDialog$2;ILjava/util/List;)V

    const/4 v0, 0x0

    return v0
.end method
