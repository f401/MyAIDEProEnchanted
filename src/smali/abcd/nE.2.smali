.class Labcd/nE;
.super Labcd/rE;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/rE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Labcd/rE;-><init>(IILabcd/rE;)V

    return-void
.end method


# virtual methods
.method public j6(I)Z
    .registers 4

    const v0, 0xf000

    and-int/2addr v0, p1

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    and-int/lit8 v0, p1, 0x49

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
