.class public abstract Labcd/wG;
.super Labcd/yG;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/wG$a;
    }
.end annotation


# instance fields
.field final v5:I


# direct methods
.method constructor <init>(J)V
    .registers 6

    invoke-direct {p0}, Labcd/yG;-><init>()V

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Labcd/wG;->v5:I

    return-void
.end method

.method public static final j6(J)Labcd/yG;
    .registers 4

    new-instance v0, Labcd/wG$a;

    invoke-direct {v0, p0, p1}, Labcd/wG$a;-><init>(J)V

    return-object v0
.end method

.method public static final j6(Ljava/util/Date;)Labcd/yG;
    .registers 3

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Labcd/wG;->j6(J)Labcd/yG;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Labcd/yG;
    .registers 1

    return-object p0
.end method

.method public j6()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
