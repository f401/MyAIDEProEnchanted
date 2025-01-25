.class public abstract Labcd/BF;
.super Labcd/vF;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/vF;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract j6(Labcd/UE;)Labcd/CF;
.end method

.method public bridge synthetic j6(Labcd/UE;)Labcd/wF;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/BF;->j6(Labcd/UE;)Labcd/CF;

    move-result-object p1

    return-object p1
.end method
