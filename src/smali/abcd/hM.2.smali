.class Labcd/hM;
.super Ljava/lang/Object;


# static fields
.field static final DW:Labcd/HL;

.field static final j6:Labcd/FL;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/tM;

    invoke-direct {v0}, Labcd/tM;-><init>()V

    sput-object v0, Labcd/hM;->j6:Labcd/FL;

    new-instance v0, Labcd/vM;

    invoke-direct {v0}, Labcd/vM;-><init>()V

    sput-object v0, Labcd/hM;->DW:Labcd/HL;

    return-void
.end method

.method static DW(Labcd/rL;)Labcd/HL;
    .registers 3

    invoke-virtual {p0}, Labcd/rL;->j6()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object v0, Labcd/hM;->DW:Labcd/HL;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Labcd/FM;

    invoke-direct {v0, p0}, Labcd/FM;-><init>(Labcd/rL;)V

    goto :goto_0
.end method

.method static j6(Labcd/rL;)Labcd/FL;
    .registers 3

    invoke-virtual {p0}, Labcd/rL;->j6()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object v0, Labcd/hM;->j6:Labcd/FL;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Labcd/EM;

    invoke-direct {v0, p0}, Labcd/EM;-><init>(Labcd/rL;)V

    goto :goto_0
.end method
