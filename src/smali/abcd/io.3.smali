.class public final Labcd/io;
.super Labcd/Xt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/io$a;
    }
.end annotation


# static fields
.field public static final FH:Labcd/io;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Labcd/io;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/io;-><init>(I)V

    sput-object v0, Labcd/io;->FH:Labcd/io;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Xt;-><init>(I)V

    return-void
.end method

.method public static j6(Labcd/Wn;I)Labcd/io;
    .registers 15

    const/4 v12, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v4, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-ne p1, v12, :cond_2

    :cond_0
    sget-object v6, Labcd/hs;->j6:Labcd/hs;

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v8

    new-array v9, v8, [Labcd/io$a;

    move-object v0, v6

    move v3, v5

    move v7, v5

    move v2, v5

    :goto_0
    if-ge v7, v8, :cond_5

    invoke-virtual {p0, v7}, Labcd/Wn;->get(I)Labcd/Vn;

    move-result-object v10

    instance-of v1, v10, Labcd/Sn;

    if-eqz v1, :cond_3

    move v3, v4

    :cond_1
    :goto_1
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bogus howMuch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v10}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v1

    invoke-virtual {v1, v6}, Labcd/hs;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v1, v0}, Labcd/hs;->j6(Labcd/hs;)Z

    move-result v11

    if-nez v11, :cond_1

    if-ne p1, v12, :cond_4

    if-eqz v3, :cond_1

    :cond_4
    new-instance v0, Labcd/io$a;

    invoke-virtual {v10}, Labcd/Vn;->FH()I

    move-result v3

    invoke-direct {v0, v3, v1}, Labcd/io$a;-><init>(ILabcd/hs;)V

    aput-object v0, v9, v2

    add-int/lit8 v2, v2, 0x1

    move-object v0, v1

    move v3, v5

    goto :goto_1

    :cond_5
    new-instance v0, Labcd/io;

    invoke-direct {v0, v2}, Labcd/io;-><init>(I)V

    :goto_2
    if-ge v5, v2, :cond_6

    aget-object v1, v9, v5

    invoke-virtual {v0, v5, v1}, Labcd/io;->j6(ILabcd/io$a;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Labcd/hu;->we()V

    :goto_3
    return-object v0

    :cond_7
    sget-object v0, Labcd/io;->FH:Labcd/io;

    goto :goto_3
.end method


# virtual methods
.method public get(I)Labcd/io$a;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/io$a;

    return-object v0
.end method

.method public j6(ILabcd/io$a;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void
.end method
