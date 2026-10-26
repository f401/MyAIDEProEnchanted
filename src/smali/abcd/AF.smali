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
    .locals 0

    invoke-direct {p0}, Labcd/BF;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Labcd/UE;)Labcd/CF;
    .locals 1

    new-instance v0, Labcd/AF$a;

    invoke-direct {v0, p1}, Labcd/AF$a;-><init>(Labcd/UE;)V

    return-object v0
.end method

.method public j6()Ljava/lang/String;
    .locals 1

    const-string v0, "simple-two-way-in-core"

    return-object v0
.end method
