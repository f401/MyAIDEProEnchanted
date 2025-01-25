.class public Lorg/spongycastle/jcajce/provider/digest/SHA1$Digest;
.super Lorg/spongycastle/jcajce/provider/digest/a;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/digest/SHA1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Digest"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Labcd/FO;

    invoke-direct {v0}, Labcd/FO;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/digest/a;-><init>(Labcd/sO;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    invoke-super {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/digest/SHA1$Digest;

    new-instance v1, Labcd/FO;

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/digest/a;->j6:Labcd/sO;

    check-cast v2, Labcd/FO;

    invoke-direct {v1, v2}, Labcd/FO;-><init>(Labcd/FO;)V

    iput-object v1, v0, Lorg/spongycastle/jcajce/provider/digest/a;->j6:Labcd/sO;

    return-object v0
.end method
