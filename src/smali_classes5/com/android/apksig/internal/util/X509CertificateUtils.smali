.class public Lcom/android/apksig/internal/util/X509CertificateUtils;
.super Ljava/lang/Object;


# static fields
.field public static final BEGIN_CERT_HEADER:[B

.field public static final END_CERT_FOOTER:[B

.field private static sCertFactory:Ljava/security/cert/CertificateFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/apksig/internal/util/X509CertificateUtils;->sCertFactory:Ljava/security/cert/CertificateFactory;

    const-string v0, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/apksig/internal/util/X509CertificateUtils;->BEGIN_CERT_HEADER:[B

    const-string v0, "-----END CERTIFICATE-----"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/apksig/internal/util/X509CertificateUtils;->END_CERT_FOOTER:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildCertFactory()V
    .registers 3

    sget-object v0, Lcom/android/apksig/internal/util/X509CertificateUtils;->sCertFactory:Ljava/security/cert/CertificateFactory;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    :try_start_5
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    sput-object v0, Lcom/android/apksig/internal/util/X509CertificateUtils;->sCertFactory:Ljava/security/cert/CertificateFactory;
    :try_end_d
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_4

    :catch_e
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create X.509 CertificateFactory"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/android/apksig/internal/util/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_9

    move-result-object v0

    invoke-static {v0}, Lcom/android/apksig/internal/util/X509CertificateUtils;->generateCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Failed to parse certificate"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static generateCertificate([B)Ljava/security/cert/X509Certificate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    sget-object v0, Lcom/android/apksig/internal/util/X509CertificateUtils;->sCertFactory:Ljava/security/cert/CertificateFactory;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/apksig/internal/util/X509CertificateUtils;->buildCertFactory()V

    :cond_7
    sget-object v0, Lcom/android/apksig/internal/util/X509CertificateUtils;->sCertFactory:Ljava/security/cert/CertificateFactory;

    invoke-static {p0, v0}, Lcom/android/apksig/internal/util/X509CertificateUtils;->generateCertificate([BLjava/security/cert/CertificateFactory;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public static generateCertificate([BLjava/security/cert/CertificateFactory;)Ljava/security/cert/X509Certificate;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_b
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-object v0

    :catch_c
    move-exception v0

    :try_start_d
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/android/apksig/internal/util/X509CertificateUtils;->getNextDEREncodedCertificateBlock(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    const-class v0, Lcom/android/apksig/internal/x509/Certificate;

    invoke-static {v1, v0}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parse(Ljava/nio/ByteBuffer;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/x509/Certificate;

    invoke-static {v0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v3, v2

    new-array v3, v3, [B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v1, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;

    invoke-direct {v1, v0, v3}, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V
    :try_end_42
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_d .. :try_end_42} :catch_44
    .catch Lcom/android/apksig/internal/asn1/Asn1EncodingException; {:try_start_d .. :try_end_42} :catch_4d
    .catch Ljava/security/cert/CertificateException; {:try_start_d .. :try_end_42} :catch_4f

    move-object v0, v1

    goto :goto_b

    :catch_44
    move-exception v0

    :goto_45
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Failed to parse certificate"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4d
    move-exception v0

    goto :goto_45

    :catch_4f
    move-exception v0

    goto :goto_45
.end method

.method public static generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    sget-object v0, Lcom/android/apksig/internal/util/X509CertificateUtils;->sCertFactory:Ljava/security/cert/CertificateFactory;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/apksig/internal/util/X509CertificateUtils;->buildCertFactory()V

    :cond_7
    sget-object v0, Lcom/android/apksig/internal/util/X509CertificateUtils;->sCertFactory:Ljava/security/cert/CertificateFactory;

    invoke-static {p0, v0}, Lcom/android/apksig/internal/util/X509CertificateUtils;->generateCertificates(Ljava/io/InputStream;Ljava/security/cert/CertificateFactory;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static generateCertificates(Ljava/io/InputStream;Ljava/security/cert/CertificateFactory;)Ljava/util/Collection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/security/cert/CertificateFactory;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/android/apksig/internal/util/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5d

    move-result-object v0

    :try_start_4
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_c
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_c} :catch_e

    move-result-object v0

    :goto_d
    return-object v0

    :catch_e
    move-exception v1

    :try_start_f
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    :goto_19
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-static {v2}, Lcom/android/apksig/internal/util/X509CertificateUtils;->getNextDEREncodedCertificateBlock(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    const-class v0, Lcom/android/apksig/internal/x509/Certificate;

    invoke-static {v3, v0}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parse(Ljava/nio/ByteBuffer;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/x509/Certificate;

    invoke-static {v0}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sub-int/2addr v5, v4

    new-array v5, v5, [B

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v3, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;

    invoke-direct {v3, v0, v5}, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_53
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_f .. :try_end_53} :catch_54
    .catch Lcom/android/apksig/internal/asn1/Asn1EncodingException; {:try_start_f .. :try_end_53} :catch_66

    goto :goto_19

    :catch_54
    move-exception v0

    :goto_55
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Failed to parse certificates"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_5d
    move-exception v0

    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Failed to read the input stream"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_66
    move-exception v0

    goto :goto_55

    :cond_68
    move-object v0, v1

    goto :goto_d
.end method

.method private static getNextDEREncodedCertificateBlock(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p0, :cond_96

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    sget-object v1, Lcom/android/apksig/internal/util/X509CertificateUtils;->BEGIN_CERT_HEADER:[B

    array-length v1, v1

    if-ge v0, v1, :cond_c

    :goto_b
    return-object p0

    :cond_c
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    const/4 v0, 0x0

    :goto_10
    sget-object v1, Lcom/android/apksig/internal/util/X509CertificateUtils;->BEGIN_CERT_HEADER:[B

    array-length v2, v1

    if-ge v0, v2, :cond_24

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    aget-byte v1, v1, v0

    if-eq v2, v1, :cond_21

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    goto :goto_b

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_29
    :goto_29
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    int-to-char v0, v0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_4f

    :cond_38
    const/4 v0, 0x1

    :goto_39
    sget-object v2, Lcom/android/apksig/internal/util/X509CertificateUtils;->END_CERT_FOOTER:[B

    array-length v3, v2

    if-ge v0, v3, :cond_69

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    aget-byte v2, v2, v0

    if-ne v3, v2, :cond_59

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_4f
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_29

    :cond_59
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "The provided input contains the PEM certificate header without a valid certificate footer"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "The provided input contains the PEM certificate header but does not contain sufficient data for the footer"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_69
    invoke-static {}, Ljava2/util/Base64;->getDecoder()Ljava2/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava2/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :goto_79
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_8d

    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    :cond_8d
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto/16 :goto_b

    :cond_96
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The certificateBuffer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
