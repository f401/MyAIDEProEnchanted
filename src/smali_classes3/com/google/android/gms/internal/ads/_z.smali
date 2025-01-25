.class final Lcom/google/android/gms/internal/ads/_z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/cA;


# instance fields
.field private final DW:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->j6:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    const-wide/16 v2, 0x0

    :goto_8
    if-ge v1, p2, :cond_18

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/_z;->j6:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_18
    return-wide v2
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/dA;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/_z;->Hw:Lcom/google/android/gms/internal/ads/dA;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Qz;)Z
    .registers 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->Hw:Lcom/google/android/gms/internal/ads/dA;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    :goto_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->DW:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->DW:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bA;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bA;->j6(Lcom/google/android/gms/internal/ads/bA;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_3a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/_z;->Hw:Lcom/google/android/gms/internal/ads/dA;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->DW:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/bA;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/bA;->DW(Lcom/google/android/gms/internal/ads/bA;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/dA;->j6(I)V

    return v1

    :cond_3a
    iget v0, p0, Lcom/google/android/gms/internal/ads/_z;->v5:I

    const/4 v3, 0x4

    if-nez v0, :cond_84

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->FH:Lcom/google/android/gms/internal/ads/jA;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/jA;->j6(Lcom/google/android/gms/internal/ads/Qz;ZZI)J

    move-result-wide v4

    const-wide/16 v6, -0x2

    cmp-long v0, v4, v6

    if-nez v0, :cond_78

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Qz;->j6()V

    :goto_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->j6:[B

    invoke-interface {p1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/Qz;->j6([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->j6:[B

    aget-byte v0, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jA;->j6(I)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_74

    if-gt v0, v3, :cond_74

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/_z;->j6:[B

    invoke-static {v4, v0, v2}, Lcom/google/android/gms/internal/ads/jA;->j6([BIZ)J

    move-result-wide v4

    long-to-int v5, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/_z;->Hw:Lcom/google/android/gms/internal/ads/dA;

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/dA;->FH(I)Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/Qz;->DW(I)V

    int-to-long v4, v5

    goto :goto_78

    :cond_74
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/Qz;->DW(I)V

    goto :goto_4e

    :cond_78
    :goto_78
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_7f

    return v2

    :cond_7f
    long-to-int v0, v4

    iput v0, p0, Lcom/google/android/gms/internal/ads/_z;->Zo:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/_z;->v5:I

    :cond_84
    iget v0, p0, Lcom/google/android/gms/internal/ads/_z;->v5:I

    const/4 v4, 0x2

    if-ne v0, v1, :cond_95

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->FH:Lcom/google/android/gms/internal/ads/jA;

    const/16 v5, 0x8

    invoke-virtual {v0, p1, v2, v1, v5}, Lcom/google/android/gms/internal/ads/jA;->j6(Lcom/google/android/gms/internal/ads/Qz;ZZI)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/_z;->VH:J

    iput v4, p0, Lcom/google/android/gms/internal/ads/_z;->v5:I

    :cond_95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->Hw:Lcom/google/android/gms/internal/ads/dA;

    iget v5, p0, Lcom/google/android/gms/internal/ads/_z;->Zo:I

    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/ads/dA;->DW(I)I

    move-result v0

    if-eqz v0, :cond_19f

    if-eq v0, v1, :cond_17f

    const-wide/16 v5, 0x8

    if-eq v0, v4, :cond_151

    const/4 v4, 0x3

    if-eq v0, v4, :cond_115

    if-eq v0, v3, :cond_108

    const/4 v4, 0x5

    if-ne v0, v4, :cond_ef

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/_z;->VH:J

    const-wide/16 v9, 0x4

    cmp-long v0, v7, v9

    if-eqz v0, :cond_d3

    cmp-long v0, v7, v5

    if-nez v0, :cond_ba

    goto :goto_d3

    :cond_ba
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid float size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d3
    :goto_d3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->Hw:Lcom/google/android/gms/internal/ads/dA;

    iget v4, p0, Lcom/google/android/gms/internal/ads/_z;->Zo:I

    long-to-int v5, v7

    invoke-direct {p0, p1, v5}, Lcom/google/android/gms/internal/ads/_z;->j6(Lcom/google/android/gms/internal/ads/Qz;I)J

    move-result-wide v6

    if-ne v5, v3, :cond_e5

    long-to-int p1, v6

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double v5, p1

    goto :goto_e9

    :cond_e5
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    :goto_e9
    invoke-interface {v0, v4, v5, v6}, Lcom/google/android/gms/internal/ads/dA;->j6(ID)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/_z;->v5:I

    return v1

    :cond_ef
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid element type "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_108
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->Hw:Lcom/google/android/gms/internal/ads/dA;

    iget v3, p0, Lcom/google/android/gms/internal/ads/_z;->Zo:I

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/_z;->VH:J

    long-to-int v5, v4

    invoke-interface {v0, v3, v5, p1}, Lcom/google/android/gms/internal/ads/dA;->j6(IILcom/google/android/gms/internal/ads/Qz;)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/_z;->v5:I

    return v1

    :cond_115
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/_z;->VH:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v0, v3, v5

    if-gtz v0, :cond_138

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->Hw:Lcom/google/android/gms/internal/ads/dA;

    iget v5, p0, Lcom/google/android/gms/internal/ads/_z;->Zo:I

    long-to-int v4, v3

    if-nez v4, :cond_128

    const-string p1, ""

    goto :goto_132

    :cond_128
    new-array v3, v4, [B

    invoke-interface {p1, v3, v2, v4}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>([B)V

    :goto_132
    invoke-interface {v0, v5, p1}, Lcom/google/android/gms/internal/ads/dA;->j6(ILjava/lang/String;)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/_z;->v5:I

    return v1

    :cond_138
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "String element size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_151
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/_z;->VH:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_166

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/_z;->Hw:Lcom/google/android/gms/internal/ads/dA;

    iget v5, p0, Lcom/google/android/gms/internal/ads/_z;->Zo:I

    long-to-int v4, v3

    invoke-direct {p0, p1, v4}, Lcom/google/android/gms/internal/ads/_z;->j6(Lcom/google/android/gms/internal/ads/Qz;I)J

    move-result-wide v3

    invoke-interface {v0, v5, v3, v4}, Lcom/google/android/gms/internal/ads/dA;->j6(IJ)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/_z;->v5:I

    return v1

    :cond_166
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x2a

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid integer size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17f
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v5

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/_z;->VH:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/_z;->DW:Ljava/util/Stack;

    new-instance v0, Lcom/google/android/gms/internal/ads/bA;

    iget v7, p0, Lcom/google/android/gms/internal/ads/_z;->Zo:I

    add-long/2addr v3, v5

    const/4 v8, 0x0

    invoke-direct {v0, v7, v3, v4, v8}, Lcom/google/android/gms/internal/ads/bA;-><init>(IJLcom/google/android/gms/internal/ads/aA;)V

    invoke-virtual {p1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/_z;->Hw:Lcom/google/android/gms/internal/ads/dA;

    iget v4, p0, Lcom/google/android/gms/internal/ads/_z;->Zo:I

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/_z;->VH:J

    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/dA;->j6(IJJ)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/_z;->v5:I

    return v1

    :cond_19f
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/_z;->VH:J

    long-to-int v0, v3

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/Qz;->DW(I)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/_z;->v5:I

    goto/16 :goto_c
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
