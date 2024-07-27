.class Lcom/termux/app/TermuxActivity$100000025;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private final this$0:Lcom/termux/app/TermuxActivity;

.field private final val$dialog:Landroid/app/AlertDialog;

.field private final val$urls:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;Landroid/app/AlertDialog;[Ljava/lang/CharSequence;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxActivity$100000025;->this$0:Lcom/termux/app/TermuxActivity;

    iput-object p2, p0, Lcom/termux/app/TermuxActivity$100000025;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/termux/app/TermuxActivity$100000025;->val$urls:[Ljava/lang/CharSequence;

    return-void
.end method

.method static access$0(Lcom/termux/app/TermuxActivity$100000025;)Lcom/termux/app/TermuxActivity;
    .registers 2

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000025;->this$0:Lcom/termux/app/TermuxActivity;

    return-object v0
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1075
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000025;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1076
    new-instance v1, Lcom/termux/app/TermuxActivity$100000025$100000024;

    iget-object v2, p0, Lcom/termux/app/TermuxActivity$100000025;->val$dialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/termux/app/TermuxActivity$100000025;->val$urls:[Ljava/lang/CharSequence;

    invoke-direct {v1, p0, v2, v3}, Lcom/termux/app/TermuxActivity$100000025$100000024;-><init>(Lcom/termux/app/TermuxActivity$100000025;Landroid/app/AlertDialog;[Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method
