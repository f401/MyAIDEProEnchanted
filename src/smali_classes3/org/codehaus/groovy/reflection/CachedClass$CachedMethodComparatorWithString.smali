.class public Lorg/codehaus/groovy/reflection/CachedClass$CachedMethodComparatorWithString;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/reflection/CachedClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachedMethodComparatorWithString"
.end annotation


# static fields
.field public static final j6:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/codehaus/groovy/reflection/CachedClass$CachedMethodComparatorWithString;

    invoke-direct {v0}, Lorg/codehaus/groovy/reflection/CachedClass$CachedMethodComparatorWithString;-><init>()V

    sput-object v0, Lorg/codehaus/groovy/reflection/CachedClass$CachedMethodComparatorWithString;->j6:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    instance-of v0, p1, Lorg/codehaus/groovy/reflection/CachedMethod;

    if-eqz v0, :cond_11

    check-cast p1, Lorg/codehaus/groovy/reflection/CachedMethod;

    invoke-virtual {p1}, Lorg/codehaus/groovy/reflection/CachedMethod;->Hw()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Ljava/lang/String;

    :goto_c
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_11
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lorg/codehaus/groovy/reflection/CachedMethod;

    invoke-virtual {p2}, Lorg/codehaus/groovy/reflection/CachedMethod;->Hw()Ljava/lang/String;

    move-result-object p2

    goto :goto_c
.end method
