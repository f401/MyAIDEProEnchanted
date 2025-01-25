.class Lcom/termux/app/TermuxActivity$16;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxActivity;->showUrlSelection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/app/TermuxActivity;

.field final val$dialog:Landroid/app/AlertDialog;

.field final val$urls:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;Landroid/app/AlertDialog;[Ljava/lang/CharSequence;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1072
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$16;->this$0:Lcom/termux/app/TermuxActivity;

    iput-object p2, p0, Lcom/termux/app/TermuxActivity$16;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/termux/app/TermuxActivity$16;->val$urls:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1075
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$16;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 1076
    new-instance v0, Lcom/termux/app/TermuxActivity$16$1;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxActivity$16$1;-><init>(Lcom/termux/app/TermuxActivity$16;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method
