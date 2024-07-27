.class Lsun1/security/x509/AVAComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lsun1/security/x509/AVA;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lsun1/security/x509/AVA;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lsun1/security/x509/AVAComparator;

    invoke-direct {v0}, Lsun1/security/x509/AVAComparator;-><init>()V

    sput-object v0, Lsun1/security/x509/AVAComparator;->INSTANCE:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lsun1/security/x509/AVA;",
            ">;"
        }
    .end annotation

    sget-object v0, Lsun1/security/x509/AVAComparator;->INSTANCE:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lsun1/security/x509/AVA;

    check-cast p2, Lsun1/security/x509/AVA;

    invoke-virtual {p0, p1, p2}, Lsun1/security/x509/AVAComparator;->compare(Lsun1/security/x509/AVA;Lsun1/security/x509/AVA;)I

    move-result v0

    return v0
.end method

.method public compare(Lsun1/security/x509/AVA;Lsun1/security/x509/AVA;)I
    .registers 5

    invoke-virtual {p1}, Lsun1/security/x509/AVA;->hasRFC2253Keyword()Z

    move-result v0

    invoke-virtual {p2}, Lsun1/security/x509/AVA;->hasRFC2253Keyword()Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lsun1/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lsun1/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
