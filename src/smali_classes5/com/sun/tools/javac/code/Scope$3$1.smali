.class Lcom/sun/tools/javac/code/Scope$3$1;
.super Ljava/lang/Object;
.source "Scope.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/code/Scope$3;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/sun/tools/javac/code/Symbol;",
        ">;"
    }
.end annotation


# instance fields
.field currentEntry:Lcom/sun/tools/javac/code/Scope$Entry;

.field final this$1:Lcom/sun/tools/javac/code/Scope$3;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Scope$3;)V
    .registers 5

    .line 420
    iput-object p1, p0, Lcom/sun/tools/javac/code/Scope$3$1;->this$1:Lcom/sun/tools/javac/code/Scope$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$3$1;->this$1:Lcom/sun/tools/javac/code/Scope$3;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$3;->this$0:Lcom/sun/tools/javac/code/Scope;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Scope$3$1;->this$1:Lcom/sun/tools/javac/code/Scope$3;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Scope$3;->val$name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Scope$3$1;->this$1:Lcom/sun/tools/javac/code/Scope$3;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Scope$3;->val$sf:Lcom/sun/tools/javac/util/Filter;

    invoke-virtual {v0, v1, v2}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/Filter;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Scope$3$1;->currentEntry:Lcom/sun/tools/javac/code/Scope$Entry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 424
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$3$1;->currentEntry:Lcom/sun/tools/javac/code/Scope$Entry;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public next()Lcom/sun/tools/javac/code/Symbol;
    .registers 4

    .line 427
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$3$1;->currentEntry:Lcom/sun/tools/javac/code/Scope$Entry;

    .line 428
    iget-object v1, p0, Lcom/sun/tools/javac/code/Scope$3$1;->currentEntry:Lcom/sun/tools/javac/code/Scope$Entry;

    iget-object v2, p0, Lcom/sun/tools/javac/code/Scope$3$1;->this$1:Lcom/sun/tools/javac/code/Scope$3;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Scope$3;->val$sf:Lcom/sun/tools/javac/util/Filter;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/code/Scope$Entry;->next(Lcom/sun/tools/javac/util/Filter;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/tools/javac/code/Scope$3$1;->currentEntry:Lcom/sun/tools/javac/code/Scope$Entry;

    .line 429
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 420
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Scope$3$1;->next()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 432
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
