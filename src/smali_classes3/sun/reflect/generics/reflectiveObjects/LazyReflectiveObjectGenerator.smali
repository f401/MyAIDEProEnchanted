.class public abstract Lsun/reflect/generics/reflectiveObjects/LazyReflectiveObjectGenerator;
.super Ljava/lang/Object;
.source "LazyReflectiveObjectGenerator.java"


# instance fields
.field private factory:Lsun/reflect/generics/factory/GenericsFactory;


# direct methods
.method protected constructor <init>(Lsun/reflect/generics/factory/GenericsFactory;)V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lsun/reflect/generics/reflectiveObjects/LazyReflectiveObjectGenerator;->factory:Lsun/reflect/generics/factory/GenericsFactory;

    .line 47
    return-void
.end method

.method private getFactory()Lsun/reflect/generics/factory/GenericsFactory;
    .registers 2

    .line 51
    iget-object v0, p0, Lsun/reflect/generics/reflectiveObjects/LazyReflectiveObjectGenerator;->factory:Lsun/reflect/generics/factory/GenericsFactory;

    return-object v0
.end method


# virtual methods
.method protected getReifier()Lsun/reflect/generics/visitor/Reifier;
    .registers 2

    .line 55
    invoke-direct {p0}, Lsun/reflect/generics/reflectiveObjects/LazyReflectiveObjectGenerator;->getFactory()Lsun/reflect/generics/factory/GenericsFactory;

    move-result-object v0

    invoke-static {v0}, Lsun/reflect/generics/visitor/Reifier;->make(Lsun/reflect/generics/factory/GenericsFactory;)Lsun/reflect/generics/visitor/Reifier;

    move-result-object v0

    return-object v0
.end method
