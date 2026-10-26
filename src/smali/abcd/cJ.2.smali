.class public abstract Labcd/cJ;
.super Ljava/lang/Object;


# static fields
.field private static j6:Labcd/cJ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Labcd/mI;

    invoke-direct {v0}, Labcd/mI;-><init>()V

    sput-object v0, Labcd/cJ;->j6:Labcd/cJ;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j6()Labcd/cJ;
    .locals 1

    sget-object v0, Labcd/cJ;->j6:Labcd/cJ;

    return-object v0
.end method

.method public static j6(Labcd/cJ;)V
    .locals 0

    if-eqz p0, :cond_0

    :goto_0
    sput-object p0, Labcd/cJ;->j6:Labcd/cJ;

    return-void

    :cond_0
    new-instance p0, Labcd/mI;

    invoke-direct {p0}, Labcd/mI;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public abstract j6(Labcd/HJ;Labcd/kI;Labcd/pK;I)Labcd/ZI;
.end method

.method public j6(Labcd/ZI;)V
    .locals 0

    invoke-interface {p1}, Labcd/ZI;->disconnect()V

    return-void
.end method
