.class Lcom/termux/filepicker/TermuxFileReceiverActivity$6;
.super Ljava/lang/Object;
.source "TermuxFileReceiverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/filepicker/TermuxFileReceiverActivity;->promptNameAndSave(Ljava/io/InputStream;Ljava/lang/String;)V
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

    .line 166
    iput-object p1, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$6;->this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$6;->this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    iget-boolean v0, v0, Lcom/termux/filepicker/TermuxFileReceiverActivity;->mFinishOnDismissNameDialog:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity$6;->this$0:Lcom/termux/filepicker/TermuxFileReceiverActivity;

    invoke-virtual {v0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->finish()V

    :cond_0
    return-void
.end method
