.class Lcom/termux/filepicker/TermuxFileReceiverActivity$2;
.super Ljava/lang/Object;
.source "TermuxFileReceiverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;


# direct methods
.method constructor <init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$2;->this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 90
    iget-object p1, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$2;->this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    invoke-virtual {p1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->finish()V

    return-void
.end method
