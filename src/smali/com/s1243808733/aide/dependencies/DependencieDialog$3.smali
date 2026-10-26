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
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$3;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$3;->this$0:Lcom/s1243808733/aide/dependencies/DependencieDialog;

    invoke-static {v0}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/dependencies/DependencieDialog;)Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->search(Ljava/lang/String;)V

    return-void
.end method
