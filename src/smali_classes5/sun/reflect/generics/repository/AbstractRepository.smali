.class public abstract Lsun/reflect/generics/repository/AbstractRepository;
.super Ljava/lang/Object;
.source "AbstractRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lsun/reflect/generics/tree/Tree;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private factory:Lsun/reflect/generics/factory/GenericsFactory;

.field private tree:Lsun/reflect/generics/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lsun/reflect/generics/factory/GenericsFactory;)V
    .registers 4

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p0, p1}, Lsun/reflect/generics/repository/AbstractRepository;->parse(Ljava/lang/String;)Lsun/reflect/generics/tree/Tree;

    move-result-object v0

    iput-object v0, p0, Lsun/reflect/generics/repository/AbstractRepository;->tree:Lsun/reflect/generics/tree/Tree;

    .line 75
    iput-object p2, p0, Lsun/reflect/generics/repository/AbstractRepository;->factory:Lsun/reflect/generics/factory/GenericsFactory;

    .line 76
    return-void
.end method

.method private getFactory()Lsun/reflect/generics/factory/GenericsFactory;
    .registers 2

    .line 48
    iget-object v0, p0, Lsun/reflect/generics/repository/AbstractRepository;->factory:Lsun/reflect/generics/factory/GenericsFactory;

    return-object v0
.end method


# virtual methods
.method protected getReifier()Lsun/reflect/generics/visitor/Reifier;
    .registers 2

    .line 62
    invoke-direct {p0}, Lsun/reflect/generics/repository/AbstractRepository;->getFactory()Lsun/reflect/generics/factory/GenericsFactory;

    move-result-object v0

    invoke-static {v0}, Lsun/reflect/generics/visitor/Reifier;->make(Lsun/reflect/generics/factory/GenericsFactory;)Lsun/reflect/generics/visitor/Reifier;

    move-result-object v0

    return-object v0
.end method

.method protected getTree()Lsun/reflect/generics/tree/Tree;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lsun/reflect/generics/repository/AbstractRepository;->tree:Lsun/reflect/generics/tree/Tree;

    return-object v0
.end method

.method protected abstract parse(Ljava/lang/String;)Lsun/reflect/generics/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
