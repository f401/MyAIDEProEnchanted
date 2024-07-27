.class Lcom/termux/app/TermuxActivity$100000016$100000010;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/termux/app/TermuxActivity$100000016;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity$100000016;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxActivity$100000016$100000010;->this$0:Lcom/termux/app/TermuxActivity$100000016;

    return-void
.end method

.method static access$0(Lcom/termux/app/TermuxActivity$100000016$100000010;)Lcom/termux/app/TermuxActivity$100000016;
    .registers 2

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016$100000010;->this$0:Lcom/termux/app/TermuxActivity$100000016;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016$100000010;->this$0:Lcom/termux/app/TermuxActivity$100000016;

    invoke-static {v0}, Lcom/termux/app/TermuxActivity$100000016;->access$0(Lcom/termux/app/TermuxActivity$100000016;)Lcom/termux/app/TermuxActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentTermSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    const-string v1, "cd %1$s/usr&&./install.sh %1$s\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/termux/app/TermuxActivity$100000016$100000010;->this$0:Lcom/termux/app/TermuxActivity$100000016;

    invoke-static {v4}, Lcom/termux/app/TermuxActivity$100000016;->access$0(Lcom/termux/app/TermuxActivity$100000016;)Lcom/termux/app/TermuxActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/termux/app/TermuxActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalEmulator;->paste(Ljava/lang/String;)V

    return-void
.end method
