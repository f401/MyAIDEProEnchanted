.class public Lorg/codehaus/groovy/util/ManagedConcurrentMap$EntryWithValue;
.super Lorg/codehaus/groovy/util/ManagedConcurrentMap$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/util/ManagedConcurrentMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntryWithValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/codehaus/groovy/util/ManagedConcurrentMap$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private Zo:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/codehaus/groovy/util/ReferenceBundle;Lorg/codehaus/groovy/util/ManagedConcurrentMap$Segment;Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/groovy/util/ReferenceBundle;",
            "Lorg/codehaus/groovy/util/ManagedConcurrentMap$Segment;",
            "TK;ITV;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codehaus/groovy/util/ManagedConcurrentMap$Entry;-><init>(Lorg/codehaus/groovy/util/ReferenceBundle;Lorg/codehaus/groovy/util/ManagedConcurrentMap$Segment;Ljava/lang/Object;I)V

    invoke-virtual {p0, p5}, Lorg/codehaus/groovy/util/ManagedConcurrentMap$EntryWithValue;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/groovy/util/ManagedConcurrentMap$EntryWithValue;->Zo:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/codehaus/groovy/util/ManagedConcurrentMap$EntryWithValue;->Zo:Ljava/lang/Object;

    return-void
.end method
