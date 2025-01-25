.class synthetic Lcom/android/apksig/internal/asn1/ber/BerEncoding$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/asn1/ber/BerEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final $SwitchMap$com$android$apksig$internal$asn1$Asn1TagClass:[I

.field static final $SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/android/apksig/internal/asn1/Asn1TagClass;->values()[Lcom/android/apksig/internal/asn1/Asn1TagClass;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/apksig/internal/asn1/ber/BerEncoding$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1TagClass:[I

    :try_start_9
    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1TagClass;->APPLICATION:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1TagClass;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_c9

    :goto_12
    :try_start_12
    sget-object v0, Lcom/android/apksig/internal/asn1/ber/BerEncoding$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1TagClass:[I

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1TagClass;->CONTEXT_SPECIFIC:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1TagClass;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_c6

    :goto_1d
    :try_start_1d
    sget-object v0, Lcom/android/apksig/internal/asn1/ber/BerEncoding$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1TagClass:[I

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1TagClass;->PRIVATE:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1TagClass;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_c3

    :goto_28
    :try_start_28
    sget-object v0, Lcom/android/apksig/internal/asn1/ber/BerEncoding$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1TagClass:[I

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1TagClass;->UNIVERSAL:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1TagClass;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_c0

    :goto_33
    invoke-static {}, Lcom/android/apksig/internal/asn1/Asn1Type;->values()[Lcom/android/apksig/internal/asn1/Asn1Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/apksig/internal/asn1/ber/BerEncoding$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    :try_start_3c
    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1Type;->INTEGER:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_45} :catch_be

    :goto_45
    :try_start_45
    sget-object v0, Lcom/android/apksig/internal/asn1/ber/BerEncoding$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1Type;->OBJECT_IDENTIFIER:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_50} :catch_bc

    :goto_50
    :try_start_50
    sget-object v0, Lcom/android/apksig/internal/asn1/ber/BerEncoding$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1Type;->OCTET_STRING:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_5b} :catch_ba

    :goto_5b
    :try_start_5b
    sget-object v0, Lcom/android/apksig/internal/asn1/ber/BerEncoding$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1Type;->BIT_STRING:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_66} :catch_b8

    :goto_66
    :try_start_66
    sget-object v0, Lcom/android/apksig/internal/asn1/ber/BerEncoding$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1Type;->SET_OF:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_71} :catch_b6

    :goto_71
    :try_start_71
    sget-object v0, Lcom/android/apksig/internal/asn1/ber/BerEncoding$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1Type;->SEQUENCE:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_7c} :catch_b4

    :goto_7c
    :try_start_7c
    sget-object v0, Lcom/android/apksig/internal/asn1/ber/BerEncoding$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1Type;->SEQUENCE_OF:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1Type;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_87} :catch_b2

    :goto_87
    :try_start_87
    sget-object v0, Lcom/android/apksig/internal/asn1/ber/BerEncoding$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1Type;->UTC_TIME:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1Type;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_93} :catch_b0

    :goto_93
    :try_start_93
    sget-object v0, Lcom/android/apksig/internal/asn1/ber/BerEncoding$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1Type;->GENERALIZED_TIME:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1Type;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_9f} :catch_ae

    :goto_9f
    :try_start_9f
    sget-object v0, Lcom/android/apksig/internal/asn1/ber/BerEncoding$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1Type;->BOOLEAN:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1Type;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_ab} :catch_ac

    :goto_ab
    return-void

    :catch_ac
    move-exception v0

    goto :goto_ab

    :catch_ae
    move-exception v0

    goto :goto_9f

    :catch_b0
    move-exception v0

    goto :goto_93

    :catch_b2
    move-exception v0

    goto :goto_87

    :catch_b4
    move-exception v0

    goto :goto_7c

    :catch_b6
    move-exception v0

    goto :goto_71

    :catch_b8
    move-exception v0

    goto :goto_66

    :catch_ba
    move-exception v0

    goto :goto_5b

    :catch_bc
    move-exception v0

    goto :goto_50

    :catch_be
    move-exception v0

    goto :goto_45

    :catch_c0
    move-exception v0

    goto/16 :goto_33

    :catch_c3
    move-exception v0

    goto/16 :goto_28

    :catch_c6
    move-exception v0

    goto/16 :goto_1d

    :catch_c9
    move-exception v0

    goto/16 :goto_12
.end method
