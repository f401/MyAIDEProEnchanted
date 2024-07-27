.class abstract Lorg/codehaus/groovy/util/AbstractConcurrentDoubleKeyMap$Segment;
.super Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/util/AbstractConcurrentDoubleKeyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Segment"
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
        "Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/codehaus/groovy/util/AbstractConcurrentMapBase$Segment;-><init>(I)V

    return-void
.end method
