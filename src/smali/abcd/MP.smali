.class public Labcd/MP;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/MP$a;
    }
.end annotation


# instance fields
.field private j6:Labcd/NP;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/NP;

    new-instance v1, Labcd/_O;

    invoke-direct {v1}, Labcd/_O;-><init>()V

    invoke-direct {v0, v1}, Labcd/NP;-><init>(Labcd/aP;)V

    iput-object v0, p0, Labcd/MP;->j6:Labcd/NP;

    return-void
.end method

.method static synthetic j6(Labcd/MP;)Labcd/NP;
    .registers 2

    iget-object v0, p0, Labcd/MP;->j6:Labcd/NP;

    return-object v0
.end method


# virtual methods
.method public j6()Labcd/AP;
    .registers 2

    new-instance v0, Labcd/LP;

    invoke-direct {v0, p0}, Labcd/LP;-><init>(Labcd/MP;)V

    return-object v0
.end method

.method public j6(Ljava/lang/String;)Labcd/MP;
    .registers 4

    new-instance v0, Labcd/NP;

    new-instance v1, Labcd/bP;

    invoke-direct {v1, p1}, Labcd/bP;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Labcd/NP;-><init>(Labcd/aP;)V

    iput-object v0, p0, Labcd/MP;->j6:Labcd/NP;

    return-object p0
.end method
