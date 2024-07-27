.class Lcom/termux/filepicker/TermuxFileReceiverActivity$100000000;
.super Ljava/lang/Object;
.source "TermuxFileReceiverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;


# direct methods
.method constructor <init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$100000000;->this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    return-void
.end method

.method static access$0(Lcom/termux/filepicker/TermuxFileReceiverActivity$100000000;)Lcom/termux/filepicker/TermuxFileReceiverActivity;
    .registers 2

    iget-object v0, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$100000000;->this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    return-object v0
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$100000000;->this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    invoke-virtual {v0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->finish()V

    return-void
.end method
