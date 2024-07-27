.class Labcd/QL;
.super Ljava/lang/Object;


# static fields
.field static final DW:Labcd/WL;

.field static final j6:Labcd/UL;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/UL;

    invoke-direct {v0}, Labcd/UL;-><init>()V

    sput-object v0, Labcd/QL;->j6:Labcd/UL;

    new-instance v0, Labcd/WL;

    invoke-direct {v0}, Labcd/WL;-><init>()V

    sput-object v0, Labcd/QL;->DW:Labcd/WL;

    return-void
.end method

.method static j6(Labcd/rL;)Labcd/UL;
    .registers 3

    invoke-virtual {p0}, Labcd/rL;->j6()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object v0, Labcd/QL;->j6:Labcd/UL;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Labcd/UL;

    invoke-direct {v0, p0}, Labcd/UL;-><init>(Labcd/rL;)V

    goto :goto_0
.end method
