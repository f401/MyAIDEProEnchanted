.class final Labcd/yG$c;
.super Labcd/yG;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/yG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/yG;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Labcd/yG$c;)V
    .registers 2

    invoke-direct {p0}, Labcd/yG$c;-><init>()V

    return-void
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

.method public j6(Labcd/qG;Labcd/dG;)Z
    .registers 5

    invoke-virtual {p2}, Labcd/dG;->lg()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "NO_MERGES"

    return-object v0
.end method
