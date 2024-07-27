.class public Lorg/codehaus/groovy/util/ManagedLinkedList;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/groovy/util/ManagedLinkedList$Element;,
        Lorg/codehaus/groovy/util/ManagedLinkedList$Iter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private DW:Lorg/codehaus/groovy/util/ManagedLinkedList$Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/groovy/util/ManagedLinkedList",
            "<TT;>.Element<TT;>;"
        }
    .end annotation
.end field

.field private j6:Lorg/codehaus/groovy/util/ManagedLinkedList$Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/groovy/util/ManagedLinkedList",
            "<TT;>.Element<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic DW(Lorg/codehaus/groovy/util/ManagedLinkedList;)Lorg/codehaus/groovy/util/ManagedLinkedList$Element;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/util/ManagedLinkedList;->j6:Lorg/codehaus/groovy/util/ManagedLinkedList$Element;

    return-object v0
.end method

.method static synthetic DW(Lorg/codehaus/groovy/util/ManagedLinkedList;Lorg/codehaus/groovy/util/ManagedLinkedList$Element;)Lorg/codehaus/groovy/util/ManagedLinkedList$Element;
    .registers 2

    iput-object p1, p0, Lorg/codehaus/groovy/util/ManagedLinkedList;->j6:Lorg/codehaus/groovy/util/ManagedLinkedList$Element;

    return-object p1
.end method

.method static synthetic j6(Lorg/codehaus/groovy/util/ManagedLinkedList;)Lorg/codehaus/groovy/util/ManagedLinkedList$Element;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/util/ManagedLinkedList;->DW:Lorg/codehaus/groovy/util/ManagedLinkedList$Element;

    return-object v0
.end method

.method static synthetic j6(Lorg/codehaus/groovy/util/ManagedLinkedList;Lorg/codehaus/groovy/util/ManagedLinkedList$Element;)Lorg/codehaus/groovy/util/ManagedLinkedList$Element;
    .registers 2

    iput-object p1, p0, Lorg/codehaus/groovy/util/ManagedLinkedList;->DW:Lorg/codehaus/groovy/util/ManagedLinkedList$Element;

    return-object p1
.end method
