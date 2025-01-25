.class Lcom/s1243808733/aide/util/CustomCommand$1;
.super Ljava/lang/Object;
.source "CustomCommand.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/util/CustomCommand;->showDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/s1243808733/aide/util/CustomCommand$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 54
    iget-object p1, p0, Lcom/s1243808733/aide/util/CustomCommand$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/aide/util/CustomCommand;->convert(Ljava/lang/String;)[Lcom/s1243808733/aide/util/Command;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/aide/util/CustomCommand;->setCommands([Lcom/s1243808733/aide/util/Command;)V

    return-void
.end method
