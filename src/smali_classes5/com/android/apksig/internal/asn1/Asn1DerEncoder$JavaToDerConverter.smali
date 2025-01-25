.class final Lcom/android/apksig/internal/asn1/Asn1DerEncoder$JavaToDerConverter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/asn1/Asn1DerEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "JavaToDerConverter"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toDer(Ljava/lang/Object;Lcom/android/apksig/internal/asn1/Asn1Type;Lcom/android/apksig/internal/asn1/Asn1Type;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1EncodingException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v0, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    check-cast p0, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;

    invoke-virtual {p0}, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;->getEncoded()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :goto_1d
    return-object v0

    :cond_1e
    if-eqz p1, :cond_24

    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1Type;->ANY:Lcom/android/apksig/internal/asn1/Asn1Type;

    if-ne p1, v0, :cond_29

    :cond_24
    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    goto :goto_1d

    :cond_29
    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1DerEncoder$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    invoke-virtual {p1}, Lcom/android/apksig/internal/asn1/Asn1Type;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_120

    :cond_34
    :pswitch_34  #0x3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported conversion: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to ASN.1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1EncodingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/asn1/Asn1EncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_57  #0xc
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, p2}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->access$1100(Ljava/util/Collection;Lcom/android/apksig/internal/asn1/Asn1Type;)[B

    move-result-object v0

    goto :goto_1d

    :pswitch_5e  #0xb
    check-cast p0, Ljava/util/Collection;

    invoke-static {p0, p2}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->access$1000(Ljava/util/Collection;Lcom/android/apksig/internal/asn1/Asn1Type;)[B

    move-result-object v0

    goto :goto_1d

    :pswitch_65  #0xa
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_34

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->access$700(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1d

    :pswitch_70  #0x8, 0x9
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_34

    invoke-static {p1}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->getTagNumber(Lcom/android/apksig/internal/asn1/Asn1Type;)I

    move-result v0

    new-array v1, v4, [[B

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v3, v3, v0, v1}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->access$200(IZI[[B)[B

    move-result-object v0

    goto :goto_1d

    :pswitch_87  #0x7
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_34

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->access$600(Z)[B

    move-result-object v0

    goto :goto_1d

    :pswitch_96  #0x6
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_a6

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->access$300(I)[B

    move-result-object v0

    goto/16 :goto_1d

    :cond_a6
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_b6

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->access$400(J)[B

    move-result-object v0

    goto/16 :goto_1d

    :cond_b6
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_34

    check-cast p0, Ljava/math/BigInteger;

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->access$500(Ljava/math/BigInteger;)[B

    move-result-object v0

    goto/16 :goto_1d

    :pswitch_c2  #0x4, 0x5
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_e6

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object p0, v0

    :goto_d6
    if-eqz p0, :cond_34

    invoke-static {p1}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->getTagNumber(Lcom/android/apksig/internal/asn1/Asn1Type;)I

    move-result v0

    new-array v1, v4, [[B

    aput-object p0, v1, v3

    invoke-static {v3, v3, v0, v1}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->access$200(IZI[[B)[B

    move-result-object v0

    goto/16 :goto_1d

    :cond_e6
    instance-of v0, p0, [B

    if-eqz v0, :cond_ed

    check-cast p0, [B

    goto :goto_d6

    :cond_ed
    const/4 p0, 0x0

    goto :goto_d6

    :pswitch_ef  #0x2
    const-class v0, Lcom/android/apksig/internal/asn1/Asn1Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/asn1/Asn1Class;

    if-eqz v0, :cond_34

    invoke-interface {v0}, Lcom/android/apksig/internal/asn1/Asn1Class;->type()Lcom/android/apksig/internal/asn1/Asn1Type;

    move-result-object v0

    sget-object v2, Lcom/android/apksig/internal/asn1/Asn1Type;->SEQUENCE:Lcom/android/apksig/internal/asn1/Asn1Type;

    if-ne v0, v2, :cond_34

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->access$800(Ljava/lang/Object;)[B

    move-result-object v0

    goto/16 :goto_1d

    :pswitch_107  #0x1
    const-class v0, Lcom/android/apksig/internal/asn1/Asn1Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/asn1/Asn1Class;

    if-eqz v0, :cond_34

    invoke-interface {v0}, Lcom/android/apksig/internal/asn1/Asn1Class;->type()Lcom/android/apksig/internal/asn1/Asn1Type;

    move-result-object v0

    sget-object v2, Lcom/android/apksig/internal/asn1/Asn1Type;->CHOICE:Lcom/android/apksig/internal/asn1/Asn1Type;

    if-ne v0, v2, :cond_34

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->access$900(Ljava/lang/Object;)[B

    move-result-object v0

    goto/16 :goto_1d

    nop

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_107  #00000001
        :pswitch_ef  #00000002
        :pswitch_34  #00000003
        :pswitch_c2  #00000004
        :pswitch_c2  #00000005
        :pswitch_96  #00000006
        :pswitch_87  #00000007
        :pswitch_70  #00000008
        :pswitch_70  #00000009
        :pswitch_65  #0000000a
        :pswitch_5e  #0000000b
        :pswitch_57  #0000000c
    .end packed-switch
.end method
