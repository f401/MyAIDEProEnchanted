.class public Labcd/cP;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/aP;


# instance fields
.field protected final j6:Ljava/security/Provider;


# direct methods
.method public constructor <init>(Ljava/security/Provider;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/cP;->j6:Ljava/security/Provider;

    return-void
.end method


# virtual methods
.method public DW(Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 3

    iget-object v0, p0, Labcd/cP;->j6:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public j6(Ljava/lang/String;)Ljava/security/Signature;
    .registers 3

    iget-object v0, p0, Labcd/cP;->j6:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method
