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
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/MA;->DW:Lcom/google/android/gms/internal/ads/zzfs;

    new-instance p1, Lcom/google/android/gms/internal/ads/LD;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/LD;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/MA;->v5:I

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/Qz;Lcom/google/android/gms/internal/ads/Vz;)I
    .registers 13

    :goto_0
    iget p2, p0, Lcom/google/android/gms/internal/ads/MA;->v5:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_ae

    const/4 v3, 0x2

    if-eq p2, v2, :cond_46

    if-ne p2, v3, :cond_40

    :goto_c
    iget p2, p0, Lcom/google/android/gms/internal/ads/MA;->gn:I

    if-lez p2, :cond_2f

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/LD;->u7()V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/4 v0, 0x3

    invoke-interface {p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/MA;->Hw:Lcom/google/android/gms/internal/ads/Yz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    invoke-interface {p2, v3, v0}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    iget p2, p0, Lcom/google/android/gms/internal/ads/MA;->u7:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/google/android/gms/internal/ads/MA;->u7:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/MA;->gn:I

    sub-int/2addr p2, v2

    iput p2, p0, Lcom/google/android/gms/internal/ads/MA;->gn:I

    goto :goto_c

    :cond_2f
    iget v7, p0, Lcom/google/android/gms/internal/ads/MA;->u7:I

    if-lez v7, :cond_3d

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/MA;->Hw:Lcom/google/android/gms/internal/ads/Yz;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/MA;->VH:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/Yz;->j6(JIIILcom/google/android/gms/internal/ads/Zz;)V

    :cond_3d
    iput v2, p0, Lcom/google/android/gms/internal/ads/MA;->v5:I

    return v1

    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_46
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/LD;->u7()V

    iget p2, p0, Lcom/google/android/gms/internal/ads/MA;->Zo:I

    if-nez p2, :cond_6b

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/4 v4, 0x5

    invoke-interface {p1, p2, v1, v4, v2}, Lcom/google/android/gms/internal/ads/Qz;->j6([BIIZ)Z

    move-result p2

    if-nez p2, :cond_5b

    goto :goto_79

    :cond_5b
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    const-wide/16 v6, 0x2d

    div-long/2addr v4, v6

    :goto_68
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/MA;->VH:J

    goto :goto_82

    :cond_6b
    if-ne p2, v2, :cond_95

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/16 v4, 0x9

    invoke-interface {p1, p2, v1, v4, v2}, Lcom/google/android/gms/internal/ads/Qz;->j6([BIIZ)Z

    move-result p2

    if-nez p2, :cond_7b

    :goto_79
    const/4 v2, 0x0

    goto :goto_8c

    :cond_7b
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/LD;->v5()J

    move-result-wide v4

    goto :goto_68

    :goto_82
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/MA;->gn:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/MA;->u7:I

    :goto_8c
    if-eqz v2, :cond_92

    iput v3, p0, Lcom/google/android/gms/internal/ads/MA;->v5:I

    goto/16 :goto_0

    :cond_92
    iput v1, p0, Lcom/google/android/gms/internal/ads/MA;->v5:I

    return v0

    :cond_95
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unsupported version number: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p2, Lcom/google/android/gms/internal/ads/My;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/My;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_ae
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/LD;->u7()V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/16 v3, 0x8

    invoke-interface {p1, p2, v1, v3, v2}, Lcom/google/android/gms/internal/ads/Qz;->j6([BIIZ)Z

    move-result p2

    if-eqz p2, :cond_db

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result p2

    sget v1, Lcom/google/android/gms/internal/ads/MA;->j6:I

    if-ne p2, v1, :cond_d3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/MA;->Zo:I

    const/4 v1, 0x1

    goto :goto_db

    :cond_d3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Input not RawCC"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_db
    :goto_db
    if-eqz v1, :cond_e1

    iput v2, p0, Lcom/google/android/gms/internal/ads/MA;->v5:I

    goto/16 :goto_0

    :cond_e1
    return v0
.end method

.method public final j6()V
    .registers 1

    return-void
.end method

.method public final j6(JJ)V
    .registers 5

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/MA;->v5:I

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Rz;)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/Xz;

    const-wide v1, -0x7fffffffffffffffL  # -4.9E-324

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Xz;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/Rz;->j6(Lcom/google/android/gms/internal/ads/Wz;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/Rz;->j6(II)Lcom/google/android/gms/internal/ads/Yz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/MA;->Hw:Lcom/google/android/gms/internal/ads/Yz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Rz;->j6()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/MA;->Hw:Lcom/google/android/gms/internal/ads/Yz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/MA;->DW:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/zzfs;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Qz;)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->u7()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/gms/internal/ads/Qz;->j6([BII)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/MA;->FH:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result p1

    sget v0, Lcom/google/android/gms/internal/ads/MA;->j6:I

    if-ne p1, v0, :cond_1b

    const/4 p1, 0x1

    return p1

    :cond_1b
    return v2
.end method
