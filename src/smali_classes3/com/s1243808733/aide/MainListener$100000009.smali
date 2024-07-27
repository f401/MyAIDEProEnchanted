.class Lcom/s1243808733/aide/MainListener$100000009;
.super Ljava/lang/Object;
.source "MainListener.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final val$actionMode:Landroid/view/ActionMode;

.field private final val$activity:Lcom/aide/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/aide/ui/MainActivity;Landroid/view/ActionMode;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/MainListener$100000009;->val$activity:Lcom/aide/ui/MainActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/MainListener$100000009;->val$actionMode:Landroid/view/ActionMode;

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000009;->val$activity:Lcom/aide/ui/MainActivity;

    invoke-static {}, Lcom/s1243808733/aide/MainListener;->access$1000019()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/s1243808733/util/View2Style;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/s1243808733/aide/MainListener$100000009;->val$actionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 500
    const/4 v0, 0x0

    return v0
.end method
