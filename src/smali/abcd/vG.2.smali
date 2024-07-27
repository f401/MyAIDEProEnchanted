.class public abstract Labcd/vG;
.super Labcd/yG;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/vG$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/yG;-><init>()V

    return-void
.end method

.method public static j6(Labcd/yG;Labcd/yG;)Labcd/yG;
    .registers 3

    sget-object v0, Labcd/yG;->j6:Labcd/yG;

    if-ne p0, v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    if-ne p1, v0, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    new-instance v0, Labcd/vG$a;

    invoke-direct {v0, p0, p1}, Labcd/vG$a;-><init>(Labcd/yG;Labcd/yG;)V

    move-object p1, v0

    goto :goto_0
.end method
