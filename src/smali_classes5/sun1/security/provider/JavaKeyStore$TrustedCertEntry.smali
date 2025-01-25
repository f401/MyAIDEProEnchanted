.class Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun1/security/provider/JavaKeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrustedCertEntry"
.end annotation


# instance fields
.field cert:Ljava/security/cert/Certificate;

.field date:Ljava/util/Date;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;)V
    .registers 2

    invoke-direct {p0}, Lsun1/security/provider/JavaKeyStore$TrustedCertEntry;-><init>()V

    return-void
.end method
