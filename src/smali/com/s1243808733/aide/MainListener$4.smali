.class Lcom/s1243808733/aide/MainListener$4;
.super Ljava/lang/Object;
.source "MainListener.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/MainListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$actionMode:Landroid/view/ActionMode;

.field final val$activity:Lcom/aide/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/aide/ui/MainActivity;Landroid/view/ActionMode;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 485
    iput-object p1, p0, Lcom/s1243808733/aide/MainListener$4;->val$activity:Lcom/aide/ui/MainActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/MainListener$4;->val$actionMode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3

    .line 489
    iget-object p1, p0, Lcom/s1243808733/aide/MainListener$4;->val$activity:Lcom/aide/ui/MainActivity;

    invoke-static {}, Lcom/s1243808733/aide/MainListener;->-$$Nest$smgetSelectionContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/s1243808733/util/View2Java;->showDialog(Landroid/app/Activity;Ljava/lang/String;)V

    .line 490
    iget-object p1, p0, Lcom/s1243808733/aide/MainListener$4;->val$actionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    const/4 p1, 0x0

    return p1
.end method
