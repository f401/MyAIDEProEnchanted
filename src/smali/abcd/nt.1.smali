.class public Labcd/nt;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/nt$a;
    }
.end annotation


# static fields
.field private static DW:Labcd/ls; = null

.field private static j6:Z = true


# direct methods
.method public static DW()Z
    .registers 1

    sget-boolean v0, Labcd/nt;->j6:Z

    return v0
.end method

.method private static j6(Labcd/fs;IZLjava/util/EnumSet;)Labcd/fs;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/fs;",
            "IZ",
            "Ljava/util/EnumSet",
            "<",
            "Labcd/nt$a;",
            ">;)",
            "Labcd/fs;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Labcd/ut;->j6(Labcd/fs;IZ)Labcd/yt;

    move-result-object v0

    invoke-virtual {p3}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v1

    sget-object v2, Labcd/nt$a;->Hw:Labcd/nt$a;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    invoke-static {v0, v1}, Labcd/nt;->j6(Labcd/yt;Ljava/util/EnumSet;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Labcd/Kt;->j6(Labcd/yt;Z)Labcd/fs;

    move-result-object v0

    return-object v0
.end method

.method public static j6(Labcd/fs;IZZLabcd/ls;)Labcd/fs;
    .registers 11

    const-class v0, Labcd/nt$a;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Labcd/nt;->j6(Labcd/fs;IZZLabcd/ls;Ljava/util/EnumSet;)Labcd/fs;

    move-result-object v0

    return-object v0
.end method

.method public static j6(Labcd/fs;IZZLabcd/ls;Ljava/util/EnumSet;)Labcd/fs;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/fs;",
            "IZZ",
            "Labcd/ls;",
            "Ljava/util/EnumSet",
            "<",
            "Labcd/nt$a;",
            ">;)",
            "Labcd/fs;"
        }
    .end annotation

    sput-boolean p3, Labcd/nt;->j6:Z

    sput-object p4, Labcd/nt;->DW:Labcd/ls;

    invoke-static {p0, p1, p2}, Labcd/ut;->j6(Labcd/fs;IZ)Labcd/yt;

    move-result-object v0

    invoke-static {v0, p5}, Labcd/nt;->j6(Labcd/yt;Ljava/util/EnumSet;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/Kt;->j6(Labcd/yt;Z)Labcd/fs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/fs;->j6()Labcd/Or;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Or;->BT()I

    move-result v1

    sget-object v2, Labcd/nt;->DW:Labcd/ls;

    invoke-interface {v2}, Labcd/ls;->j6()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-static {p0, p1, p2, p5}, Labcd/nt;->j6(Labcd/fs;IZLjava/util/EnumSet;)Labcd/fs;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static j6()Labcd/ls;
    .registers 1

    sget-object v0, Labcd/nt;->DW:Labcd/ls;

    return-object v0
.end method

.method private static j6(Labcd/yt;Ljava/util/EnumSet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/yt;",
            "Ljava/util/EnumSet",
            "<",
            "Labcd/nt$a;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Labcd/nt$a;->j6:Labcd/nt$a;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Labcd/lt;->j6(Labcd/yt;)V

    :cond_0
    sget-object v0, Labcd/nt$a;->DW:Labcd/nt$a;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Labcd/rt;->j6(Labcd/yt;)V

    invoke-static {p0}, Labcd/Xs;->j6(Labcd/yt;)V

    move v0, v1

    :goto_0
    sget-object v2, Labcd/nt$a;->FH:Labcd/nt$a;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Labcd/gt;->j6(Labcd/yt;)V

    invoke-static {p0}, Labcd/Xs;->j6(Labcd/yt;)V

    move v0, v1

    :cond_1
    sget-object v2, Labcd/nt$a;->v5:Labcd/nt$a;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    sget-object v2, Labcd/nt$a;->v5:Labcd/nt$a;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Labcd/dt;->j6(Labcd/yt;)V

    invoke-static {p0}, Labcd/Xs;->j6(Labcd/yt;)V

    move v0, v1

    :cond_2
    sget-object v2, Labcd/nt$a;->Hw:Labcd/nt$a;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0}, Labcd/Ws;->j6(Labcd/yt;)V

    invoke-static {p0}, Labcd/Xs;->j6(Labcd/yt;)V

    :goto_1
    if-eqz v1, :cond_3

    invoke-static {p0}, Labcd/Xs;->j6(Labcd/yt;)V

    :cond_3
    invoke-static {p0}, Labcd/pt;->j6(Labcd/yt;)V

    return-void

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v1, v0

    goto :goto_1
.end method
