.class public final Lcom/google/firebase/components/f;
.super Ljava/lang/Object;


# instance fields
.field private final DW:I

.field private final FH:I

.field private final j6:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null dependency anInterface."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/components/f;->j6:Ljava/lang/Class;

    iput p2, p0, Lcom/google/firebase/components/f;->DW:I

    iput p3, p0, Lcom/google/firebase/components/f;->FH:I

    return-void
.end method

.method public static j6(Ljava/lang/Class;)Lcom/google/firebase/components/f;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/firebase/components/f;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/components/f;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/components/f;-><init>(Ljava/lang/Class;II)V

    return-object v0
.end method


# virtual methods
.method public final DW()Z
    .registers 3

    iget v0, p0, Lcom/google/firebase/components/f;->DW:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final FH()Z
    .registers 2

    iget v0, p0, Lcom/google/firebase/components/f;->FH:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/google/firebase/components/f;

    if-eqz v0, :cond_1a

    check-cast p1, Lcom/google/firebase/components/f;

    iget-object v0, p0, Lcom/google/firebase/components/f;->j6:Ljava/lang/Class;

    iget-object v1, p1, Lcom/google/firebase/components/f;->j6:Ljava/lang/Class;

    if-ne v0, v1, :cond_1a

    iget v0, p0, Lcom/google/firebase/components/f;->DW:I

    iget v1, p1, Lcom/google/firebase/components/f;->DW:I

    if-ne v0, v1, :cond_1a

    iget v0, p0, Lcom/google/firebase/components/f;->FH:I

    iget p1, p1, Lcom/google/firebase/components/f;->FH:I

    if-ne v0, p1, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/google/firebase/components/f;->j6:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget v2, p0, Lcom/google/firebase/components/f;->DW:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v1, p0, Lcom/google/firebase/components/f;->FH:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final j6()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/components/f;->j6:Ljava/lang/Class;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dependency{anInterface="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/firebase/components/f;->j6:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", required="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/firebase/components/f;->DW:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", direct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/firebase/components/f;->FH:I

    if-nez v1, :cond_27

    const/4 v2, 0x1

    :cond_27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
