.class final synthetic Lcom/google/android/gms/internal/ads/Xq;
.super Ljava/lang/Object;


# static fields
.field static final DW:[I

.field static final FH:[I

.field static final j6:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zr;->values()[Lcom/google/android/gms/internal/ads/zr;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/Xq;->FH:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/google/android/gms/internal/ads/zr;->DW:Lcom/google/android/gms/internal/ads/zr;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    const/4 v0, 0x2

    :try_start_15
    sget-object v2, Lcom/google/android/gms/internal/ads/Xq;->FH:[I

    sget-object v3, Lcom/google/android/gms/internal/ads/zr;->Hw:Lcom/google/android/gms/internal/ads/zr;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v2

    :goto_21
    const/4 v2, 0x3

    :try_start_22
    sget-object v3, Lcom/google/android/gms/internal/ads/Xq;->FH:[I

    sget-object v4, Lcom/google/android/gms/internal/ads/zr;->FH:Lcom/google/android/gms/internal/ads/zr;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v3

    :goto_2e
    invoke-static {}, Lcom/google/android/gms/internal/ads/Or;->values()[Lcom/google/android/gms/internal/ads/Or;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/google/android/gms/internal/ads/Xq;->DW:[I

    :try_start_37
    sget-object v4, Lcom/google/android/gms/internal/ads/Or;->DW:Lcom/google/android/gms/internal/ads/Or;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_3f} :catch_40

    goto :goto_41

    :catch_40
    move-exception v3

    :goto_41
    :try_start_41
    sget-object v3, Lcom/google/android/gms/internal/ads/Xq;->DW:[I

    sget-object v4, Lcom/google/android/gms/internal/ads/Or;->FH:Lcom/google/android/gms/internal/ads/Or;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_4b} :catch_4c

    goto :goto_4d

    :catch_4c
    move-exception v3

    :goto_4d
    :try_start_4d
    sget-object v3, Lcom/google/android/gms/internal/ads/Xq;->DW:[I

    sget-object v4, Lcom/google/android/gms/internal/ads/Or;->Hw:Lcom/google/android/gms/internal/ads/Or;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_57} :catch_58

    goto :goto_59

    :catch_58
    move-exception v3

    :goto_59
    invoke-static {}, Lcom/google/android/gms/internal/ads/Qr;->values()[Lcom/google/android/gms/internal/ads/Qr;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/google/android/gms/internal/ads/Xq;->j6:[I

    :try_start_62
    sget-object v4, Lcom/google/android/gms/internal/ads/Qr;->DW:Lcom/google/android/gms/internal/ads/Qr;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6a} :catch_6b

    goto :goto_6c

    :catch_6b
    move-exception v1

    :goto_6c
    :try_start_6c
    sget-object v1, Lcom/google/android/gms/internal/ads/Xq;->j6:[I

    sget-object v3, Lcom/google/android/gms/internal/ads/Qr;->FH:Lcom/google/android/gms/internal/ads/Qr;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_76} :catch_77

    goto :goto_78

    :catch_77
    move-exception v0

    :goto_78
    :try_start_78
    sget-object v0, Lcom/google/android/gms/internal/ads/Xq;->j6:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/Qr;->Hw:Lcom/google/android/gms/internal/ads/Qr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_82} :catch_83

    goto :goto_84

    :catch_83
    move-exception v0

    :goto_84
    return-void
.end method
