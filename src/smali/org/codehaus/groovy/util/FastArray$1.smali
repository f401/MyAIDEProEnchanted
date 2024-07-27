.class Lorg/codehaus/groovy/util/FastArray$1;
.super Ljava/util/AbstractList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codehaus/groovy/util/FastArray;->DW()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Lorg/codehaus/groovy/util/FastArray;


# direct methods
.method constructor <init>(Lorg/codehaus/groovy/util/FastArray;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/groovy/util/FastArray$1;->j6:Lorg/codehaus/groovy/util/FastArray;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/groovy/util/FastArray$1;->j6:Lorg/codehaus/groovy/util/FastArray;

    invoke-virtual {v0, p1}, Lorg/codehaus/groovy/util/FastArray;->j6(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/util/FastArray$1;->j6:Lorg/codehaus/groovy/util/FastArray;

    iget v0, v0, Lorg/codehaus/groovy/util/FastArray;->FH:I

    return v0
.end method
