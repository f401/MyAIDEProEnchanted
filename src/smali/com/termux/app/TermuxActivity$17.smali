.class Lcom/termux/app/TermuxActivity$17;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
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

    .line 1124
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$17;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1127
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1128
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$17;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->finishIfRunning()V

    return-void
.end method
