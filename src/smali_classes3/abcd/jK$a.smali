.class final Labcd/jK$a;
.super Labcd/jK;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/jK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/jK;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Labcd/jK$a;)V
    .registers 2

    invoke-direct {p0}, Labcd/jK$a;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Labcd/jK;
    .registers 1

    return-object p0
.end method

.method public j6()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j6(Labcd/YJ;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "ALL"

    return-object v0
.end method
