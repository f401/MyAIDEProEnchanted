.class Labcd/pE;
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
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
