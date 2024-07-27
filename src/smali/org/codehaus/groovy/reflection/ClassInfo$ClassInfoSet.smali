.class public Lorg/codehaus/groovy/reflection/ClassInfo$ClassInfoSet;
.super Lorg/codehaus/groovy/util/ManagedConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/reflection/ClassInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassInfoSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/groovy/reflection/ClassInfo$ClassInfoSet$Segment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/groovy/util/ManagedConcurrentMap",
        "<",
        "Ljava/lang/Class;",
        "Lorg/codehaus/groovy/reflection/ClassInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/codehaus/groovy/util/ReferenceBundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/util/ManagedConcurrentMap;-><init>(Lorg/codehaus/groovy/util/ReferenceBundle;)V

    return-void
.end method


# virtual methods
.method protected j6(Ljava/lang/Object;I)Lorg/codehaus/groovy/reflection/ClassInfo$ClassInfoSet$Segment;
    .registers 5

    check-cast p1, Lorg/codehaus/groovy/util/ReferenceBundle;

    if-eqz p1, :cond_0

    new-instance v0, Lorg/codehaus/groovy/reflection/ClassInfo$ClassInfoSet$Segment;

    invoke-direct {v0, p1, p2}, Lorg/codehaus/groovy/reflection/ClassInfo$ClassInfoSet$Segment;-><init>(Lorg/codehaus/groovy/util/ReferenceBundle;I)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bundle must not be null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic j6(Ljava/lang/Object;I)Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lorg/codehaus/groovy/reflection/ClassInfo$ClassInfoSet;->j6(Ljava/lang/Object;I)Lorg/codehaus/groovy/reflection/ClassInfo$ClassInfoSet$Segment;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic j6(Ljava/lang/Object;I)Lorg/codehaus/groovy/util/ManagedConcurrentMap$Segment;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lorg/codehaus/groovy/reflection/ClassInfo$ClassInfoSet;->j6(Ljava/lang/Object;I)Lorg/codehaus/groovy/reflection/ClassInfo$ClassInfoSet$Segment;

    move-result-object v0

    return-object v0
.end method
