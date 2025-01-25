.class public Lsun/reflect/generics/tree/ClassTypeSignature;
.super Ljava/lang/Object;
.source "ClassTypeSignature.java"

# interfaces
.implements Lsun/reflect/generics/tree/FieldTypeSignature;


# instance fields
.field private path:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/reflect/generics/tree/SimpleClassTypeSignature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/reflect/generics/tree/SimpleClassTypeSignature;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lsun/reflect/generics/tree/ClassTypeSignature;->path:Ljava/util/List;

    .line 41
    return-void
.end method

.method public static make(Ljava/util/List;)Lsun/reflect/generics/tree/ClassTypeSignature;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/reflect/generics/tree/SimpleClassTypeSignature;",
            ">;)",
            "Lsun/reflect/generics/tree/ClassTypeSignature;"
        }
    .end annotation

    .line 44
    new-instance v0, Lsun/reflect/generics/tree/ClassTypeSignature;

    invoke-direct {v0, p0}, Lsun/reflect/generics/tree/ClassTypeSignature;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public accept(Lsun/reflect/generics/visitor/TypeTreeVisitor;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/reflect/generics/visitor/TypeTreeVisitor",
            "<*>;)V"
        }
    .end annotation

    .line 49
    invoke-interface {p1, p0}, Lsun/reflect/generics/visitor/TypeTreeVisitor;->visitClassTypeSignature(Lsun/reflect/generics/tree/ClassTypeSignature;)V

    return-void
.end method

.method public getPath()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsun/reflect/generics/tree/SimpleClassTypeSignature;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lsun/reflect/generics/tree/ClassTypeSignature;->path:Ljava/util/List;

    return-object v0
.end method
