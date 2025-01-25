.class public final Lcom/google/android/gms/internal/ads/mD;
.super Ljava/lang/Object;


# instance fields
.field public final DW:[B

.field public final FH:J

.field public final Hw:J

.field public final VH:I

.field public final Zo:Ljava/lang/String;

.field public final j6:Landroid/net/Uri;

.field public final v5:J


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/mD;-><init>(Landroid/net/Uri;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I)V
    .registers 11

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/mD;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;JJJLjava/lang/String;I)V
    .registers 21

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/mD;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;)V
    .registers 17

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/mD;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;I)V
    .registers 18

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/mD;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-ltz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_e

    :cond_d
    const/4 v4, 0x0

    :goto_e
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    cmp-long v4, p5, v2

    if-ltz v4, :cond_17

    const/4 v4, 0x1

    goto :goto_18

    :cond_17
    const/4 v4, 0x0

    :goto_18
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    cmp-long v4, p7, v2

    if-gtz v4, :cond_25

    const-wide/16 v2, -0x1

    cmp-long v4, p7, v2

    if-nez v4, :cond_26

    :cond_25
    const/4 v0, 0x1

    :cond_26
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->j6(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mD;->j6:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/mD;->DW:[B

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/mD;->FH:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/mD;->Hw:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/mD;->v5:J

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/mD;->Zo:Ljava/lang/String;

    iput p10, p0, Lcom/google/android/gms/internal/ads/mD;->VH:I

    return-void
.end method


# virtual methods
.method public final j6(I)Z
    .registers 3

    iget p1, p0, Lcom/google/android/gms/internal/ads/mD;->VH:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_7

    return v0

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mD;->j6:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/mD;->DW:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/mD;->FH:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/mD;->Hw:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/mD;->v5:J

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/mD;->Zo:Ljava/lang/String;

    iget v9, p0, Lcom/google/android/gms/internal/ads/mD;->VH:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x5d

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "DataSpec["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
