.class Labcd/nH$g;
.super Labcd/KK;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/nH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LKK<",
        "Labcd/ME;",
        ">;"
    }
.end annotation


# static fields
.field static final Hw:Labcd/nH$g;


# instance fields
.field final v5:Labcd/LG;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Labcd/nH$g;

    invoke-static {}, Labcd/KK;->DW()Labcd/KK;

    move-result-object v1

    sget-object v2, Labcd/LG;->DW:Labcd/LG;

    invoke-direct {v0, v1, v2}, Labcd/nH$g;-><init>(Labcd/KK;Labcd/LG;)V

    sput-object v0, Labcd/nH$g;->Hw:Labcd/nH$g;

    return-void
.end method

.method constructor <init>(Labcd/KK;Labcd/LG;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LKK<",
            "Labcd/ME;",
            ">;",
            "Labcd/LG;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Labcd/KK;-><init>(Labcd/KK;)V

    iput-object p2, p0, Labcd/nH$g;->v5:Labcd/LG;

    return-void
.end method
