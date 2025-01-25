.class public Labcd/wA;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/sA;


# static fields
.field static j6:Labcd/tA;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/vA;

    invoke-direct {v0}, Labcd/vA;-><init>()V

    sput-object v0, Labcd/wA;->j6:Labcd/tA;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Ljava/lang/String;)Labcd/tA;
    .registers 2

    sget-object p1, Labcd/wA;->j6:Labcd/tA;

    return-object p1
.end method
