.class public Labcd/zF;
.super Labcd/BF;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Labcd/BF;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Labcd/UE;)Labcd/CF;
    .locals 2

    new-instance v0, Labcd/xF;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Labcd/xF;-><init>(Labcd/UE;Z)V

    return-object v0
.end method

.method public j6()Ljava/lang/String;
    .locals 1

    const-string v0, "resolve"

    return-object v0
.end method
