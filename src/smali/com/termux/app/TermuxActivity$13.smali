.class Lcom/termux/app/TermuxActivity$13;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Lcom/termux/app/DialogUtils$TextSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxActivity;->renameSession(Lcom/termux/terminal/TerminalSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/app/TermuxActivity;

.field final val$sessionToRename:Lcom/termux/terminal/TerminalSession;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;Lcom/termux/terminal/TerminalSession;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 813
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$13;->this$0:Lcom/termux/app/TermuxActivity;

    iput-object p2, p0, Lcom/termux/app/TermuxActivity$13;->val$sessionToRename:Lcom/termux/terminal/TerminalSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextSet(Ljava/lang/String;)V
    .registers 3

    .line 816
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$13;->val$sessionToRename:Lcom/termux/terminal/TerminalSession;

    iput-object p1, v0, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    .line 817
    iget-object p1, p0, Lcom/termux/app/TermuxActivity$13;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object p1, p1, Lcom/termux/app/TermuxActivity;->mListViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
