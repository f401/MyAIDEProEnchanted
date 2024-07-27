.class public Lsun/reflect/generics/tree/CharSignature;
.super Ljava/lang/Object;
.source "CharSignature.java"

# interfaces
.implements Lsun/reflect/generics/tree/BaseType;


# static fields
.field private static singleton:Lsun/reflect/generics/tree/CharSignature;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Lsun/reflect/generics/tree/CharSignature;

    invoke-direct {v0}, Lsun/reflect/generics/tree/CharSignature;-><init>()V

    sput-object v0, Lsun/reflect/generics/tree/CharSignature;->singleton:Lsun/reflect/generics/tree/CharSignature;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static make()Lsun/reflect/generics/tree/CharSignature;
    .registers 1

    .line 36
    sget-object v0, Lsun/reflect/generics/tree/CharSignature;->singleton:Lsun/reflect/generics/tree/CharSignature;

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

    .line 39
    invoke-interface {p1, p0}, Lsun/reflect/generics/visitor/TypeTreeVisitor;->visitCharSignature(Lsun/reflect/generics/tree/CharSignature;)V

    .line 40
    return-void
.end method
