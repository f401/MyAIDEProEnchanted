.class public Labcd/_O;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/aP;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 2

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    return-object p1
.end method

.method public j6(Ljava/lang/String;)Ljava/security/Signature;
    .registers 2

    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    return-object p1
.end method
