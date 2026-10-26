.class Lcom/termux/filepicker/TermuxFileReceiverActivity$1;
.super Ljava/lang/Object;
.source "TermuxFileReceiverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$1;->this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$1;->this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    invoke-virtual {v0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->finish()V

    return-void
.end method
