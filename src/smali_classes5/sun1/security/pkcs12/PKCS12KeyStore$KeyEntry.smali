.class Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun1/security/pkcs12/PKCS12KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyEntry"
.end annotation


# instance fields
.field alias:Ljava/lang/String;

.field chain:[Ljava/security/cert/Certificate;

.field date:Ljava/util/Date;

.field keyId:[B

.field protectedPrivKey:[B


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;)V
    .registers 2

    invoke-direct {p0}, Lsun1/security/pkcs12/PKCS12KeyStore$KeyEntry;-><init>()V

    return-void
.end method
