.class Lcom/s1243808733/aide/dependencies/DependencieDialog$3;
.super Ljava/lang/Object;
.source "DependencieDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/dependencies/DependencieDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/dependencies/DependencieDialog;)V
    .registers 2

    .line 284
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$3;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 293
    iget-object p2, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$3;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    invoke-static {p2}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/dependencies/DependencieDialog;)Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->search(Ljava/lang/String;)V

    return-void
.end method
