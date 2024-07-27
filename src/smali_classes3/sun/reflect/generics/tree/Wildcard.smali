.class public Lsun/reflect/generics/tree/Wildcard;
.super Ljava/lang/Object;
.source "Wildcard.java"

# interfaces
.implements Lsun/reflect/generics/tree/TypeArgument;


# static fields
.field private static final emptyBounds:[Lsun/reflect/generics/tree/FieldTypeSignature;


# instance fields
.field private lowerBounds:[Lsun/reflect/generics/tree/FieldTypeSignature;

.field private upperBounds:[Lsun/reflect/generics/tree/FieldTypeSignature;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Lsun/reflect/generics/tree/FieldTypeSignature;

    sput-object v0, Lsun/reflect/generics/tree/Wildcard;->emptyBounds:[Lsun/reflect/generics/tree/FieldTypeSignature;

    return-void
.end method

.method private constructor <init>([Lsun/reflect/generics/tree/FieldTypeSignature;[Lsun/reflect/generics/tree/FieldTypeSignature;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lsun/reflect/generics/tree/Wildcard;->upperBounds:[Lsun/reflect/generics/tree/FieldTypeSignature;

    .line 36
    iput-object p2, p0, Lsun/reflect/generics/tree/Wildcard;->lowerBounds:[Lsun/reflect/generics/tree/FieldTypeSignature;

    .line 37
    return-void
.end method

.method public static make([Lsun/reflect/generics/tree/FieldTypeSignature;[Lsun/reflect/generics/tree/FieldTypeSignature;)Lsun/reflect/generics/tree/Wildcard;
    .registers 3

    .line 43
    new-instance v0, Lsun/reflect/generics/tree/Wildcard;

    invoke-direct {v0, p0, p1}, Lsun/reflect/generics/tree/Wildcard;-><init>([Lsun/reflect/generics/tree/FieldTypeSignature;[Lsun/reflect/generics/tree/FieldTypeSignature;)V

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

    .line 58
    invoke-interface {p1, p0}, Lsun/reflect/generics/visitor/TypeTreeVisitor;->visitWildcard(Lsun/reflect/generics/tree/Wildcard;)V

    return-void
.end method

.method public getLowerBounds()[Lsun/reflect/generics/tree/FieldTypeSignature;
    .registers 4

    .line 51
    iget-object v0, p0, Lsun/reflect/generics/tree/Wildcard;->lowerBounds:[Lsun/reflect/generics/tree/FieldTypeSignature;

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 52
    invoke-static {}, Lsun/reflect/generics/tree/BottomSignature;->make()Lsun/reflect/generics/tree/BottomSignature;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 53
    sget-object v0, Lsun/reflect/generics/tree/Wildcard;->emptyBounds:[Lsun/reflect/generics/tree/FieldTypeSignature;

    .line 55
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/reflect/generics/tree/Wildcard;->lowerBounds:[Lsun/reflect/generics/tree/FieldTypeSignature;

    goto :goto_0
.end method

.method public getUpperBounds()[Lsun/reflect/generics/tree/FieldTypeSignature;
    .registers 2

    .line 47
    iget-object v0, p0, Lsun/reflect/generics/tree/Wildcard;->upperBounds:[Lsun/reflect/generics/tree/FieldTypeSignature;

    return-object v0
.end method
