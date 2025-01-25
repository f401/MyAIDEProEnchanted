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

    if-ge v0, v1, :cond_a

    sget-object p0, Labcd/QL;->j6:Labcd/UL;

    goto :goto_10

    :cond_a
    new-instance v0, Labcd/UL;

    invoke-direct {v0, p0}, Labcd/UL;-><init>(Labcd/rL;)V

    move-object p0, v0

    :goto_10
    return-object p0
.end method
