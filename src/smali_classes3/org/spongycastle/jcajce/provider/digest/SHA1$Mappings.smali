.class public Lorg/spongycastle/jcajce/provider/digest/SHA1$Mappings;
.super Lorg/spongycastle/jcajce/provider/digest/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/digest/SHA1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# static fields
.field private static final j6:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/spongycastle/jcajce/provider/digest/SHA1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jcajce/provider/digest/SHA1$Mappings;->j6:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/digest/b;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Labcd/gP;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lorg/spongycastle/jcajce/provider/digest/SHA1$Mappings;->j6:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "$Digest"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MessageDigest.SHA-1"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Labcd/gP;->j6(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.MessageDigest.SHA1"

    const-string v2, "SHA-1"

    invoke-interface {p1, v0, v2}, Labcd/gP;->j6(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Alg.Alias.MessageDigest.SHA"

    invoke-interface {p1, v0, v2}, Labcd/gP;->j6(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Alg.Alias.MessageDigest."

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Labcd/jN;->u7:Labcd/zL;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Labcd/gP;->j6(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "$HashMac"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "$KeyGenerator"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHA1"

    invoke-virtual {p0, p1, v2, v0, v1}, Lorg/spongycastle/jcajce/provider/digest/b;->j6(Labcd/gP;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Labcd/lN;->KD:Labcd/zL;

    invoke-virtual {p0, p1, v2, v0}, Lorg/spongycastle/jcajce/provider/digest/b;->j6(Labcd/gP;Ljava/lang/String;Labcd/zL;)V

    sget-object v0, Labcd/bN;->FH:Labcd/zL;

    invoke-virtual {p0, p1, v2, v0}, Lorg/spongycastle/jcajce/provider/digest/b;->j6(Labcd/gP;Ljava/lang/String;Labcd/zL;)V

    return-void
.end method
