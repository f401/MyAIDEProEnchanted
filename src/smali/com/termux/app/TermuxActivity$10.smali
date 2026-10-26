.class Lcom/termux/app/TermuxActivity$10;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxActivity;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/app/TermuxActivity;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .locals 0

    .line 729
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$10;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 732
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$10;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mListViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/terminal/TerminalSession;

    .line 733
    iget-object v1, p0, Lcom/termux/app/TermuxActivity$10;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1, v0}, Lcom/termux/app/TermuxActivity;->switchToSession(Lcom/termux/terminal/TerminalSession;)V

    .line 734
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$10;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroidj/support/v4/widget/DrawerLayout;->closeDrawers()V

    return-void
.end method
