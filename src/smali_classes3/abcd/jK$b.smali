.class final Labcd/jK$b;
.super Labcd/jK;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/jK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/jK;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Labcd/jK$b;)V
    .registers 2

    invoke-direct {p0}, Labcd/jK$b;-><init>()V

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
    .registers 8

    invoke-virtual {p1}, Labcd/YJ;->Zo()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Labcd/YJ;->FH(I)I

    move-result v3

    const/4 v4, 0x1

    :goto_e
    if-lt v4, v0, :cond_11

    return v2

    :cond_11
    invoke-virtual {p1, v4}, Labcd/YJ;->FH(I)I

    move-result v5

    if-ne v5, v3, :cond_21

    invoke-virtual {p1, v4, v2}, Labcd/YJ;->j6(II)Z

    move-result v5

    if-nez v5, :cond_1e

    goto :goto_21

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_21
    :goto_21
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "ANY_DIFF"

    return-object v0
.end method
