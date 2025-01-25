.class final Labcd/RD;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/QD;


# static fields
.field static final j6:Labcd/QD;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/RD;

    invoke-direct {v0}, Labcd/RD;-><init>()V

    sput-object v0, Labcd/RD;->j6:Labcd/QD;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(C)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Ljava/util/List<",
            "Labcd/QD;",
            ">;"
        }
    .end annotation

    sget-object p1, Labcd/OD;->j6:Ljava/util/List;

    return-object p1
.end method
