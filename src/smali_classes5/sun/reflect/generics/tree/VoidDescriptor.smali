.class public Lsun/reflect/generics/tree/VoidDescriptor;
.super Ljava/lang/Object;
.source "VoidDescriptor.java"

# interfaces
.implements Lsun/reflect/generics/tree/ReturnType;


# static fields
.field private static singleton:Lsun/reflect/generics/tree/VoidDescriptor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lsun/reflect/generics/tree/VoidDescriptor;

    invoke-direct {v0}, Lsun/reflect/generics/tree/VoidDescriptor;-><init>()V

    sput-object v0, Lsun/reflect/generics/tree/VoidDescriptor;->singleton:Lsun/reflect/generics/tree/VoidDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static make()Lsun/reflect/generics/tree/VoidDescriptor;
    .registers 1

    .line 37
    sget-object v0, Lsun/reflect/generics/tree/VoidDescriptor;->singleton:Lsun/reflect/generics/tree/VoidDescriptor;

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

    .line 41
    invoke-interface {p1, p0}, Lsun/reflect/generics/visitor/TypeTreeVisitor;->visitVoidDescriptor(Lsun/reflect/generics/tree/VoidDescriptor;)V

    return-void
.end method
