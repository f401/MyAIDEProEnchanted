.class public Lcom/tencent/mm/androlib/res/data/ResID;
.super Ljava/lang/Object;


# instance fields
.field public final entry:I

.field public final id:I

.field public final package_:I

.field public final type:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    const v2, 0xffff

    and-int/2addr v2, p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/tencent/mm/androlib/res/data/ResID;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 6

    shl-int/lit8 v0, p1, 0x18

    shl-int/lit8 v1, p2, 0x10

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/mm/androlib/res/data/ResID;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/mm/androlib/res/data/ResID;->package_:I

    iput p2, p0, Lcom/tencent/mm/androlib/res/data/ResID;->type:I

    iput p3, p0, Lcom/tencent/mm/androlib/res/data/ResID;->entry:I

    iput p4, p0, Lcom/tencent/mm/androlib/res/data/ResID;->id:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/tencent/mm/androlib/res/data/ResID;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_3

    check-cast p1, Lcom/tencent/mm/androlib/res/data/ResID;

    iget v1, p0, Lcom/tencent/mm/androlib/res/data/ResID;->id:I

    iget v2, p1, Lcom/tencent/mm/androlib/res/data/ResID;->id:I

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget v0, p0, Lcom/tencent/mm/androlib/res/data/ResID;->id:I

    add-int/lit16 v0, v0, 0x20f

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const-string v0, "0x%08x"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/tencent/mm/androlib/res/data/ResID;->id:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
