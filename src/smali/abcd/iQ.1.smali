.class public Labcd/iQ;
.super Ljava/lang/Object;


# static fields
.field private static j6:Labcd/iQ;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/iQ;

    invoke-direct {v0}, Labcd/iQ;-><init>()V

    sput-object v0, Labcd/iQ;->j6:Labcd/iQ;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j6()Labcd/iQ;
    .registers 1

    sget-object v0, Labcd/iQ;->j6:Labcd/iQ;

    return-object v0
.end method
