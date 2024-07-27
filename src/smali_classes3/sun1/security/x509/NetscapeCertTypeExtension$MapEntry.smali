.class Lsun1/security/x509/NetscapeCertTypeExtension$MapEntry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun1/security/x509/NetscapeCertTypeExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapEntry"
.end annotation


# instance fields
.field mName:Ljava/lang/String;

.field mPosition:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun1/security/x509/NetscapeCertTypeExtension$MapEntry;->mName:Ljava/lang/String;

    iput p2, p0, Lsun1/security/x509/NetscapeCertTypeExtension$MapEntry;->mPosition:I

    return-void
.end method
