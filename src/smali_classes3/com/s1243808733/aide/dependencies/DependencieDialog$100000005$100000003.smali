.class Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005$100000003;
.super Ljava/lang/Object;
.source "DependencieDialog.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005$100000003;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005$100000003;)Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005$100000003;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005$100000003;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005$100000003;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;

    invoke-static {v2}, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;->access$0(Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;)Lcom/s1243808733/aide/dependencies/DependencieDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->getAppCompatList()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;->access$1000008(Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;ILjava/util/List;)V

    .line 259
    const/4 v0, 0x0

    return v0
.end method
