.class Lcom/sun/tools/javac/code/Scope$2;
.super Ljava/lang/Object;
.source "Scope.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/code/Scope;->getElements(Lcom/sun/tools/javac/util/Filter;)Ljava/lang/Iterable;
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
.field final this$0:Lcom/sun/tools/javac/code/Scope;

.field final val$sf:Lcom/sun/tools/javac/util/Filter;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/util/Filter;)V
    .registers 3

    .line 368
    iput-object p1, p0, Lcom/sun/tools/javac/code/Scope$2;->this$0:Lcom/sun/tools/javac/code/Scope;

    iput-object p2, p0, Lcom/sun/tools/javac/code/Scope$2;->val$sf:Lcom/sun/tools/javac/util/Filter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation

    .line 370
    new-instance v0, Lcom/sun/tools/javac/code/Scope$2$1;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Scope$2$1;-><init>(Lcom/sun/tools/javac/code/Scope$2;)V

    return-object v0
.end method
