.class Lcom/sun/tools/javac/code/Types$ImplementationCache$Entry;
.super Ljava/lang/Object;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Types$ImplementationCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entry"
.end annotation


# instance fields
.field final cachedImpl:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

.field final checkResult:Z

.field final implFilter:Lcom/sun/tools/javac/util/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/Filter",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field final prevMark:I

.field final this$1:Lcom/sun/tools/javac/code/Types$ImplementationCache;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/code/Types$ImplementationCache;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/util/Filter;ZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/code/Symbol$MethodSymbol;",
            "Lcom/sun/tools/javac/util/Filter",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;ZI)V"
        }
    .end annotation

    .line 2098
    iput-object p1, p0, Lcom/sun/tools/javac/code/Types$ImplementationCache$Entry;->this$1:Lcom/sun/tools/javac/code/Types$ImplementationCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2099
    iput-object p2, p0, Lcom/sun/tools/javac/code/Types$ImplementationCache$Entry;->cachedImpl:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    .line 2100
    iput-object p3, p0, Lcom/sun/tools/javac/code/Types$ImplementationCache$Entry;->implFilter:Lcom/sun/tools/javac/util/Filter;

    .line 2101
    iput-boolean p4, p0, Lcom/sun/tools/javac/code/Types$ImplementationCache$Entry;->checkResult:Z

    .line 2102
    iput p5, p0, Lcom/sun/tools/javac/code/Types$ImplementationCache$Entry;->prevMark:I

    .line 2103
    return-void
.end method


# virtual methods
.method matches(Lcom/sun/tools/javac/util/Filter;ZI)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/Filter",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;ZI)Z"
        }
    .end annotation

    .line 2106
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$ImplementationCache$Entry;->implFilter:Lcom/sun/tools/javac/util/Filter;

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/sun/tools/javac/code/Types$ImplementationCache$Entry;->checkResult:Z

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/sun/tools/javac/code/Types$ImplementationCache$Entry;->prevMark:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
