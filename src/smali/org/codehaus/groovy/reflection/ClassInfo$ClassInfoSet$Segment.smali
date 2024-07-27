.class final Lorg/codehaus/groovy/reflection/ClassInfo$ClassInfoSet$Segment;
.super Lorg/codehaus/groovy/util/ManagedConcurrentMap$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/reflection/ClassInfo$ClassInfoSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/groovy/util/ManagedConcurrentMap$Segment",
        "<",
        "Ljava/lang/Class;",
        "Lorg/codehaus/groovy/reflection/ClassInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/codehaus/groovy/util/ReferenceBundle;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/codehaus/groovy/util/ManagedConcurrentMap$Segment;-><init>(Lorg/codehaus/groovy/util/ReferenceBundle;I)V

    return-void
.end method


# virtual methods
.method protected j6(Ljava/lang/Class;ILorg/codehaus/groovy/reflection/ClassInfo;)Lorg/codehaus/groovy/reflection/ClassInfo;
    .registers 5

    new-instance v0, Lorg/codehaus/groovy/reflection/ClassInfo;

    invoke-direct {v0, p0, p1, p2}, Lorg/codehaus/groovy/reflection/ClassInfo;-><init>(Lorg/codehaus/groovy/util/ManagedConcurrentMap$Segment;Ljava/lang/Class;I)V

    return-object v0
.end method

.method protected bridge synthetic j6(Ljava/lang/Object;ILjava/lang/Object;)Lorg/codehaus/groovy/util/AbstractConcurrentMap$Entry;
    .registers 5

    check-cast p1, Ljava/lang/Class;

    check-cast p3, Lorg/codehaus/groovy/reflection/ClassInfo;

    invoke-virtual {p0, p1, p2, p3}, Lorg/codehaus/groovy/reflection/ClassInfo$ClassInfoSet$Segment;->j6(Ljava/lang/Class;ILorg/codehaus/groovy/reflection/ClassInfo;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    return-object v0
.end method
