.class Lcom/termux/app/TermuxActivity$100000026;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/termux/app/TermuxActivity;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxActivity$100000026;->this$0:Lcom/termux/app/TermuxActivity;

    return-void
.end method

.method static access$0(Lcom/termux/app/TermuxActivity$100000026;)Lcom/termux/app/TermuxActivity;
    .registers 2

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000026;->this$0:Lcom/termux/app/TermuxActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 1127
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1128
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000026;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->finishIfRunning()V

    return-void
.end method
