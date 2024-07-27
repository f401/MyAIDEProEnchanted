.class public Lsun/reflect/generics/tree/BottomSignature;
.super Ljava/lang/Object;
.source "BottomSignature.java"

# interfaces
.implements Lsun/reflect/generics/tree/FieldTypeSignature;


# static fields
.field private static singleton:Lsun/reflect/generics/tree/BottomSignature;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lsun/reflect/generics/tree/BottomSignature;

    invoke-direct {v0}, Lsun/reflect/generics/tree/BottomSignature;-><init>()V

    sput-object v0, Lsun/reflect/generics/tree/BottomSignature;->singleton:Lsun/reflect/generics/tree/BottomSignature;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static make()Lsun/reflect/generics/tree/BottomSignature;
    .registers 1

    .line 35
    sget-object v0, Lsun/reflect/generics/tree/BottomSignature;->singleton:Lsun/reflect/generics/tree/BottomSignature;

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

    .line 37
    invoke-interface {p1, p0}, Lsun/reflect/generics/visitor/TypeTreeVisitor;->visitBottomSignature(Lsun/reflect/generics/tree/BottomSignature;)V

    return-void
.end method
