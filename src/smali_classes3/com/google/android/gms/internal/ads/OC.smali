.class public final Lcom/google/android/gms/internal/ads/OC;
.super Ljava/lang/Object;


# instance fields
.field private final DW:[I

.field private final FH:[Ljava/lang/String;

.field private final Hw:I

.field private final j6:[Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;[I[Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/OC;->j6:[Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/OC;->DW:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/OC;->FH:[Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/OC;->Hw:I

    return-void
.end method

.method public static j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/OC;
    .registers 16

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x4

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, ""

    aput-object v5, v0, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_11f

    const-string v8, "$"

    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_43

    aget-object v8, v0, v7

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_37

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3c

    :cond_37
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3c
    aput-object v6, v0, v7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_f

    :cond_43
    if-eq v9, v6, :cond_67

    aget-object v8, v0, v7

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_5e

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_63

    :cond_5e
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_63
    aput-object v6, v0, v7

    move v6, v9

    goto :goto_f

    :cond_67
    const-string v9, "$$"

    invoke-virtual {p0, v9, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_7e

    aget-object v9, v0, v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    add-int/lit8 v6, v6, 0x2

    goto :goto_f

    :cond_7e
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {p0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v9, "RepresentationID"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v11, 0x1

    if-eqz v9, :cond_95

    aput v11, v2, v7

    goto/16 :goto_117

    :cond_95
    const-string v9, "%0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v10, :cond_b6

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "d"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_b1

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_b1
    invoke-virtual {v6, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_b8

    :cond_b6
    const-string v12, "%01d"

    :goto_b8
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v13, -0x74423897

    const/4 v14, 0x2

    if-eq v9, v13, :cond_e1

    const v13, 0x27c6ed

    if-eq v9, v13, :cond_d7

    const v13, 0x246e091

    if-eq v9, v13, :cond_cd

    goto :goto_ea

    :cond_cd
    const-string v9, "Bandwidth"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ea

    const/4 v10, 0x1

    goto :goto_ea

    :cond_d7
    const-string v9, "Time"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ea

    const/4 v10, 0x2

    goto :goto_ea

    :cond_e1
    const-string v9, "Number"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ea

    const/4 v10, 0x0

    :cond_ea
    :goto_ea
    if-eqz v10, :cond_113

    if-eq v10, v11, :cond_10f

    if-eq v10, v14, :cond_10c

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Invalid template: "

    if-eqz v0, :cond_101

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_106

    :cond_101
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10c
    aput v1, v2, v7

    goto :goto_115

    :cond_10f
    const/4 v6, 0x3

    aput v6, v2, v7

    goto :goto_115

    :cond_113
    aput v14, v2, v7

    :goto_115
    aput-object v12, v3, v7

    :goto_117
    add-int/lit8 v7, v7, 0x1

    aput-object v5, v0, v7

    add-int/lit8 v6, v8, 0x1

    goto/16 :goto_f

    :cond_11f
    new-instance p0, Lcom/google/android/gms/internal/ads/OC;

    invoke-direct {p0, v0, v2, v3, v7}, Lcom/google/android/gms/internal/ads/OC;-><init>([Ljava/lang/String;[I[Ljava/lang/String;I)V

    return-object p0
.end method


# virtual methods
.method public final j6(Ljava/lang/String;IIJ)Ljava/lang/String;
    .registers 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    iget v3, p0, Lcom/google/android/gms/internal/ads/OC;->Hw:I

    if-ge v2, v3, :cond_65

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OC;->j6:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/OC;->DW:[I

    aget v3, v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_62

    :cond_1d
    const/4 v5, 0x2

    if-ne v3, v5, :cond_36

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/OC;->FH:[Ljava/lang/String;

    aget-object v5, v5, v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_32
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_62

    :cond_36
    const/4 v5, 0x3

    if-ne v3, v5, :cond_4c

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/OC;->FH:[Ljava/lang/String;

    aget-object v5, v5, v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_32

    :cond_4c
    const/4 v5, 0x4

    if-ne v3, v5, :cond_62

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/OC;->FH:[Ljava/lang/String;

    aget-object v5, v5, v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_32

    :cond_62
    :goto_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_65
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/OC;->j6:[Ljava/lang/String;

    aget-object p1, p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
