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
    .registers 2

    .line 729
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$10;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 732
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$10;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object p1, p1, Lcom/termux/app/TermuxActivity;->mListViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/termux/terminal/TerminalSession;

    .line 733
    iget-object p2, p0, Lcom/termux/app/TermuxActivity$10;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p2, p1}, Lcom/termux/app/TermuxActivity;->switchToSession(Lcom/termux/terminal/TerminalSession;)V

    .line 734
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$10;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidj/support/v4/widget/DrawerLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroidj/support/v4/widget/DrawerLayout;->closeDrawers()V

    return-void
.end method
