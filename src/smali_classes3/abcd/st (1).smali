.class public final Labcd/st;
.super Ljava/lang/Object;


# direct methods
.method public static DW(I)Labcd/bu;
    .registers 2

    const/16 v0, 0xc00

    if-gt p0, v0, :cond_a

    new-instance v0, Labcd/Nt;

    invoke-direct {v0, p0}, Labcd/Nt;-><init>(I)V

    goto :goto_f

    :cond_a
    new-instance v0, Labcd/gu;

    invoke-direct {v0}, Labcd/gu;-><init>()V

    :goto_f
    return-object v0
.end method

.method static FH(I)Labcd/bu;
    .registers 2

    const/16 v0, 0xc00

    if-gt p0, v0, :cond_a

    new-instance v0, Labcd/Nt;

    invoke-direct {v0, p0}, Labcd/Nt;-><init>(I)V

    goto :goto_f

    :cond_a
    new-instance v0, Labcd/gu;

    invoke-direct {v0}, Labcd/gu;-><init>()V

    :goto_f
    return-object v0
.end method

.method static j6(I)Labcd/bu;
    .registers 2

    const/16 v0, 0xc00

    if-gt p0, v0, :cond_a

    new-instance v0, Labcd/Nt;

    invoke-direct {v0, p0}, Labcd/Nt;-><init>(I)V

    goto :goto_f

    :cond_a
    new-instance v0, Labcd/gu;

    invoke-direct {v0}, Labcd/gu;-><init>()V

    :goto_f
    return-object v0
.end method
