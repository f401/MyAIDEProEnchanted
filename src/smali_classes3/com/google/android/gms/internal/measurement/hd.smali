.class final synthetic Lcom/google/android/gms/internal/measurement/hd;
.super Ljava/lang/Object;


# static fields
.field private static final j6:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/measurement/id;->values()[Lcom/google/android/gms/internal/measurement/id;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/measurement/hd;->j6:[I

    :try_start_9
    sget-object v1, Lcom/google/android/gms/internal/measurement/id;->j6:Lcom/google/android/gms/internal/measurement/id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/gms/internal/measurement/hd;->j6:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/id;->DW:Lcom/google/android/gms/internal/measurement/id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v0

    :goto_21
    :try_start_21
    sget-object v0, Lcom/google/android/gms/internal/measurement/hd;->j6:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/id;->FH:Lcom/google/android/gms/internal/measurement/id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v0

    :goto_2e
    :try_start_2e
    sget-object v0, Lcom/google/android/gms/internal/measurement/hd;->j6:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/id;->Hw:Lcom/google/android/gms/internal/measurement/id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v0

    :goto_3b
    :try_start_3b
    sget-object v0, Lcom/google/android/gms/internal/measurement/hd;->j6:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/id;->v5:Lcom/google/android/gms/internal/measurement/id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v0

    :goto_48
    :try_start_48
    sget-object v0, Lcom/google/android/gms/internal/measurement/hd;->j6:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/id;->Zo:Lcom/google/android/gms/internal/measurement/id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_53} :catch_54

    goto :goto_55

    :catch_54
    move-exception v0

    :goto_55
    :try_start_55
    sget-object v0, Lcom/google/android/gms/internal/measurement/hd;->j6:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/id;->VH:Lcom/google/android/gms/internal/measurement/id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_60} :catch_61

    goto :goto_62

    :catch_61
    move-exception v0

    :goto_62
    :try_start_62
    sget-object v0, Lcom/google/android/gms/internal/measurement/hd;->j6:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/id;->gn:Lcom/google/android/gms/internal/measurement/id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_6f

    goto :goto_70

    :catch_6f
    move-exception v0

    :goto_70
    :try_start_70
    sget-object v0, Lcom/google/android/gms/internal/measurement/hd;->j6:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/id;->we:Lcom/google/android/gms/internal/measurement/id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_7c} :catch_7d

    goto :goto_7e

    :catch_7d
    move-exception v0

    :goto_7e
    :try_start_7e
    sget-object v0, Lcom/google/android/gms/internal/measurement/hd;->j6:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/id;->J0:Lcom/google/android/gms/internal/measurement/id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_8a} :catch_8b

    goto :goto_8c

    :catch_8b
    move-exception v0

    :goto_8c
    :try_start_8c
    sget-object v0, Lcom/google/android/gms/internal/measurement/hd;->j6:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/id;->Ws:Lcom/google/android/gms/internal/measurement/id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_98} :catch_99

    goto :goto_9a

    :catch_99
    move-exception v0

    :goto_9a
    :try_start_9a
    sget-object v0, Lcom/google/android/gms/internal/measurement/hd;->j6:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/id;->QX:Lcom/google/android/gms/internal/measurement/id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a .. :try_end_a6} :catch_a7

    goto :goto_a8

    :catch_a7
    move-exception v0

    :goto_a8
    :try_start_a8
    sget-object v0, Lcom/google/android/gms/internal/measurement/hd;->j6:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/id;->XL:Lcom/google/android/gms/internal/measurement/id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b5

    goto :goto_b6

    :catch_b5
    move-exception v0

    :goto_b6
    :try_start_b6
    sget-object v0, Lcom/google/android/gms/internal/measurement/hd;->j6:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/id;->aM:Lcom/google/android/gms/internal/measurement/id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_c3

    goto :goto_c4

    :catch_c3
    move-exception v0

    :goto_c4
    :try_start_c4
    sget-object v0, Lcom/google/android/gms/internal/measurement/hd;->j6:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/id;->u7:Lcom/google/android/gms/internal/measurement/id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c4 .. :try_end_d0} :catch_d1

    goto :goto_d2

    :catch_d1
    move-exception v0

    :goto_d2
    :try_start_d2
    sget-object v0, Lcom/google/android/gms/internal/measurement/hd;->j6:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/id;->tp:Lcom/google/android/gms/internal/measurement/id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_de
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d2 .. :try_end_de} :catch_df

    goto :goto_e0

    :catch_df
    move-exception v0

    :goto_e0
    :try_start_e0
    sget-object v0, Lcom/google/android/gms/internal/measurement/hd;->j6:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/id;->EQ:Lcom/google/android/gms/internal/measurement/id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e0 .. :try_end_ec} :catch_ed

    goto :goto_ee

    :catch_ed
    move-exception v0

    :goto_ee
    :try_start_ee
    sget-object v0, Lcom/google/android/gms/internal/measurement/hd;->j6:[I

    sget-object v1, Lcom/google/android/gms/internal/measurement/id;->J8:Lcom/google/android/gms/internal/measurement/id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ee .. :try_end_fa} :catch_fb

    goto :goto_fc

    :catch_fb
    move-exception v0

    :goto_fc
    return-void
.end method
