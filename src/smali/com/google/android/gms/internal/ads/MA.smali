.class public final Lcom/google/android/gms/internal/ads/MA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Oz;


# static fields
.field private static final j6:I


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/zzfs;

.field private final FH:Lcom/google/android/gms/internal/ads/LD;

.field private Hw:Lcom/google/android/gms/internal/ads/Yz;

.field private VH:J

.field private Zo:I

.field private gn:I

.field private u7:I

.field private v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "RCC\u0001"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/TD;->Zo(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/MA;->j6:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfs;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/MA;->DW:Lcom/google/android/gms/internal/ads/zzfs;

    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/LD;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/MA;->v5:I

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/Qz;Lcom/google/android/gms/internal/ads/Vz;)I
    .registers 13

    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v0, -0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/MA;->v5:I

    if-eqz v1, :cond_9

    if-eq v1, v4, :cond_3

    if-ne v1, v5, :cond_2

    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/MA;->gn:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->u7()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-interface {p1, v0, v6, v7}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/MA;->Hw:Lcom/google/android/gms/internal/ads/Yz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    invoke-interface {v0, v1, v7}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/MA;->u7:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/MA;->u7:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/MA;->gn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/MA;->gn:I

    goto :goto_1

    :cond_0
    iget v5, p0, Lcom/google/android/gms/internal/ads/MA;->u7:I

    if-lez v5, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/MA;->Hw:Lcom/google/android/gms/internal/ads/Yz;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/MA;->VH:J

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/Yz;->j6(JIIILcom/google/android/gms/internal/ads/Zz;)V

    :cond_1
    iput v4, p0, Lcom/google/android/gms/internal/ads/MA;->v5:I

    :goto_2
    return v6

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->u7()V

    iget v1, p0, Lcom/google/android/gms/internal/ads/MA;->Zo:I

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/4 v2, 0x5

    invoke-interface {p1, v1, v6, v2, v4}, Lcom/google/android/gms/internal/ads/Qz;->j6([BIIZ)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    move v1, v6

    :goto_3
    if-eqz v1, :cond_7

    iput v5, p0, Lcom/google/android/gms/internal/ads/MA;->v5:I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v2

    const-wide/16 v8, 0x3e8

    mul-long/2addr v2, v8

    const-wide/16 v8, 0x2d

    div-long/2addr v2, v8

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/MA;->VH:J

    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/MA;->gn:I

    iput v6, p0, Lcom/google/android/gms/internal/ads/MA;->u7:I

    move v1, v4

    goto :goto_3

    :cond_6
    if-ne v1, v4, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/16 v2, 0x9

    invoke-interface {p1, v1, v6, v2, v4}, Lcom/google/android/gms/internal/ads/Qz;->j6([BIIZ)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->v5()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/MA;->VH:J

    goto :goto_4

    :cond_7
    iput v6, p0, Lcom/google/android/gms/internal/ads/MA;->v5:I

    move v6, v0

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported version number: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->u7()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/16 v2, 0x8

    invoke-interface {p1, v1, v6, v2, v4}, Lcom/google/android/gms/internal/ads/Qz;->j6([BIIZ)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/ads/MA;->j6:I

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/MA;->Zo:I

    move v1, v4

    :goto_5
    if-eqz v1, :cond_b

    iput v4, p0, Lcom/google/android/gms/internal/ads/MA;->v5:I

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Input not RawCC"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move v6, v0

    goto/16 :goto_2

    :cond_c
    move v1, v6

    goto :goto_5
.end method

.method public final j6()V
    .registers 1

    return-void
.end method

.method public final j6(JJ)V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/MA;->v5:I

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Rz;)V
    .registers 6

    new-instance v0, Lcom/google/android/gms/internal/ads/Xz;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/Xz;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/Rz;->j6(Lcom/google/android/gms/internal/ads/Wz;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Rz;->j6(II)Lcom/google/android/gms/internal/ads/Yz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/MA;->Hw:Lcom/google/android/gms/internal/ads/Yz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Rz;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/MA;->Hw:Lcom/google/android/gms/internal/ads/Yz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/MA;->DW:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/zzfs;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Qz;)Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->u7()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/16 v2, 0x8

    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/Qz;->j6([BII)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/ads/MA;->j6:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
