.class public Lorg/codehaus/groovy/util/ManagedConcurrentMap$Entry;
.super Lorg/codehaus/groovy/util/ManagedReference;

# interfaces
.implements Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/util/ManagedConcurrentMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/codehaus/groovy/util/ManagedReference",
        "<TK;>;",
        "Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final Hw:Lorg/codehaus/groovy/util/ManagedConcurrentMap$Segment;

.field private v5:I


# direct methods
.method public constructor <init>(Lorg/codehaus/groovy/util/ReferenceBundle;Lorg/codehaus/groovy/util/ManagedConcurrentMap$Segment;Ljava/lang/Object;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/groovy/util/ReferenceBundle;",
            "Lorg/codehaus/groovy/util/ManagedConcurrentMap$Segment;",
            "TK;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lorg/codehaus/groovy/util/ManagedReference;-><init>(Lorg/codehaus/groovy/util/ReferenceBundle;Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/codehaus/groovy/util/ManagedConcurrentMap$Entry;->Hw:Lorg/codehaus/groovy/util/ManagedConcurrentMap$Segment;

    iput p4, p0, Lorg/codehaus/groovy/util/ManagedConcurrentMap$Entry;->v5:I

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    return-object p0
.end method

.method public isValid()Z
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/ManagedReference;->Hw()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/util/ManagedConcurrentMap$Entry;->v5:I

    return v0
.end method

.method public j6(Ljava/lang/Object;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)Z"
        }
    .end annotation

    iget v0, p0, Lorg/codehaus/groovy/util/ManagedConcurrentMap$Entry;->v5:I

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/ManagedReference;->Hw()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    return-void
.end method
