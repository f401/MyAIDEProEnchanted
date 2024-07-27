.class public abstract Labcd/xL;
.super Labcd/EL;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/EL;-><init>()V

    return-void
.end method


# virtual methods
.method public hashCode()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method j6(Labcd/EL;)Z
    .registers 3

    instance-of v0, p1, Labcd/xL;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "NULL"

    return-object v0
.end method
