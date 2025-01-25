.class Lcom/sun/tools/javac/code/Scope$CompoundScope$2;
.super Ljava/lang/Object;
.source "Scope.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/code/Scope$CompoundScope;->getElementsByName(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/Filter;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/sun/tools/javac/code/Symbol;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/code/Scope$CompoundScope;

.field final val$name:Lcom/sun/tools/javac/util/Name;

.field final val$sf:Lcom/sun/tools/javac/util/Filter;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Scope$CompoundScope;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/Filter;)V
    .registers 4

    .line 661
    iput-object p1, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope$2;->this$0:Lcom/sun/tools/javac/code/Scope$CompoundScope;

    iput-object p2, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope$2;->val$name:Lcom/sun/tools/javac/util/Name;

    iput-object p3, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope$2;->val$sf:Lcom/sun/tools/javac/util/Filter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    .line 663
    new-instance v0, Lcom/sun/tools/javac/code/Scope$CompoundScope$2$1;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Scope$CompoundScope$2;->this$0:Lcom/sun/tools/javac/code/Scope$CompoundScope;

    invoke-static {v1}, Lcom/sun/tools/javac/code/Scope$CompoundScope;->access$200(Lcom/sun/tools/javac/code/Scope$CompoundScope;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sun/tools/javac/code/Scope$CompoundScope$2$1;-><init>(Lcom/sun/tools/javac/code/Scope$CompoundScope$2;Lcom/sun/tools/javac/util/List;)V

    return-object v0
.end method
