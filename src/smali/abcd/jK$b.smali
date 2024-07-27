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

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Labcd/YJ;->Zo()I

    move-result v3

    if-ne v3, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, v1}, Labcd/YJ;->FH(I)I

    move-result v4

    move v2, v0

    :goto_1
    if-lt v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2}, Labcd/YJ;->FH(I)I

    move-result v5

    if-ne v5, v4, :cond_0

    invoke-virtual {p1, v2, v1}, Labcd/YJ;->j6(II)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "ANY_DIFF"

    return-object v0
.end method
