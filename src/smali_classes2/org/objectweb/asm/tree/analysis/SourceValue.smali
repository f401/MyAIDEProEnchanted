.class public Lorg/objectweb/asm/tree/analysis/SourceValue;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/objectweb/asm/tree/analysis/Value;


# instance fields
.field public final insns:Ljava/util/Set;

.field public final size:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-static {}, Lorg/objectweb/asm/tree/analysis/SmallSet;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/objectweb/asm/tree/analysis/SourceValue;-><init>(ILjava/util/Set;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Set;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/objectweb/asm/tree/analysis/SourceValue;->size:I

    iput-object p2, p0, Lorg/objectweb/asm/tree/analysis/SourceValue;->insns:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(ILorg/objectweb/asm/tree/AbstractInsnNode;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/objectweb/asm/tree/analysis/SourceValue;->size:I

    new-instance v0, Lorg/objectweb/asm/tree/analysis/SmallSet;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lorg/objectweb/asm/tree/analysis/SmallSet;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/objectweb/asm/tree/analysis/SourceValue;->insns:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/objectweb/asm/tree/analysis/SourceValue;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/objectweb/asm/tree/analysis/SourceValue;

    iget v1, p0, Lorg/objectweb/asm/tree/analysis/SourceValue;->size:I

    iget v2, p1, Lorg/objectweb/asm/tree/analysis/SourceValue;->size:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/objectweb/asm/tree/analysis/SourceValue;->insns:Ljava/util/Set;

    iget-object v2, p1, Lorg/objectweb/asm/tree/analysis/SourceValue;->insns:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSize()I
    .registers 2

    iget v0, p0, Lorg/objectweb/asm/tree/analysis/SourceValue;->size:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SourceValue;->insns:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method
