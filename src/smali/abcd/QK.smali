.class public abstract Labcd/QK;
.super Ljava/lang/Object;


# static fields
.field static final DW:Z

.field private static j6:Labcd/QK;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/PK;

    invoke-direct {v0}, Labcd/PK;-><init>()V

    sput-object v0, Labcd/QK;->j6:Labcd/QK;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FH()Labcd/QK;
    .registers 1

    sget-object v0, Labcd/QK;->j6:Labcd/QK;

    return-object v0
.end method

.method public static j6(Labcd/QK;)V
    .registers 1

    sput-object p0, Labcd/QK;->j6:Labcd/QK;

    return-void
.end method


# virtual methods
.method public abstract DW(Labcd/gE;Labcd/pK;)Labcd/FG;
.end method

.method public abstract DW()Ljava/lang/String;
.end method

.method public abstract DW(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public Hw()Ljava/util/TimeZone;
    .registers 2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public abstract j6(J)I
.end method

.method public abstract j6()J
.end method

.method public abstract j6(Labcd/gE;Labcd/pK;)Labcd/FG;
.end method

.method public abstract j6(Ljava/lang/String;)Ljava/lang/String;
.end method
