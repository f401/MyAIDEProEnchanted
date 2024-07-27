.class Lcom/s1243808733/aide/dependencies/DependencieDialog$100000006;
.super Ljava/lang/Object;
.source "DependencieDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/dependencies/DependencieDialog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000006;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/dependencies/DependencieDialog$100000006;)Lcom/s1243808733/aide/dependencies/DependencieDialog;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000006;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Editable;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "III)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "III)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000006;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->access$L1000001(Lcom/s1243808733/aide/dependencies/DependencieDialog;)Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->search(Ljava/lang/String;)V

    return-void
.end method
