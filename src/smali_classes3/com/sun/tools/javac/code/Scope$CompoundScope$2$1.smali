.class Lcom/sun/tools/javac/code/Scope$CompoundScope$2$1;
.super Lcom/sun/tools/javac/code/Scope$CompoundScope$CompoundScopeIterator;
.source "Scope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/code/Scope$CompoundScope$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/sun/tools/javac/code/Scope$CompoundScope$2;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Scope$CompoundScope$2;Lcom/sun/tools/javac/util/List;)V
    .registers 4

    .line 663
    iput-object p1, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope$2$1;->this$1:Lcom/sun/tools/javac/code/Scope$CompoundScope$2;

    iget-object v0, p1, Lcom/sun/tools/javac/code/Scope$CompoundScope$2;->this$0:Lcom/sun/tools/javac/code/Scope$CompoundScope;

    invoke-direct {p0, v0, p2}, Lcom/sun/tools/javac/code/Scope$CompoundScope$CompoundScopeIterator;-><init>(Lcom/sun/tools/javac/code/Scope$CompoundScope;Lcom/sun/tools/javac/util/List;)V

    return-void
.end method


# virtual methods
.method nextIterator(Lcom/sun/tools/javac/code/Scope;)Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Scope;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope$2$1;->this$1:Lcom/sun/tools/javac/code/Scope$CompoundScope$2;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$CompoundScope$2;->val$name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope$2$1;->this$1:Lcom/sun/tools/javac/code/Scope$CompoundScope$2;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Scope$CompoundScope$2;->val$sf:Lcom/sun/tools/javac/util/Filter;

    invoke-virtual {p1, v0, v1}, Lcom/sun/tools/javac/code/Scope;->getElementsByName(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/Filter;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
