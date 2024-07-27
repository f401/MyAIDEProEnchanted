.class public final Lcom/google/android/gms/internal/ads/QC;
.super Ljava/lang/Object;


# direct methods
.method private static j6(Lcom/google/android/gms/internal/ads/LD;)I
    .registers 4

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->tp()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    goto :goto_0
.end method

.method public static j6(JLcom/google/android/gms/internal/ads/LD;[Lcom/google/android/gms/internal/ads/Yz;)V
    .registers 16

    const/16 v11, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/LD;->tp()I

    move-result v0

    if-le v0, v4, :cond_6

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/QC;->j6(Lcom/google/android/gms/internal/ads/LD;)I

    move-result v0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/QC;->j6(Lcom/google/android/gms/internal/ads/LD;)I

    move-result v8

    const/4 v1, -0x1

    if-eq v8, v1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/LD;->tp()I

    move-result v1

    if-le v8, v1, :cond_1

    :cond_0
    const-string v0, "CeaUtil"

    const-string v1, "Skipping remainder of malformed SEI NAL unit."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/LD;->FH()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    if-ge v8, v11, :cond_3

    :cond_2
    move v0, v6

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {p2, v11}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v0

    invoke-virtual {p2, v4}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    and-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v5, v0, 0x3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v9

    array-length v10, p3

    move v0, v6

    :goto_2
    if-ge v0, v10, :cond_4

    aget-object v1, p3, v0

    invoke-virtual {p2, v9}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-interface {v1, p2, v5}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    const/4 v7, 0x0

    move-wide v2, p0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/Yz;->j6(JIIILcom/google/android/gms/internal/ads/Zz;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/LD;->DW()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/LD;->gn()I

    move-result v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/LD;->VH()I

    move-result v5

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    const/16 v0, 0xb5

    if-ne v1, v0, :cond_2

    const/16 v0, 0x31

    if-ne v2, v0, :cond_2

    const v0, 0x47413934

    if-ne v3, v0, :cond_2

    const/4 v0, 0x3

    if-ne v5, v0, :cond_2

    move v0, v4

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v5, 0xa

    sub-int v0, v8, v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p2, v8}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method
