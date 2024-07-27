.class Lcom/sun/tools/javac/code/Scope$2$1;
.super Ljava/lang/Object;
.source "Scope.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/code/Scope$2;->iterator()Ljava/util/Iterator;
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
.field private currEntry:Lcom/sun/tools/javac/code/Scope$Entry;

.field private currScope:Lcom/sun/tools/javac/code/Scope;

.field final this$1:Lcom/sun/tools/javac/code/Scope$2;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Scope$2;)V
    .registers 3

    .line 370
    iput-object p1, p0, Lcom/sun/tools/javac/code/Scope$2$1;->this$1:Lcom/sun/tools/javac/code/Scope$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$2$1;->this$1:Lcom/sun/tools/javac/code/Scope$2;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$2;->this$0:Lcom/sun/tools/javac/code/Scope;

    iput-object v0, p0, Lcom/sun/tools/javac/code/Scope$2$1;->currScope:Lcom/sun/tools/javac/code/Scope;

    .line 372
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$2$1;->this$1:Lcom/sun/tools/javac/code/Scope$2;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$2;->this$0:Lcom/sun/tools/javac/code/Scope;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    iput-object v0, p0, Lcom/sun/tools/javac/code/Scope$2$1;->currEntry:Lcom/sun/tools/javac/code/Scope$Entry;

    .line 374
    invoke-direct {p0}, Lcom/sun/tools/javac/code/Scope$2$1;->update()V

    .line 375
    return-void
.end method

.method private update()V
    .registers 2

    .line 395
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Scope$2$1;->skipToNextMatchingEntry()V

    .line 396
    :goto_0
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$2$1;->currEntry:Lcom/sun/tools/javac/code/Scope$Entry;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$2$1;->currScope:Lcom/sun/tools/javac/code/Scope;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->next:Lcom/sun/tools/javac/code/Scope;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$2$1;->currScope:Lcom/sun/tools/javac/code/Scope;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->next:Lcom/sun/tools/javac/code/Scope;

    iput-object v0, p0, Lcom/sun/tools/javac/code/Scope$2$1;->currScope:Lcom/sun/tools/javac/code/Scope;

    .line 398
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope;->elems:Lcom/sun/tools/javac/code/Scope$Entry;

    iput-object v0, p0, Lcom/sun/tools/javac/code/Scope$2$1;->currEntry:Lcom/sun/tools/javac/code/Scope$Entry;

    .line 399
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Scope$2$1;->skipToNextMatchingEntry()V

    goto :goto_0

    .line 401
    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .line 378
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$2$1;->currEntry:Lcom/sun/tools/javac/code/Scope$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/sun/tools/javac/code/Symbol;
    .registers 3

    .line 382
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$2$1;->currEntry:Lcom/sun/tools/javac/code/Scope$Entry;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 383
    :goto_0
    iget-object v1, p0, Lcom/sun/tools/javac/code/Scope$2$1;->currEntry:Lcom/sun/tools/javac/code/Scope$Entry;

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    iput-object v1, p0, Lcom/sun/tools/javac/code/Scope$2$1;->currEntry:Lcom/sun/tools/javac/code/Scope$Entry;

    .line 386
    :cond_0
    invoke-direct {p0}, Lcom/sun/tools/javac/code/Scope$2$1;->update()V

    .line 387
    return-object v0

    .line 382
    :cond_1
    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 370
    invoke-virtual {p0}, Lcom/sun/tools/javac/code/Scope$2$1;->next()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 391
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method skipToNextMatchingEntry()V
    .registers 3

    .line 404
    :goto_0
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$2$1;->currEntry:Lcom/sun/tools/javac/code/Scope$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$2$1;->this$1:Lcom/sun/tools/javac/code/Scope$2;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$2;->val$sf:Lcom/sun/tools/javac/util/Filter;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Scope$2$1;->currEntry:Lcom/sun/tools/javac/code/Scope$Entry;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-interface {v0, v1}, Lcom/sun/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$2$1;->currEntry:Lcom/sun/tools/javac/code/Scope$Entry;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    iput-object v0, p0, Lcom/sun/tools/javac/code/Scope$2$1;->currEntry:Lcom/sun/tools/javac/code/Scope$Entry;

    goto :goto_0

    .line 407
    :cond_0
    return-void
.end method
