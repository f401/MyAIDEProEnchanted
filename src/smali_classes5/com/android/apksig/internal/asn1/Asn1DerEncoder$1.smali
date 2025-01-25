.class synthetic Lcom/android/apksig/internal/asn1/Asn1DerEncoder$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/asn1/Asn1DerEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final $SwitchMap$com$android$apksig$internal$asn1$Asn1Tagging:[I

.field static final $SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/android/apksig/internal/asn1/Asn1Tagging;->values()[Lcom/android/apksig/internal/asn1/Asn1Tagging;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Tagging:[I

    :try_start_9
    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1Tagging;->NORMAL:Lcom/android/apksig/internal/asn1/Asn1Tagging;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1Tagging;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_d9

    :goto_12
    :try_start_12
    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Tagging:[I

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1Tagging;->EXPLICIT:Lcom/android/apksig/internal/asn1/Asn1Tagging;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1Tagging;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_d6

    :goto_1d
    :try_start_1d
    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Tagging:[I

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1Tagging;->IMPLICIT:Lcom/android/apksig/internal/asn1/Asn1Tagging;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1Tagging;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_d3

    :goto_28
    invoke-static {}, Lcom/android/apksig/internal/asn1/Asn1Type;->values()[Lcom/android/apksig/internal/asn1/Asn1Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    :try_start_31
    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1Type;->CHOICE:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_3a} :catch_d0

    :goto_3a
    :try_start_3a
    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1Type;->SEQUENCE:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_45} :catch_cd

    :goto_45
    :try_start_45
    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1Type;->UNENCODED_CONTAINER:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_50} :catch_cb

    :goto_50
    :try_start_50
    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1Type;->OCTET_STRING:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_5b} :catch_c9

    :goto_5b
    :try_start_5b
    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1Type;->BIT_STRING:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_66} :catch_c7

    :goto_66
    :try_start_66
    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1Type;->INTEGER:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_71} :catch_c5

    :goto_71
    :try_start_71
    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1Type;->BOOLEAN:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1Type;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_7c} :catch_c3

    :goto_7c
    :try_start_7c
    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1Type;->UTC_TIME:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1Type;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_88
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_88} :catch_c1

    :goto_88
    :try_start_88
    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1Type;->GENERALIZED_TIME:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1Type;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_88 .. :try_end_94} :catch_bf

    :goto_94
    :try_start_94
    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1Type;->OBJECT_IDENTIFIER:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1Type;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_a0} :catch_bd

    :goto_a0
    :try_start_a0
    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1Type;->SET_OF:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1Type;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a0 .. :try_end_ac} :catch_bb

    :goto_ac
    :try_start_ac
    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1Type;->SEQUENCE_OF:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1Type;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ac .. :try_end_b8} :catch_b9

    :goto_b8
    return-void

    :catch_b9
    move-exception v0

    goto :goto_b8

    :catch_bb
    move-exception v0

    goto :goto_ac

    :catch_bd
    move-exception v0

    goto :goto_a0

    :catch_bf
    move-exception v0

    goto :goto_94

    :catch_c1
    move-exception v0

    goto :goto_88

    :catch_c3
    move-exception v0

    goto :goto_7c

    :catch_c5
    move-exception v0

    goto :goto_71

    :catch_c7
    move-exception v0

    goto :goto_66

    :catch_c9
    move-exception v0

    goto :goto_5b

    :catch_cb
    move-exception v0

    goto :goto_50

    :catch_cd
    move-exception v0

    goto/16 :goto_45

    :catch_d0
    move-exception v0

    goto/16 :goto_3a

    :catch_d3
    move-exception v0

    goto/16 :goto_28

    :catch_d6
    move-exception v0

    goto/16 :goto_1d

    :catch_d9
    move-exception v0

    goto/16 :goto_12
.end method
