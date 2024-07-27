.class public Lcom/sun/tools/javac/code/Scope$Entry;
.super Ljava/lang/Object;
.source "Scope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public scope:Lcom/sun/tools/javac/code/Scope;

.field private shadowed:Lcom/sun/tools/javac/code/Scope$Entry;

.field public sibling:Lcom/sun/tools/javac/code/Scope$Entry;

.field public sym:Lcom/sun/tools/javac/code/Symbol;


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope$Entry;Lcom/sun/tools/javac/code/Scope$Entry;Lcom/sun/tools/javac/code/Scope;)V
    .registers 5

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput-object p1, p0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 479
    iput-object p2, p0, Lcom/sun/tools/javac/code/Scope$Entry;->shadowed:Lcom/sun/tools/javac/code/Scope$Entry;

    .line 480
    iput-object p3, p0, Lcom/sun/tools/javac/code/Scope$Entry;->sibling:Lcom/sun/tools/javac/code/Scope$Entry;

    .line 481
    iput-object p4, p0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    .line 482
    return-void
.end method

.method static synthetic access$000(Lcom/sun/tools/javac/code/Scope$Entry;)Lcom/sun/tools/javac/code/Scope$Entry;
    .registers 2

    .line 455
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$Entry;->shadowed:Lcom/sun/tools/javac/code/Scope$Entry;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sun/tools/javac/code/Scope$Entry;Lcom/sun/tools/javac/code/Scope$Entry;)Lcom/sun/tools/javac/code/Scope$Entry;
    .registers 2

    .line 455
    iput-object p1, p0, Lcom/sun/tools/javac/code/Scope$Entry;->shadowed:Lcom/sun/tools/javac/code/Scope$Entry;

    return-object p1
.end method


# virtual methods
.method public getOrigin()Lcom/sun/tools/javac/code/Scope;
    .registers 2

    .line 503
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$Entry;->scope:Lcom/sun/tools/javac/code/Scope;

    return-object v0
.end method

.method public next()Lcom/sun/tools/javac/code/Scope$Entry;
    .registers 2

    .line 488
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$Entry;->shadowed:Lcom/sun/tools/javac/code/Scope$Entry;

    return-object v0
.end method

.method public next(Lcom/sun/tools/javac/util/Filter;)Lcom/sun/tools/javac/code/Scope$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/Filter",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;)",
            "Lcom/sun/tools/javac/code/Scope$Entry;"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$Entry;->shadowed:Lcom/sun/tools/javac/code/Scope$Entry;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Scope$Entry;->sym:Lcom/sun/tools/javac/code/Symbol;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lcom/sun/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$Entry;->shadowed:Lcom/sun/tools/javac/code/Scope$Entry;

    .line 493
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$Entry;->shadowed:Lcom/sun/tools/javac/code/Scope$Entry;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Scope$Entry;->next(Lcom/sun/tools/javac/util/Filter;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    goto :goto_0
.end method
