.class public abstract Lcom/android/apksig/internal/asn1/ber/BerEncoding;
.super Ljava/lang/Object;


# static fields
.field public static final ID_FLAG_CONSTRUCTED_ENCODING:I = 0x20

.field public static final TAG_CLASS_APPLICATION:I = 0x1

.field public static final TAG_CLASS_CONTEXT_SPECIFIC:I = 0x2

.field public static final TAG_CLASS_PRIVATE:I = 0x3

.field public static final TAG_CLASS_UNIVERSAL:I = 0x0

.field public static final TAG_NUMBER_BIT_STRING:I = 0x3

.field public static final TAG_NUMBER_BOOLEAN:I = 0x1

.field public static final TAG_NUMBER_GENERALIZED_TIME:I = 0x18

.field public static final TAG_NUMBER_INTEGER:I = 0x2

.field public static final TAG_NUMBER_NULL:I = 0x5

.field public static final TAG_NUMBER_OBJECT_IDENTIFIER:I = 0x6

.field public static final TAG_NUMBER_OCTET_STRING:I = 0x4

.field public static final TAG_NUMBER_SEQUENCE:I = 0x10

.field public static final TAG_NUMBER_SET:I = 0x11

.field public static final TAG_NUMBER_UTC_TIME:I = 0x17


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTagClass(B)I
    .registers 2

    and-int/lit16 v0, p0, 0xff

    shr-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public static getTagClass(Lcom/android/apksig/internal/asn1/Asn1TagClass;)I
    .registers 6

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    sget-object v3, Lcom/android/apksig/internal/asn1/ber/BerEncoding$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1TagClass:[I

    invoke-virtual {p0}, Lcom/android/apksig/internal/asn1/Asn1TagClass;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v2, :cond_2f

    if-eq v3, v1, :cond_2d

    if-eq v3, v0, :cond_15

    const/4 v0, 0x4

    if-ne v3, v0, :cond_16

    const/4 v0, 0x0

    :cond_15
    :goto_15
    return v0

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported tag class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2d
    move v0, v1

    goto :goto_15

    :cond_2f
    move v0, v2

    goto :goto_15
.end method

.method public static getTagNumber(B)I
    .registers 2

    and-int/lit8 v0, p0, 0x1f

    return v0
.end method

.method public static getTagNumber(Lcom/android/apksig/internal/asn1/Asn1Type;)I
    .registers 3

    sget-object v0, Lcom/android/apksig/internal/asn1/ber/BerEncoding$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    invoke-virtual {p0}, Lcom/android/apksig/internal/asn1/Asn1Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported data type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_22  #0xa
    const/4 v0, 0x1

    :goto_23
    return v0

    :pswitch_24  #0x9
    const/16 v0, 0x18

    goto :goto_23

    :pswitch_27  #0x8
    const/16 v0, 0x17

    goto :goto_23

    :pswitch_2a  #0x6, 0x7
    const/16 v0, 0x10

    goto :goto_23

    :pswitch_2d  #0x5
    const/16 v0, 0x11

    goto :goto_23

    :pswitch_30  #0x4
    const/4 v0, 0x3

    goto :goto_23

    :pswitch_32  #0x3
    const/4 v0, 0x4

    goto :goto_23

    :pswitch_34  #0x2
    const/4 v0, 0x6

    goto :goto_23

    :pswitch_36  #0x1
    const/4 v0, 0x2

    goto :goto_23

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_36  #00000001
        :pswitch_34  #00000002
        :pswitch_32  #00000003
        :pswitch_30  #00000004
        :pswitch_2d  #00000005
        :pswitch_2a  #00000006
        :pswitch_2a  #00000007
        :pswitch_27  #00000008
        :pswitch_24  #00000009
        :pswitch_22  #0000000a
    .end packed-switch
.end method

.method public static isConstructed(B)Z
    .registers 2

    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static setTagClass(BI)B
    .registers 4

    and-int/lit8 v0, p0, 0x3f

    shl-int/lit8 v1, p1, 0x6

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public static setTagNumber(BI)B
    .registers 3

    and-int/lit8 v0, p0, -0x20

    or-int/2addr v0, p1

    int-to-byte v0, v0

    return v0
.end method

.method public static tagClassAndNumberToString(II)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->tagClassToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->tagNumberToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    :goto_e
    return-object v0

    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static tagClassToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_2b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_28

    const/4 v0, 0x2

    if-eq p0, v0, :cond_25

    const/4 v0, 0x3

    if-ne p0, v0, :cond_e

    const-string v0, "PRIVATE"

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported type class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_25
    const-string v0, ""

    goto :goto_d

    :cond_28
    const-string v0, "APPLICATION"

    goto :goto_d

    :cond_2b
    const-string v0, "UNIVERSAL"

    goto :goto_d
.end method

.method public static tagNumberToString(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x10

    if-eq p0, v0, :cond_44

    const/16 v0, 0x11

    if-eq p0, v0, :cond_41

    const/16 v0, 0x17

    if-eq p0, v0, :cond_3e

    const/16 v0, 0x18

    if-eq p0, v0, :cond_3b

    packed-switch p0, :pswitch_data_48

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_28
    return-object v0

    :pswitch_29  #0x6
    const-string v0, "OBJECT IDENTIFIER"

    goto :goto_28

    :pswitch_2c  #0x5
    const-string v0, "NULL"

    goto :goto_28

    :pswitch_2f  #0x4
    const-string v0, "OCTET STRING"

    goto :goto_28

    :pswitch_32  #0x3
    const-string v0, "BIT STRING"

    goto :goto_28

    :pswitch_35  #0x2
    const-string v0, "INTEGER"

    goto :goto_28

    :pswitch_38  #0x1
    const-string v0, "BOOLEAN"

    goto :goto_28

    :cond_3b
    const-string v0, "GENERALIZED TIME"

    goto :goto_28

    :cond_3e
    const-string v0, "UTC TIME"

    goto :goto_28

    :cond_41
    const-string v0, "SET"

    goto :goto_28

    :cond_44
    const-string v0, "SEQUENCE"

    goto :goto_28

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_38  #00000001
        :pswitch_35  #00000002
        :pswitch_32  #00000003
        :pswitch_2f  #00000004
        :pswitch_2c  #00000005
        :pswitch_29  #00000006
    .end packed-switch
.end method
