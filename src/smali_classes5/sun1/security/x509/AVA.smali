.class public Lsun1/security/x509/AVA;
.super Ljava/lang/Object;

# interfaces
.implements Lsun1/security/util/DerEncoder;


# static fields
.field private static final PRESERVE_OLD_DC_ENCODING:Z

.field private static final debug:Lsun1/security/util/Debug;


# instance fields
.field final oid:Lsun1/security/util/ObjectIdentifier;

.field final value:Lsun1/security/util/DerValue;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "x509"

    const-string v1, "\t[AVA]"

    invoke-static {v0, v1}, Lsun1/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun1/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun1/security/x509/AVA;->debug:Lsun1/security/util/Debug;

    new-instance v0, Lsun1/security/action/GetBooleanAction;

    const-string v1, "com.sun.security.preserveOldDCEncoding"

    invoke-direct {v0, v1}, Lsun1/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lsun1/security/x509/AVA;->PRESERVE_OLD_DC_ENCODING:Z

    return-void
.end method

.method constructor <init>(Ljava/io/Reader;ILjava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x20

    const/4 v3, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_b
    const-string v0, "Incorrect AVA format"

    invoke-static {p1, v0}, Lsun1/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x3d

    if-ne v0, v2, :cond_64

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lsun1/security/x509/AVAKeyword;->getOID(Ljava/lang/String;ILjava/util/Map;)Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/AVA;->oid:Lsun1/security/util/ObjectIdentifier;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    if-ne p2, v3, :cond_40

    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    if-eq v0, v4, :cond_38

    :goto_2b
    const/4 v2, -0x1

    if-ne v0, v2, :cond_4b

    new-instance v0, Lsun1/security/util/DerValue;

    const-string v1, ""

    invoke-direct {v0, v1}, Lsun1/security/util/DerValue;-><init>(Ljava/lang/String;)V

    :goto_35
    iput-object v0, p0, Lsun1/security/x509/AVA;->value:Lsun1/security/util/DerValue;

    return-void

    :cond_38
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incorrect AVA RFC2253 format - leading space must be escaped"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    if-eq v0, v4, :cond_40

    const/16 v2, 0xa

    if-eq v0, v2, :cond_40

    goto :goto_2b

    :cond_4b
    const/16 v2, 0x23

    if-ne v0, v2, :cond_54

    invoke-static {p1, p2}, Lsun1/security/x509/AVA;->parseHexString(Ljava/io/Reader;I)Lsun1/security/util/DerValue;

    move-result-object v0

    goto :goto_35

    :cond_54
    const/16 v2, 0x22

    if-ne v0, v2, :cond_5f

    if-eq p2, v3, :cond_5f

    invoke-direct {p0, p1, v1}, Lsun1/security/x509/AVA;->parseQuotedString(Ljava/io/Reader;Ljava/lang/StringBuilder;)Lsun1/security/util/DerValue;

    move-result-object v0

    goto :goto_35

    :cond_5f
    invoke-direct {p0, p1, v0, p2, v1}, Lsun1/security/x509/AVA;->parseString(Ljava/io/Reader;IILjava/lang/StringBuilder;)Lsun1/security/util/DerValue;

    move-result-object v0

    goto :goto_35

    :cond_64
    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b
.end method

.method constructor <init>(Ljava/io/Reader;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lsun1/security/x509/AVA;-><init>(Ljava/io/Reader;ILjava/util/Map;)V

    return-void
.end method

.method constructor <init>(Lsun1/security/util/DerValue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-byte v0, p1, Lsun1/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_40

    iget-object v0, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getOID()Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun1/security/x509/X500Name;->intern(Lsun1/security/util/ObjectIdentifier;)Lsun1/security/util/ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/AVA;->oid:Lsun1/security/util/ObjectIdentifier;

    iget-object v0, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v0

    iput-object v0, p0, Lsun1/security/x509/AVA;->value:Lsun1/security/util/DerValue;

    iget-object v0, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->available()I

    move-result v0

    if-nez v0, :cond_26

    return-void

    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AVA, extra bytes = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_40
    new-instance v0, Ljava/io/IOException;

    const-string v1, "AVA not a sequence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lsun1/security/util/ObjectIdentifier;Lsun1/security/util/DerValue;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    iput-object p1, p0, Lsun1/security/x509/AVA;->oid:Lsun1/security/util/ObjectIdentifier;

    iput-object p2, p0, Lsun1/security/x509/AVA;->value:Lsun1/security/util/DerValue;

    return-void

    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static getEmbeddedHexPair(ILjava/io/Reader;)Ljava/lang/Byte;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x10

    int-to-char v0, p0

    const-string v1, "0123456789ABCDEF"

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_3c

    const-string v1, "unexpected EOF - escaped hex value must include two valid digits"

    invoke-static {p1, v1}, Lsun1/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v1

    int-to-char v1, v1

    const-string v2, "0123456789ABCDEF"

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_34

    invoke-static {v0, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    new-instance v0, Ljava/lang/Byte;

    invoke-static {v1, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    :goto_33
    return-object v0

    :cond_34
    new-instance v0, Ljava/io/IOException;

    const-string v1, "escaped hex value must include two valid digits"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    const/4 v0, 0x0

    goto :goto_33
.end method

.method private static getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-lt v1, v2, :cond_12

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF8"

    invoke-direct {v0, v3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_12
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8
.end method

.method private static isDerString(Lsun1/security/util/DerValue;Z)Z
    .registers 5

    const/16 v2, 0x13

    const/16 v1, 0xc

    iget-byte v0, p0, Lsun1/security/util/DerValue;->tag:B

    if-eqz p1, :cond_e

    if-eq v0, v1, :cond_22

    if-eq v0, v2, :cond_22

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    if-eq v0, v1, :cond_22

    const/16 v1, 0x16

    if-eq v0, v1, :cond_22

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_22

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_22

    if-eq v0, v2, :cond_22

    const/16 v1, 0x14

    if-ne v0, v1, :cond_c

    :cond_22
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private static isTerminator(II)Z
    .registers 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_18

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_15

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_15

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_18

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_18

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x3

    if-eq p1, v0, :cond_13

    :cond_18
    const/4 v0, 0x1

    goto :goto_14
.end method

.method private static parseHexString(Ljava/io/Reader;I)Lsun1/security/util/DerValue;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v0, v1

    move v2, v1

    :goto_9
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v1

    invoke-static {v1, p1}, Lsun1/security/x509/AVA;->isTerminator(II)Z

    move-result v4

    if-eqz v4, :cond_33

    if-eqz v0, :cond_2b

    rem-int/lit8 v0, v0, 0x2

    if-eq v0, v6, :cond_23

    new-instance v0, Lsun1/security/util/DerValue;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lsun1/security/util/DerValue;-><init>([B)V

    return-object v0

    :cond_23
    new-instance v0, Ljava/io/IOException;

    const-string v1, "AVA parse, odd number of hex digits"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "AVA parse, zero hex digits"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    int-to-char v1, v1

    const-string v4, "0123456789ABCDEF"

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_53

    rem-int/lit8 v1, v0, 0x2

    if-ne v1, v6, :cond_51

    mul-int/lit8 v1, v2, 0x10

    int-to-byte v2, v4

    add-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_4d
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_9

    :cond_51
    int-to-byte v1, v4

    goto :goto_4d

    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AVA parse, invalid hex digit: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseQuotedString(Ljava/io/Reader;Ljava/lang/StringBuilder;)Lsun1/security/util/DerValue;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x5c

    const/16 v5, 0x22

    const-string v0, "Quoted string did not end in quote"

    invoke-static {p1, v0}, Lsun1/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    :goto_10
    if-ne v0, v5, :cond_7f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_22

    invoke-static {v2}, Lsun1/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_22
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_22

    const/16 v2, 0x20

    if-eq v0, v2, :cond_22

    const/4 v2, -0x1

    if-ne v0, v2, :cond_77

    iget-object v0, p0, Lsun1/security/x509/AVA;->oid:Lsun1/security/util/ObjectIdentifier;

    sget-object v2, Lsun1/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v2}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lsun1/security/x509/AVA;->oid:Lsun1/security/util/ObjectIdentifier;

    sget-object v2, Lsun1/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v2}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    sget-boolean v0, Lsun1/security/x509/AVA;->PRESERVE_OLD_DC_ENCODING:Z

    if-nez v0, :cond_59

    :cond_49
    new-instance v0, Lsun1/security/util/DerValue;

    const/16 v1, 0x16

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lsun1/security/util/DerValue;-><init>(BLjava/lang/String;)V

    :goto_58
    return-object v0

    :cond_59
    new-instance v0, Lsun1/security/util/DerValue;

    if-eqz v1, :cond_69

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun1/security/util/DerValue;-><init>(Ljava/lang/String;)V

    goto :goto_58

    :cond_69
    const/16 v1, 0xc

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lsun1/security/util/DerValue;-><init>(BLjava/lang/String;)V

    goto :goto_58

    :cond_77
    new-instance v0, Ljava/io/IOException;

    const-string v1, "AVA had characters other than whitespace after terminating quote"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7f
    if-ne v0, v6, :cond_a4

    const-string v0, "Quoted string did not end in quote"

    invoke-static {p1, v0}, Lsun1/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p1}, Lsun1/security/x509/AVA;->getEmbeddedHexPair(ILjava/io/Reader;)Ljava/lang/Byte;

    move-result-object v3

    if-eqz v3, :cond_97

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, 0x0

    goto/16 :goto_10

    :cond_97
    if-eq v0, v6, :cond_a4

    if-eq v0, v5, :cond_a4

    int-to-char v3, v0

    const-string v4, ",+=\n<>#;"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_c5

    :cond_a4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b4

    invoke-static {v2}, Lsun1/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_b4
    int-to-char v0, v0

    invoke-static {v0}, Lsun1/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v3

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "Quoted string did not end in quote"

    invoke-static {p1, v0}, Lsun1/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v0

    and-int/2addr v1, v3

    goto/16 :goto_10

    :cond_c5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid escaped character in AVA: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseString(Ljava/io/Reader;IILjava/lang/StringBuilder;)Lsun1/security/util/DerValue;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x1

    move v6, v3

    move v1, p2

    :goto_a
    const/16 v3, 0x5c

    if-ne v1, v3, :cond_115

    const-string v1, "Invalid trailing backslash"

    invoke-static {p1, v1}, Lsun1/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, p1}, Lsun1/security/x509/AVA;->getEmbeddedHexPair(ILjava/io/Reader;)Ljava/lang/Byte;

    move-result-object v3

    if-eqz v3, :cond_64

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v1

    const/4 v0, 0x0

    move v3, v0

    move v4, v1

    move v5, v2

    :goto_25
    invoke-static {v4, p3}, Lsun1/security/x509/AVA;->isTerminator(II)Z

    move-result v0

    if-eqz v0, :cond_170

    const/4 v0, 0x3

    if-ne p3, v0, :cond_30

    if-gtz v5, :cond_150

    :cond_30
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_40

    invoke-static {v7}, Lsun1/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    :cond_40
    iget-object v0, p0, Lsun1/security/x509/AVA;->oid:Lsun1/security/util/ObjectIdentifier;

    sget-object v1, Lsun1/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p0, Lsun1/security/x509/AVA;->oid:Lsun1/security/util/ObjectIdentifier;

    sget-object v1, Lsun1/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun1/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_158

    sget-boolean v0, Lsun1/security/x509/AVA;->PRESERVE_OLD_DC_ENCODING:Z

    if-nez v0, :cond_158

    :cond_58
    new-instance v0, Lsun1/security/util/DerValue;

    const/16 v1, 0x16

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lsun1/security/util/DerValue;-><init>(BLjava/lang/String;)V

    :goto_63
    return-object v0

    :cond_64
    const/4 v3, 0x1

    if-ne p3, v3, :cond_71

    const-string v3, ",=\n+<>#;\\\" "

    int-to-char v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_c2

    :cond_71
    const/4 v3, 0x2

    if-ne p3, v3, :cond_86

    const-string v3, ",+=\n<>#;"

    int-to-char v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_86

    const/16 v3, 0x5c

    if-eq v1, v3, :cond_86

    const/16 v3, 0x22

    if-ne v1, v3, :cond_c2

    :cond_86
    const/4 v3, 0x3

    if-ne p3, v3, :cond_95

    const/16 v3, 0x20

    if-ne v1, v3, :cond_e4

    if-nez v0, :cond_95

    invoke-static {p1}, Lsun1/security/x509/AVA;->trailingSpace(Ljava/io/Reader;)Z

    move-result v0

    if-eqz v0, :cond_dc

    :cond_95
    const/4 v0, 0x1

    :goto_96
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_aa

    const/4 v3, 0x0

    :goto_9d
    if-lt v3, v2, :cond_13e

    invoke-static {v7}, Lsun1/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    :cond_aa
    int-to-char v3, v1

    invoke-static {v3}, Lsun1/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v4

    const/16 v5, 0x20

    if-ne v1, v5, :cond_147

    if-nez v0, :cond_147

    add-int/lit8 v0, v2, 0x1

    :goto_b7
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v2

    and-int v1, v4, v6

    move v3, v1

    move v4, v2

    move v5, v0

    goto/16 :goto_25

    :cond_c2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid escaped character in AVA: \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_dc
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid escaped space character in AVA.  Only a leading or trailing space character can be escaped."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e4
    const/16 v3, 0x23

    if-ne v1, v3, :cond_f2

    if-nez v0, :cond_95

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid escaped \'#\' character in AVA.  Only a leading \'#\' can be escaped."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f2
    int-to-char v0, v1

    const-string v3, ",+\"\\<>;"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_95

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid escaped character in AVA: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_115
    const/4 v0, 0x3

    if-ne p3, v0, :cond_122

    int-to-char v0, v1

    const-string v3, ",+\"\\<>;"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_125

    :cond_122
    const/4 v0, 0x0

    goto/16 :goto_96

    :cond_125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Character \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\' in AVA appears without escape"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13e
    const-string v4, " "

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9d

    :cond_147
    const/4 v0, 0x0

    :goto_148
    if-lt v0, v2, :cond_176

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    goto/16 :goto_b7

    :cond_150
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incorrect AVA RFC2253 format - trailing space must be escaped"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_158
    new-instance v0, Lsun1/security/util/DerValue;

    if-eqz v3, :cond_165

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun1/security/util/DerValue;-><init>(Ljava/lang/String;)V

    goto/16 :goto_63

    :cond_165
    const/16 v1, 0xc

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lsun1/security/util/DerValue;-><init>(BLjava/lang/String;)V

    goto/16 :goto_63

    :cond_170
    const/4 v0, 0x0

    move v6, v3

    move v1, v4

    move v2, v5

    goto/16 :goto_a

    :cond_176
    const-string v1, " "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_148
.end method

.method private static readChar(Ljava/io/Reader;Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    return v0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private toKeyword(ILjava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lsun1/security/x509/AVA;->oid:Lsun1/security/util/ObjectIdentifier;

    invoke-static {v0, p1, p2}, Lsun1/security/x509/AVAKeyword;->getKeyword(Lsun1/security/util/ObjectIdentifier;ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toKeywordValueString(Ljava/lang/String;)Ljava/lang/String;
    .registers 16

    const/16 v13, 0x5c

    const/16 v12, 0x20

    const/16 v11, 0xa

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_17
    iget-object v0, p0, Lsun1/security/x509/AVA;->value:Lsun1/security/util/DerValue;

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_51

    iget-object v0, p0, Lsun1/security/x509/AVA;->value:Lsun1/security/util/DerValue;

    invoke-virtual {v0}, Lsun1/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    const/16 v2, 0x23

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2a
    array-length v2, v0
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_2b} :catch_91

    if-lt v1, v2, :cond_32

    :goto_2d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_32
    :try_start_32
    const-string v2, "0123456789ABCDEF"

    aget-byte v3, v0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "0123456789ABCDEF"

    aget-byte v3, v0, v1

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_51
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    move v4, v1

    move v2, v1

    :goto_59
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v4, v8, :cond_9f

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_74

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v12, :cond_73

    if-ne v0, v11, :cond_74

    :cond_73
    move v2, v3

    :cond_74
    if-eqz v2, :cond_9a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_90} :catch_91

    goto :goto_2d

    :catch_91
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DER Value conversion"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9a
    :try_start_9a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8d

    :cond_9f
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lsun1/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v9

    if-nez v9, :cond_b1

    const-string v9, ",+=\n<>#;\\\""

    invoke-virtual {v9, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_d8

    :cond_b1
    if-nez v2, :cond_c2

    if-nez v4, :cond_b9

    if-eq v8, v12, :cond_c1

    if-eq v8, v11, :cond_c1

    :cond_b9
    const-string v9, ",+=\n<>#;\\\""

    invoke-virtual {v9, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_c2

    :cond_c1
    move v2, v3

    :cond_c2
    if-eq v8, v12, :cond_123

    if-eq v8, v11, :cond_123

    const/16 v0, 0x22

    if-eq v8, v0, :cond_cc

    if-ne v8, v13, :cond_d1

    :cond_cc
    const/16 v0, 0x5c

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_d1
    move v0, v1

    :goto_d2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_d5
    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    :cond_d8
    sget-object v0, Lsun1/security/x509/AVA;->debug:Lsun1/security/util/Debug;

    if-eqz v0, :cond_11e

    const-string v0, "ava"

    invoke-static {v0}, Lsun1/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11e

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    const-string v8, "UTF8"

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    move v0, v1

    :goto_ef
    array-length v9, v8

    if-ge v0, v9, :cond_121

    const/16 v9, 0x5c

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v9, v8, v0

    ushr-int/lit8 v9, v9, 0x4

    and-int/lit8 v9, v9, 0xf

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v9, v8, v0

    and-int/lit8 v9, v9, 0xf

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_ef

    :cond_11e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_121} :catch_91

    :cond_121
    move v0, v1

    goto :goto_d5

    :cond_123
    if-nez v2, :cond_12a

    if-eqz v0, :cond_12a

    move v0, v3

    move v2, v3

    goto :goto_d2

    :cond_12a
    move v0, v3

    goto :goto_d2
.end method

.method private static trailingSpace(Ljava/io/Reader;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x20

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/io/Reader;->markSupported()Z

    move-result v1

    if-nez v1, :cond_a

    :goto_9
    return v0

    :cond_a
    const/16 v1, 0x270f

    invoke-virtual {p0, v1}, Ljava/io/Reader;->mark(I)V

    :cond_f
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    :goto_16
    invoke-virtual {p0}, Ljava/io/Reader;->reset()V

    goto :goto_9

    :cond_1a
    if-eq v1, v3, :cond_f

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_26

    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v1

    if-eq v1, v3, :cond_f

    :cond_26
    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public derEncode(Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun1/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun1/security/util/DerOutputStream;-><init>()V

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    iget-object v2, p0, Lsun1/security/x509/AVA;->oid:Lsun1/security/util/ObjectIdentifier;

    invoke-virtual {v0, v2}, Lsun1/security/util/DerOutputStream;->putOID(Lsun1/security/util/ObjectIdentifier;)V

    iget-object v2, p0, Lsun1/security/x509/AVA;->value:Lsun1/security/util/DerValue;

    invoke-virtual {v2, v0}, Lsun1/security/util/DerValue;->encode(Lsun1/security/util/DerOutputStream;)V

    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    invoke-virtual {v1}, Lsun1/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lsun1/security/x509/AVA;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    check-cast p1, Lsun1/security/x509/AVA;

    invoke-virtual {p0}, Lsun1/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lsun1/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method hasRFC2253Keyword()Z
    .registers 3

    iget-object v0, p0, Lsun1/security/x509/AVA;->oid:Lsun1/security/util/ObjectIdentifier;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lsun1/security/x509/AVAKeyword;->hasKeyword(Lsun1/security/util/ObjectIdentifier;I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lsun1/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toRFC2253CanonicalString()Ljava/lang/String;
    .registers 13

    const/16 v11, 0x5c

    const/4 v3, 0x1

    const/16 v10, 0x23

    const/16 v9, 0x10

    const/4 v0, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x3

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lsun1/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-le v1, v2, :cond_38

    :cond_30
    iget-object v1, p0, Lsun1/security/x509/AVA;->value:Lsun1/security/util/DerValue;

    invoke-static {v1, v3}, Lsun1/security/x509/AVA;->isDerString(Lsun1/security/util/DerValue;Z)Z

    move-result v1

    if-nez v1, :cond_7d

    :cond_38
    :try_start_38
    iget-object v1, p0, Lsun1/security/x509/AVA;->value:Lsun1/security/util/DerValue;

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->toByteArray()[B
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3d} :catch_74

    move-result-object v1

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_41
    array-length v2, v1

    if-lt v0, v2, :cond_5b

    :goto_44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    invoke-static {v0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5b
    aget-byte v2, v1, v0

    ushr-int/lit8 v3, v2, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :catch_74
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DER Value conversion"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7d
    :try_start_7d
    new-instance v5, Ljava/lang/String;

    iget-object v1, p0, Lsun1/security/x509/AVA;->value:Lsun1/security/util/DerValue;

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string v2, "UTF8"

    invoke-direct {v5, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_8a} :catch_11d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    move v2, v0

    :goto_91
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v2, v7, :cond_a3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_44

    :cond_a3
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lsun1/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v8

    if-nez v8, :cond_b9

    const-string v8, ",+<>;\"\\"

    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_b9

    if-nez v2, :cond_d5

    if-ne v7, v10, :cond_d5

    :cond_b9
    if-nez v2, :cond_bd

    if-eq v7, v10, :cond_c5

    :cond_bd
    const-string v8, ",+<>;\"\\"

    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_c8

    :cond_c5
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c8
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_116

    :cond_ce
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_d1
    move v1, v0

    :cond_d2
    :goto_d2
    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    :cond_d5
    sget-object v1, Lsun1/security/x509/AVA;->debug:Lsun1/security/util/Debug;

    if-eqz v1, :cond_ce

    const-string v1, "ava"

    invoke-static {v1}, Lsun1/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ce

    :try_start_e1
    invoke-static {v7}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    const-string v7, "UTF8"

    invoke-virtual {v1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_ea} :catch_10d

    move-result-object v7

    move v1, v0

    :goto_ec
    array-length v8, v7

    if-ge v1, v8, :cond_d1

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v8, v7, v1

    ushr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    invoke-static {v8, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v8, v7, v1

    and-int/lit8 v8, v8, 0xf

    invoke-static {v8, v9}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_ec

    :catch_10d
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DER Value conversion"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_116
    if-nez v1, :cond_d2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_d2

    :catch_11d
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DER Value conversion"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toRFC2253String(Ljava/util/Map;)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/16 v11, 0x20

    const/16 v10, 0xd

    const/16 v9, 0x5c

    const/16 v8, 0x10

    const/4 v0, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, Lsun1/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-le v1, v2, :cond_35

    :cond_2d
    iget-object v1, p0, Lsun1/security/x509/AVA;->value:Lsun1/security/util/DerValue;

    invoke-static {v1, v0}, Lsun1/security/x509/AVA;->isDerString(Lsun1/security/util/DerValue;Z)Z

    move-result v1

    if-nez v1, :cond_6a

    :cond_35
    :try_start_35
    iget-object v1, p0, Lsun1/security/x509/AVA;->value:Lsun1/security/util/DerValue;

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->toByteArray()[B
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3a} :catch_61

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_40
    array-length v2, v1

    if-lt v0, v2, :cond_48

    :goto_43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_48
    aget-byte v2, v1, v0

    ushr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :catch_61
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DER Value conversion"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    :try_start_6a
    new-instance v4, Ljava/lang/String;

    iget-object v1, p0, Lsun1/security/x509/AVA;->value:Lsun1/security/util/DerValue;

    invoke-virtual {v1}, Lsun1/security/util/DerValue;->getDataBytes()[B

    move-result-object v1

    const-string v2, "UTF8"

    invoke-direct {v4, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_77} :catch_136

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v0

    :goto_7d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v2, v1, :cond_c9

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    :goto_91
    array-length v2, v4

    if-lt v1, v2, :cond_a4

    :cond_94
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    :goto_97
    if-gez v2, :cond_af

    :cond_99
    :goto_99
    array-length v6, v4

    if-lt v0, v6, :cond_ba

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43

    :cond_a4
    aget-char v2, v4, v1

    if-eq v2, v11, :cond_ac

    aget-char v2, v4, v1

    if-ne v2, v10, :cond_94

    :cond_ac
    add-int/lit8 v1, v1, 0x1

    goto :goto_91

    :cond_af
    aget-char v6, v4, v2

    if-eq v6, v11, :cond_b7

    aget-char v6, v4, v2

    if-ne v6, v10, :cond_99

    :cond_b7
    add-int/lit8 v2, v2, -0x1

    goto :goto_97

    :cond_ba
    aget-char v6, v4, v0

    if-lt v0, v1, :cond_c0

    if-le v0, v2, :cond_c3

    :cond_c0
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_99

    :cond_c9
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lsun1/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v6

    if-nez v6, :cond_db

    const-string v6, ",=+<>#;\"\\"

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_ed

    :cond_db
    const-string v6, ",=+<>#;\"\\"

    invoke-virtual {v6, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_e6

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e6
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e9
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_7d

    :cond_ed
    sget-object v6, Lsun1/security/x509/AVA;->debug:Lsun1/security/util/Debug;

    if-eqz v6, :cond_e6

    const-string v6, "ava"

    invoke-static {v6}, Lsun1/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e6

    :try_start_f9
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    const-string v6, "UTF8"

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_102} :catch_12d

    move-result-object v6

    move v1, v0

    :goto_104
    array-length v7, v6

    if-ge v1, v7, :cond_e9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v7, v6, v1

    ushr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v7, v6, v1

    and-int/lit8 v7, v7, 0xf

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_104

    :catch_12d
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DER Value conversion"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_136
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DER Value conversion"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lsun1/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun1/security/x509/AVA;->toKeywordValueString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
