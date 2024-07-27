.class final Lcom/google/android/gms/internal/ads/_z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/cA;


# instance fields
.field private final DW:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/gms/internal/ads/bA;",
            ">;"
        }
    .end annotation
.end field

.field private final FH:Lcom/google/android/gms/internal/ads/jA;

.field private Hw:Lcom/google/android/gms/internal/ads/dA;

.field private VH:J

.field private Zo:I

.field private final j6:[B

.field private v5:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->j6:[B

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->DW:Ljava/util/Stack;

    new-instance v0, Lcom/google/android/gms/internal/ads/jA;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/jA;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->FH:Lcom/google/android/gms/internal/ads/jA;

    return-void
.end method

.method private final j6(Lcom/google/android/gms/internal/ads/Qz;I)J
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->j6:[B

    invoke-interface {p1, v0, v2, p2}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    const-wide/16 v0, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/_z;->j6:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-long v4, v3

    or-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/dA;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/_z;->Hw:Lcom/google/android/gms/internal/ads/dA;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Qz;)Z
    .registers 14

    const-wide/16 v10, 0x8

    const/4 v4, 0x2

    const/4 v8, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->Hw:Lcom/google/android/gms/internal/ads/dA;

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->DW:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->DW:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bA;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bA;->j6(Lcom/google/android/gms/internal/ads/bA;)J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/_z;->Hw:Lcom/google/android/gms/internal/ads/dA;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->DW:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bA;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bA;->DW(Lcom/google/android/gms/internal/ads/bA;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/dA;->j6(I)V

    :goto_2
    return v6

    :cond_0
    move v0, v7

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/_z;->v5:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->FH:Lcom/google/android/gms/internal/ads/jA;

    invoke-virtual {v0, p1, v6, v7, v8}, Lcom/google/android/gms/internal/ads/jA;->j6(Lcom/google/android/gms/internal/ads/Qz;ZZI)J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Qz;->j6()V

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->j6:[B

    invoke-interface {p1, v0, v7, v8}, Lcom/google/android/gms/internal/ads/Qz;->j6([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->j6:[B

    aget-byte v0, v0, v7

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jA;->j6(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    if-gt v0, v8, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/_z;->j6:[B

    invoke-static {v1, v0, v7}, Lcom/google/android/gms/internal/ads/jA;->j6([BIZ)J

    move-result-wide v2

    long-to-int v1, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/_z;->Hw:Lcom/google/android/gms/internal/ads/dA;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/dA;->FH(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/Qz;->DW(I)V

    int-to-long v0, v1

    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    move v6, v7

    goto :goto_2

    :cond_3
    invoke-interface {p1, v6}, Lcom/google/android/gms/internal/ads/Qz;->DW(I)V

    goto :goto_3

    :cond_4
    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/_z;->Zo:I

    iput v6, p0, Lcom/google/android/gms/internal/ads/_z;->v5:I

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/_z;->v5:I

    if-ne v0, v6, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->FH:Lcom/google/android/gms/internal/ads/jA;

    const/16 v1, 0x8

    invoke-virtual {v0, p1, v7, v6, v1}, Lcom/google/android/gms/internal/ads/jA;->j6(Lcom/google/android/gms/internal/ads/Qz;ZZI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/_z;->VH:J

    iput v4, p0, Lcom/google/android/gms/internal/ads/_z;->v5:I

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->Hw:Lcom/google/android/gms/internal/ads/dA;

    iget v1, p0, Lcom/google/android/gms/internal/ads/_z;->Zo:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dA;->DW(I)I

    move-result v0

    if-eqz v0, :cond_12

    if-eq v0, v6, :cond_11

    if-eq v0, v4, :cond_f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    if-eq v0, v8, :cond_b

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/_z;->VH:J

    const-wide/16 v2, 0x4

    cmp-long v2, v0, v2

    if-eqz v2, :cond_7

    cmp-long v2, v0, v10

    if-nez v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/_z;->Hw:Lcom/google/android/gms/internal/ads/dA;

    iget v3, p0, Lcom/google/android/gms/internal/ads/_z;->Zo:I

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/_z;->VH:J

    long-to-int v0, v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/_z;->j6(Lcom/google/android/gms/internal/ads/Qz;I)J

    move-result-wide v4

    if-ne v0, v8, :cond_9

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-double v0, v0

    :goto_4
    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/dA;->j6(ID)V

    iput v7, p0, Lcom/google/android/gms/internal/ads/_z;->v5:I

    goto/16 :goto_2

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid float size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_4

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid element type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->Hw:Lcom/google/android/gms/internal/ads/dA;

    iget v1, p0, Lcom/google/android/gms/internal/ads/_z;->Zo:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/_z;->VH:J

    long-to-int v2, v2

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/dA;->j6(IILcom/google/android/gms/internal/ads/Qz;)V

    iput v7, p0, Lcom/google/android/gms/internal/ads/_z;->v5:I

    goto/16 :goto_2

    :cond_c
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/_z;->VH:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_e

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/_z;->Hw:Lcom/google/android/gms/internal/ads/dA;

    iget v3, p0, Lcom/google/android/gms/internal/ads/_z;->Zo:I

    long-to-int v0, v0

    if-nez v0, :cond_d

    const-string v0, ""

    :goto_5
    invoke-interface {v2, v3, v0}, Lcom/google/android/gms/internal/ads/dA;->j6(ILjava/lang/String;)V

    iput v7, p0, Lcom/google/android/gms/internal/ads/_z;->v5:I

    goto/16 :goto_2

    :cond_d
    new-array v1, v0, [B

    invoke-interface {p1, v1, v7, v0}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_5

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "String element size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/_z;->VH:J

    cmp-long v2, v0, v10

    if-gtz v2, :cond_10

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/_z;->Hw:Lcom/google/android/gms/internal/ads/dA;

    iget v3, p0, Lcom/google/android/gms/internal/ads/_z;->Zo:I

    long-to-int v0, v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/_z;->j6(Lcom/google/android/gms/internal/ads/Qz;I)J

    move-result-wide v0

    invoke-interface {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/dA;->j6(IJ)V

    iput v7, p0, Lcom/google/android/gms/internal/ads/_z;->v5:I

    goto/16 :goto_2

    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid integer size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/_z;->VH:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/_z;->DW:Ljava/util/Stack;

    new-instance v5, Lcom/google/android/gms/internal/ads/bA;

    iget v8, p0, Lcom/google/android/gms/internal/ads/_z;->Zo:I

    add-long/2addr v0, v2

    const/4 v9, 0x0

    invoke-direct {v5, v8, v0, v1, v9}, Lcom/google/android/gms/internal/ads/bA;-><init>(IJLcom/google/android/gms/internal/ads/aA;)V

    invoke-virtual {v4, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->Hw:Lcom/google/android/gms/internal/ads/dA;

    iget v1, p0, Lcom/google/android/gms/internal/ads/_z;->Zo:I

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/_z;->VH:J

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dA;->j6(IJJ)V

    iput v7, p0, Lcom/google/android/gms/internal/ads/_z;->v5:I

    goto/16 :goto_2

    :cond_12
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/_z;->VH:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/Qz;->DW(I)V

    iput v7, p0, Lcom/google/android/gms/internal/ads/_z;->v5:I

    goto/16 :goto_1
.end method

.method public final reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/_z;->v5:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->DW:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->FH:Lcom/google/android/gms/internal/ads/jA;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jA;->j6()V

    return-void
.end method
