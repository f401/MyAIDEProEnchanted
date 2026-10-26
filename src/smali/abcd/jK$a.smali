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
    .locals 0

    invoke-direct {p0}, Labcd/jK;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Labcd/jK$a;)V
    .locals 0

    invoke-direct {p0}, Labcd/jK$a;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Labcd/jK;
    .locals 0

    return-object p0
.end method

.method public j6()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j6(Labcd/YJ;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ALL"

    return-object v0
.end method
