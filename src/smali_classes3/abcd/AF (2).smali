.class public Labcd/AF;
.super Labcd/BF;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/AF$a;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/BF;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Labcd/UE;)Labcd/CF;
    .registers 3

    new-instance v0, Labcd/AF$a;

    invoke-direct {v0, p1}, Labcd/AF$a;-><init>(Labcd/UE;)V

    return-object v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    const-string v0, "simple-two-way-in-core"

    return-object v0
.end method
