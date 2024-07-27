.class public abstract Labcd/cC;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/cC$a;,
        Labcd/cC$b;,
        Labcd/cC$c;,
        Labcd/cC$d;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j6(Labcd/IE;)Labcd/cC;
    .registers 2

    new-instance v0, Labcd/cC$b;

    invoke-direct {v0, p0}, Labcd/cC$b;-><init>(Labcd/IE;)V

    return-object v0
.end method

.method public static j6(Labcd/_J;)Labcd/cC;
    .registers 3

    instance-of v0, p0, Labcd/WJ;

    if-eqz v0, :cond_0

    new-instance v0, Labcd/cC$a;

    check-cast p0, Labcd/WJ;

    invoke-virtual {p0}, Labcd/WJ;->lg()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/cC$a;-><init>(Ljava/io/File;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Labcd/cC$d;

    invoke-direct {v0, p0}, Labcd/cC$d;-><init>(Labcd/_J;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract DW(Ljava/lang/String;Labcd/yE;)J
.end method

.method public abstract j6(Ljava/lang/String;Labcd/yE;)Labcd/FE;
.end method
