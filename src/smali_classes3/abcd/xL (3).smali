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
    .registers 2

    instance-of p1, p1, Labcd/xL;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "NULL"

    return-object v0
.end method
