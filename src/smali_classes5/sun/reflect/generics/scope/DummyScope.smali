.class public Lsun/reflect/generics/scope/DummyScope;
.super Ljava/lang/Object;
.source "DummyScope.java"

# interfaces
.implements Lsun/reflect/generics/scope/Scope;


# static fields
.field private static singleton:Lsun/reflect/generics/scope/DummyScope;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Lsun/reflect/generics/scope/DummyScope;

    invoke-direct {v0}, Lsun/reflect/generics/scope/DummyScope;-><init>()V

    sput-object v0, Lsun/reflect/generics/scope/DummyScope;->singleton:Lsun/reflect/generics/scope/DummyScope;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static make()Lsun/reflect/generics/scope/DummyScope;
    .registers 1

    .line 51
    sget-object v0, Lsun/reflect/generics/scope/DummyScope;->singleton:Lsun/reflect/generics/scope/DummyScope;

    return-object v0
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/reflect/TypeVariable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;"
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method
