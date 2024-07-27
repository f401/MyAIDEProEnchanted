.class Lcom/termux/app/TermuxActivity$100000021;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Lcom/termux/app/DialogUtils$TextSetListener;


# instance fields
.field private final this$0:Lcom/termux/app/TermuxActivity;

.field private final val$sessionToRename:Lcom/termux/terminal/TerminalSession;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;Lcom/termux/terminal/TerminalSession;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxActivity$100000021;->this$0:Lcom/termux/app/TermuxActivity;

    iput-object p2, p0, Lcom/termux/app/TermuxActivity$100000021;->val$sessionToRename:Lcom/termux/terminal/TerminalSession;

    return-void
.end method

.method static access$0(Lcom/termux/app/TermuxActivity$100000021;)Lcom/termux/app/TermuxActivity;
    .registers 2

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000021;->this$0:Lcom/termux/app/TermuxActivity;

    return-object v0
.end method


# virtual methods
.method public onTextSet(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 816
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000021;->val$sessionToRename:Lcom/termux/terminal/TerminalSession;

    iput-object p1, v0, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    .line 817
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000021;->this$0:Lcom/termux/app/TermuxActivity;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity;->mListViewAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method
