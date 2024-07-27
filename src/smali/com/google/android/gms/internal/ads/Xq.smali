.class final synthetic Lcom/google/android/gms/internal/ads/Xq;
.super Ljava/lang/Object;


# static fields
.field static final DW:[I

.field static final FH:[I

.field static final j6:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zr;->values()[Lcom/google/android/gms/internal/ads/zr;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/Xq;->FH:[I

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Xq;->FH:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/zr;->DW:Lcom/google/android/gms/internal/ads/zr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/Xq;->FH:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/zr;->Hw:Lcom/google/android/gms/internal/ads/zr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/android/gms/internal/ads/Xq;->FH:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/zr;->FH:Lcom/google/android/gms/internal/ads/zr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/Or;->values()[Lcom/google/android/gms/internal/ads/Or;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/Xq;->DW:[I

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/ads/Xq;->DW:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/Or;->DW:Lcom/google/android/gms/internal/ads/Or;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v0, Lcom/google/android/gms/internal/ads/Xq;->DW:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/Or;->FH:Lcom/google/android/gms/internal/ads/Or;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v0, Lcom/google/android/gms/internal/ads/Xq;->DW:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/Or;->Hw:Lcom/google/android/gms/internal/ads/Or;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/Qr;->values()[Lcom/google/android/gms/internal/ads/Qr;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/Xq;->j6:[I

    :try_start_6
    sget-object v0, Lcom/google/android/gms/internal/ads/Xq;->j6:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/Qr;->DW:Lcom/google/android/gms/internal/ads/Qr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/ads/Xq;->j6:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/Qr;->FH:Lcom/google/android/gms/internal/ads/Qr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v0, Lcom/google/android/gms/internal/ads/Xq;->j6:[I

    sget-object v1, Lcom/google/android/gms/internal/ads/Qr;->Hw:Lcom/google/android/gms/internal/ads/Qr;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    return-void

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    goto :goto_0
.end method
