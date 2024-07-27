.class Labcd/LP;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/AP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/MP;->j6()Labcd/AP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Labcd/MP;


# direct methods
.method constructor <init>(Labcd/MP;)V
    .registers 2

    iput-object p1, p0, Labcd/LP;->j6:Labcd/MP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Labcd/wN;)Labcd/zP;
    .registers 5

    :try_start_0
    iget-object v0, p0, Labcd/LP;->j6:Labcd/MP;

    invoke-static {v0}, Labcd/MP;->j6(Labcd/MP;)Labcd/NP;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/NP;->j6(Labcd/wN;)Ljava/security/MessageDigest;

    move-result-object v0

    new-instance v1, Labcd/MP$a;

    iget-object v2, p0, Labcd/LP;->j6:Labcd/MP;

    invoke-direct {v1, v2, v0}, Labcd/MP$a;-><init>(Labcd/MP;Ljava/security/MessageDigest;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Labcd/KP;

    invoke-direct {v0, p0, p1, v1}, Labcd/KP;-><init>(Labcd/LP;Labcd/wN;Labcd/MP$a;)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception on setup: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Labcd/BP;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Labcd/BP;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
