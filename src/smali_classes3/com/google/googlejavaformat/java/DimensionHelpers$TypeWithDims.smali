.class Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;
.super Ljava/lang/Object;
.source "DimensionHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlejavaformat/java/DimensionHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TypeWithDims"
.end annotation


# instance fields
.field final dims:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/sun/source/tree/AnnotationTree;",
            ">;>;"
        }
    .end annotation
.end field

.field final node:Lcom/sun/source/tree/Tree;


# direct methods
.method public constructor <init>(Lcom/sun/source/tree/Tree;Lcom/google/common/collect/ImmutableList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/sun/source/tree/AnnotationTree;",
            ">;>;)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->node:Lcom/sun/source/tree/Tree;

    .line 126
    iput-object p2, p0, Lcom/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;->dims:Lcom/google/common/collect/ImmutableList;

    .line 127
    return-void
.end method
