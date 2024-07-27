.class public final Labcd/As;
.super Labcd/Ds;


# static fields
.field public static final j6:Labcd/As;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/As;

    invoke-direct {v0}, Labcd/As;-><init>()V

    sput-object v0, Labcd/As;->j6:Labcd/As;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/Ds;-><init>()V

    return-void
.end method


# virtual methods
.method protected DW(Labcd/ms;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public Hw()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public J8()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public Ws()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public Zo()Ljava/lang/String;
    .registers 2

    const-string v0, "known-null"

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .registers 2

    const-string v0, "null"

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Labcd/As;

    return v0
.end method

.method public getType()Labcd/Qs;
    .registers 2

    sget-object v0, Labcd/Qs;->EQ:Labcd/Qs;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    const v0, 0x4466757a

    return v0
.end method

.method public lg()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "known-null"

    return-object v0
.end method
