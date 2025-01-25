.class public Lorg/codehaus/groovy/util/ManagedDoubleKeyMap$Entry;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/codehaus/groovy/util/AbstractConcurrentDoubleKeyMap$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/util/ManagedDoubleKeyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
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
        "Ljava/lang/Object;",
        "Lorg/codehaus/groovy/util/AbstractConcurrentDoubleKeyMap$Entry<",
        "TK1;TK2;TV;>;"
    }
.end annotation


# instance fields
.field final DW:Lorg/codehaus/groovy/util/ManagedDoubleKeyMap$Ref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/groovy/util/ManagedDoubleKeyMap$Ref<",
            "TK1;>;"
        }
    .end annotation
.end field

.field final FH:Lorg/codehaus/groovy/util/ManagedDoubleKeyMap$Ref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/groovy/util/ManagedDoubleKeyMap$Ref<",
            "TK2;>;"
        }
    .end annotation
.end field

.field private final j6:I


# virtual methods
.method public isValid()Z
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/util/ManagedDoubleKeyMap$Entry;->DW:Lorg/codehaus/groovy/util/ManagedDoubleKeyMap$Ref;

    invoke-virtual {v0}, Lorg/codehaus/groovy/util/ManagedReference;->Hw()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/codehaus/groovy/util/ManagedDoubleKeyMap$Entry;->FH:Lorg/codehaus/groovy/util/ManagedDoubleKeyMap$Ref;

    invoke-virtual {v0}, Lorg/codehaus/groovy/util/ManagedReference;->Hw()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/util/ManagedDoubleKeyMap$Entry;->j6:I

    return v0
.end method
