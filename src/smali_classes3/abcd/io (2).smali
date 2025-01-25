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

    const/4 v0, 0x1

    if-eq p1, v0, :cond_66

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eq p1, v1, :cond_12

    if-ne p1, v2, :cond_a

    goto :goto_12

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus howMuch"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    :goto_12
    sget-object v1, Labcd/hs;->j6:Labcd/hs;

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v3

    new-array v4, v3, [Labcd/io$a;

    const/4 v5, 0x0

    move-object v8, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_1f
    if-ge v6, v3, :cond_53

    invoke-virtual {p0, v6}, Labcd/Wn;->get(I)Labcd/Vn;

    move-result-object v10

    instance-of v11, v10, Labcd/Sn;

    if-eqz v11, :cond_2b

    const/4 v9, 0x1

    goto :goto_50

    :cond_2b
    invoke-virtual {v10}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v11

    invoke-virtual {v11, v1}, Labcd/hs;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_50

    invoke-virtual {v11, v8}, Labcd/hs;->j6(Labcd/hs;)Z

    move-result v12

    if-eqz v12, :cond_3c

    goto :goto_50

    :cond_3c
    if-ne p1, v2, :cond_41

    if-nez v9, :cond_41

    goto :goto_50

    :cond_41
    new-instance v8, Labcd/io$a;

    invoke-virtual {v10}, Labcd/Vn;->FH()I

    move-result v9

    invoke-direct {v8, v9, v11}, Labcd/io$a;-><init>(ILabcd/hs;)V

    aput-object v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    move-object v8, v11

    const/4 v9, 0x0

    :cond_50
    :goto_50
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    :cond_53
    new-instance p0, Labcd/io;

    invoke-direct {p0, v7}, Labcd/io;-><init>(I)V

    :goto_58
    if-ge v5, v7, :cond_62

    aget-object p1, v4, v5

    invoke-virtual {p0, v5, p1}, Labcd/io;->j6(ILabcd/io$a;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    :cond_62
    invoke-virtual {p0}, Labcd/hu;->we()V

    return-object p0

    :cond_66
    sget-object p0, Labcd/io;->FH:Labcd/io;

    return-object p0
.end method


# virtual methods
.method public get(I)Labcd/io$a;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/io$a;

    return-object p1
.end method

.method public j6(ILabcd/io$a;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void
.end method
