.class public Lorg/codehaus/groovy/util/FastArray;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final j6:Lorg/codehaus/groovy/util/FastArray;


# instance fields
.field private DW:[Ljava/lang/Object;

.field public FH:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/codehaus/groovy/util/FastArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/codehaus/groovy/util/FastArray;-><init>(I)V

    sput-object v0, Lorg/codehaus/groovy/util/FastArray;->j6:Lorg/codehaus/groovy/util/FastArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/codehaus/groovy/util/FastArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/codehaus/groovy/util/FastArray;->DW:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public DW()Ljava/util/List;
    .registers 2

    new-instance v0, Lorg/codehaus/groovy/util/FastArray$1;

    invoke-direct {v0, p0}, Lorg/codehaus/groovy/util/FastArray$1;-><init>(Lorg/codehaus/groovy/util/FastArray;)V

    return-object v0
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/util/FastArray;->FH:I

    return v0
.end method

.method public j6(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/groovy/util/FastArray;->DW:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/FastArray;->j6()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[]"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/groovy/util/FastArray;->DW()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
