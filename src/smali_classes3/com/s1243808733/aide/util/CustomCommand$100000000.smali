.class Lcom/s1243808733/aide/util/CustomCommand$100000000;
.super Ljava/lang/Object;
.source "CustomCommand.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/util/CustomCommand$100000000;->val$input:Landroid/widget/EditText;

    return-void
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

    .line 54
    iget-object v0, p0, Lcom/s1243808733/aide/util/CustomCommand$100000000;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/CustomCommand;->convert(Ljava/lang/String;)[Lcom/s1243808733/aide/util/Command;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/CustomCommand;->setCommands([Lcom/s1243808733/aide/util/Command;)V

    return-void
.end method
