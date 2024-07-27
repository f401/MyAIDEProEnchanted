.class public Lorg/codehaus/groovy/util/ManagedConcurrentMap$Segment;
.super Lorg/codehaus/groovy/util/AbstractConcurrentMap$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/util/ManagedConcurrentMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/codehaus/groovy/util/AbstractConcurrentMap$Segment",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field protected final v5:Lorg/codehaus/groovy/util/ReferenceBundle;


# direct methods
.method public constructor <init>(Lorg/codehaus/groovy/util/ReferenceBundle;I)V
    .registers 5

    invoke-direct {p0, p2}, Lorg/codehaus/groovy/util/AbstractConcurrentMap$Segment;-><init>(I)V

    iput-object p1, p0, Lorg/codehaus/groovy/util/ManagedConcurrentMap$Segment;->v5:Lorg/codehaus/groovy/util/ReferenceBundle;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bundle must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected j6(Ljava/lang/Object;ILjava/lang/Object;)Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)",
            "Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v1, p0, Lorg/codehaus/groovy/util/ManagedConcurrentMap$Segment;->v5:Lorg/codehaus/groovy/util/ReferenceBundle;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/codehaus/groovy/util/ManagedConcurrentMap$EntryWithValue;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/groovy/util/ManagedConcurrentMap$EntryWithValue;-><init>(Lorg/codehaus/groovy/util/ReferenceBundle;Lorg/codehaus/groovy/util/ManagedConcurrentMap$Segment;Ljava/lang/Object;ILjava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bundle must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
