.class public Labcd/Yv;
.super Ljava/lang/Object;


# static fields
.field private static j6:Labcd/Zv;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/fw;

    invoke-direct {v0}, Labcd/fw;-><init>()V

    sput-object v0, Labcd/Yv;->j6:Labcd/Zv;

    return-void
.end method

.method public static j6(Labcd/_v;)V
    .registers 2

    sget-object v0, Labcd/Yv;->j6:Labcd/Zv;

    invoke-interface {v0, p0}, Labcd/Zv;->j6(Labcd/_v;)V

    return-void
.end method

.method public static j6(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Labcd/Yv;->j6:Labcd/Zv;

    invoke-interface {v0, p0}, Labcd/Zv;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public static j6(J)Z
    .registers 4

    sget-object v0, Labcd/Yv;->j6:Labcd/Zv;

    invoke-interface {v0, p0, p1}, Labcd/Zv;->j6(J)Z

    move-result v0

    return v0
.end method
