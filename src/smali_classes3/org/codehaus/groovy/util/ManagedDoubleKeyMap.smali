.class public Lorg/codehaus/groovy/util/ManagedDoubleKeyMap;
.super Lorg/codehaus/groovy/util/AbstractConcurrentDoubleKeyMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/groovy/util/ManagedDoubleKeyMap$Entry;,
        Lorg/codehaus/groovy/util/ManagedDoubleKeyMap$EntryWithValue;,
        Lorg/codehaus/groovy/util/ManagedDoubleKeyMap$Ref;,
        Lorg/codehaus/groovy/util/ManagedDoubleKeyMap$Segment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K1:",
        "Ljava/lang/Object;",
        "K2:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/codehaus/groovy/util/AbstractConcurrentDoubleKeyMap<",
        "TK1;TK2;TV;>;"
    }
.end annotation


# virtual methods
.method protected j6(Ljava/lang/Object;I)Lorg/codehaus/groovy/util/AbstractConcurrentDoubleKeyMap$Segment;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lorg/codehaus/groovy/util/AbstractConcurrentDoubleKeyMap$Segment<",
            "TK1;TK2;TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/codehaus/groovy/util/ManagedDoubleKeyMap$Segment;

    check-cast p1, Lorg/codehaus/groovy/util/ReferenceBundle;

    invoke-direct {v0, p1, p2}, Lorg/codehaus/groovy/util/ManagedDoubleKeyMap$Segment;-><init>(Lorg/codehaus/groovy/util/ReferenceBundle;I)V

    return-object v0
.end method

.method protected bridge synthetic j6(Ljava/lang/Object;I)Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/codehaus/groovy/util/ManagedDoubleKeyMap;->j6(Ljava/lang/Object;I)Lorg/codehaus/groovy/util/AbstractConcurrentDoubleKeyMap$Segment;

    move-result-object p1

    return-object p1
.end method
